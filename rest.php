<?php

use Firebase\JWT\JWT;

require_once('constants.php');
require_once('jwt.php');

class Rest
{

    protected $request;
    protected $serviceName;
    protected $param;
    protected $dbConn;
    protected $userId;


    public function __construct()
    {
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            http_response_code(404);
            $this->throwError(REQUEST_METHOD_NOT_VALID, 'Request Method is not valid.');
        }
        $handler = fopen('php://input', 'r');
        $this->request = stream_get_contents($handler);
        $this->validateRequest();

        $db = new DbConnect;
        $this->dbConn = $db->connect();

        if ('generatetoken' != strtolower($this->serviceName)) {
            $this->validateToken();
        }
    }

    public function validateRequest()
    {
        $data = json_decode($this->request, true);

        if (!isset($data['name']) || $data['name'] == "") {
            http_response_code(412);
            $this->throwError(API_NAME_REQUIRED, 'Api name is required.');
        }
        $this->serviceName = $data['name'];

        if (!is_array($data['param']) || $data['param'] == "") {
            http_response_code(412);
            $this->throwError(API_PARAM_REQUIRED, 'Api param is required.');
        }
        $this->param = $data['param'];
    }

    public function processAPI()
    {
        $api = new API;
        $requestMethod = new reflectionMethod('API', $this->serviceName);
        if (!method_exists($api, $this->serviceName)) {
            http_response_code(400);
            $this->throwError(API_DOEST_NOT_EXIT, 'API does not exist.');
        }
        $requestMethod->invoke($api);
    }

    public function validateParameter($fieldName, $value, $dataType, $required = true)
    {
        if ($required == true && empty($value) == true) {
            http_response_code(412);
            $this->throwError(VALIDATE_PARAMETER_REQUIRED, $fieldName . ' parameter is required.');
        }

        switch ($dataType) {
            case BOOLEAN:
                if (!is_bool($value)) {
                    http_response_code(412);
                    $this->throwError(VALIDATE_PARAMETER_DATATYPE, 'Datatype is not valid for' . $fieldName . '. It should be boolean.');
                }
                break;

            case INTEGER:
                if (!is_numeric($value)) {
                    http_response_code(412);
                    $this->throwError(VALIDATE_PARAMETER_DATATYPE, 'Datatype is not valid for' . $fieldName . '. It should be numeric.');
                }
                break;

            case STRING:
                if (!is_string($value)) {
                    http_response_code(412);
                    $this->throwError(VALIDATE_PARAMETER_DATATYPE, 'Datatype is not valid for' . $fieldName . '. It should be string.');
                }
                break;

            default:
                if (!is_string($value)) {
                    http_response_code(412);
                    $this->throwError(VALIDATE_PARAMETER_DATATYPE, 'Datatype is not valid for' . $fieldName . '. It should be string.');
                }
                break;
        }
        return $value;
    }

    public function throwError($code, $message)
    {
        header("Content-type: application/json");
        $errorMsg = json_encode(['error' => ['message' => $message, 'status' => $code]]);
        echo $errorMsg;
        $token = $this->getBearerToken();
        $payload = JWT::decode($token, SECRETE_KEY, ['HS256']);

        $stmt = $this->dbConn->prepare("SELECT * FROM tbl_user WHERE id = :userId");
        $stmt->bindParam(":userId", $payload->userId);
        $stmt->execute();

        $stmt1 = $this->dbConn->prepare("INSERT INTO tbl_log (id, response, status_code, user_id) VALUES(null, :response, :status_code, :user_id) ");
        $stmt1->bindParam(":response", $errorMsg);
        $stmt1->bindParam(":status_code", $code);
        $stmt1->bindParam(":user_id", $payload->userId);
        $stmt1->execute();

        exit;
    }

    public function returnResponse($code, $data)
    {
        header("Content-type: application/json");
        $response = json_encode(['response' => ["result" =>  $data]]);
        echo $response;

        // $token = $this->getBearerToken();
        // $payload = JWT::decode($token, SECRETE_KEY, ['HS256']);

        // $stmt = $this->dbConn->prepare("SELECT * FROM tbl_user WHERE id = :userId");
        // $stmt->bindParam(":userId", $payload->userId);
        // $stmt->execute();

        // $status = "200";
        // $stmt1 = $this->dbConn->prepare("INSERT INTO tbl_log (id, response, status_code, user_id) VALUES(null, :response, :status_code, :user_id) ");
        // $stmt1->bindParam(":response", $response);
        // $stmt1->bindParam(":status_code", $status);
        // $stmt1->bindParam(":user_id", $payload->userId);
        // $stmt1->execute();
        exit;
    }

    public function getAuthorizationHeader()
    {
        $header = null;
        if (isset($_SERVER['Authorization'])) {
            $header = trim($_SERVER["Authorization"]);
        } else if (isset($_SERVER['HTTP_AUTHORIZATION'])) {
            $header = trim($_SERVER["HTTP_AUTHORIZATION"]);
        } else if (function_exists('apache_request_headers')) {
            $requestHeaders = apache_request_headers();
            $requestHeaders = array_combine(array_map('ucwords', array_keys($requestHeaders)), array_values($requestHeaders));
            if (isset($requestHeaders['Authorization'])) {
                $header = trim($requestHeaders['Authorization']);
            }
        }
        return $header;
    }

    public function getBearerToken()
    {
        $header = $this->getAuthorizationHeader();
        // Get the access token from header
        if (!empty($header)) {
            if (preg_match('/Bearer\s(\S+)/', $header, $matches)) {
                return $matches[1];
            }
        }
        http_response_code(401);
        $this->throwError(AUTHORIZATION_HEADER_NOT_FOUND, 'Access Token Not Found.');
    }

    public function validateToken()
    {
        try {
            $token = $this->getBearerToken();
            $payload = JWT::decode($token, SECRETE_KEY, ['HS256']);

            $stmt = $this->dbConn->prepare("SELECT * FROM tbl_user WHERE id= :userId");
            $stmt->bindParam(":userId", $payload->userId);
            $stmt->execute();
            $user = $stmt->fetch(PDO::FETCH_ASSOC);
            if (!is_array($user)) {
                http_response_code(401);
                $this->returnResponse(INVALID_USER_PASS, "This user is not found in our database");
            }

            if ($user['active'] == 0) {
                http_response_code(401);
                $this->returnResponse(USER_NOT_ACTIVE, "User is not actived. Please contact to admin");
            }
            $this->userId = $payload->userId;
        } catch (Exception $e) {
            http_response_code(400);
            $this->throwError(JWT_PROCESSING_ERROR, $e->getMessage());
        }
    }
}
