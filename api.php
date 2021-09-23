<?php

use Firebase\JWT\JWT;

class Api extends Rest
{
    public $dbConn;
    public function __construct()
    {
        parent::__construct();
        $db = new DbConnect;
        $this->dbConn = $db->connect();
    }


    public function generateToken()
    {
        $email = $this->validateParameter('email', $this->param['email'], STRING);
        $password = $this->validateParameter('password', $this->param['password'], STRING);

        try {
            $stmt = $this->dbConn->prepare("SELECT * FROM tbl_user WHERE email = :email AND password = :password ");
            $stmt->bindParam(":email", $email);
            $stmt->bindParam(":password", $password);
            $stmt->execute();
            $user = $stmt->fetch(PDO::FETCH_ASSOC);
            if (!is_array($user)) {
                http_response_code(401);
                $this->returnResponse(INVALID_USER_PASS, "Name company not found.");
            }

            if ($user['active'] == 0) {
                http_response_code(401);
                $this->returnResponse(USER_NOT_ACTIVE, "User is not actived. Please contact to admin");
            }

            $payload = [
                'iat' => time(),
                'iss' => 'localhost',
                // 'exp' => time() + (60),
                'userId' => $user['id']
            ];
            $token = JWT::encode($payload, SECRETE_KEY);

            $data = ['token' => $token];
            http_response_code(200);
            $this->returnResponse(SUCCESS_RESPONSE, $data);
        } catch (Exception $e) {
            http_response_code(400);
            $this->throwError(JWT_PROCESSING_ERROR, $e->getMessage());
        }
    }

    public function addNews()
    {
        $link_foto = $this->validateParameter('link_foto', $this->param['link_foto'], STRING);
        $link_berita = $this->validateParameter('link_berita', $this->param['link_berita'], STRING);
        $judul = $this->validateParameter('judul', $this->param['judul'], STRING);
        $kategori = $this->validateParameter('kategori', $this->param['kategori'], STRING);
        $paragraf_pertama = $this->validateParameter('paragraf_pertama', $this->param['paragraf_pertama'], STRING);
        $tanggal_publish = $this->param['tanggal_publish'];

        try {
            $token = $this->getBearerToken();
            $payload = JWT::decode($token, SECRETE_KEY, ['HS256']);

            $stmt = $this->dbConn->prepare("SELECT * FROM tbl_user WHERE id = :userId");
            $stmt->bindParam(":userId", $payload->userId);
            $stmt->execute();

            $user = $stmt->fetch(PDO::FETCH_ASSOC);
            if (!is_array($user)) {
                http_response_code(401);
                $this->returnResponse(INVALID_USER_PASS, "This user is not found in our database");
            }

            if ($user['active'] == 0) {
                http_response_code(401);
                $this->returnResponse(USER_NOT_ACTIVE, "This user may be decactived. Please contact to admin");
            }

            $berita = new Berita();
            $berita->setLinkFoto($link_foto);
            $berita->setLinkBerita($link_berita);
            $berita->setJudul($judul);
            $berita->setKategori($kategori);
            $berita->setParagrafPertama($paragraf_pertama);
            $berita->setTanggalPublish($tanggal_publish);
            $berita->setCreatedBy($payload->userId);
            if (!$berita->insert()) {
                http_response_code(412);
                $message = "Failed to post.";
                $status = "412";
                $stmt = $this->dbConn->prepare("INSERT INTO tbl_log (id, response, status_code, user_id) VALUES(null, :response, :status_code,  :user_id) ");
                $stmt->bindParam(":response", $message);
                $stmt->bindParam(":status_code", $status);
                $stmt->bindParam(":user_id", $payload->userId);
                $stmt->execute();
            } else {
                http_response_code(201);
                $message = "Post successfully.";
                $status = "201";
                $stmt = $this->dbConn->prepare("INSERT INTO tbl_log (id, response, status_code, user_id) VALUES(null, :response, :status_code,  :user_id) ");
                $stmt->bindParam(":response", $message);
                $stmt->bindParam(":status_code", $status);
                $stmt->bindParam(":user_id", $payload->userId);
                $stmt->execute();
            }
            $this->returnResponse(SUCCESS_RESPONSE, $message);
        } catch (Exception $e) {
            http_response_code(400);
            $this->throwError(ACCESS_TOKEN_ERRORS, $e->getMessage());
            $status = "400";
            $stmt = $this->dbConn->prepare("INSERT INTO tbl_log (id, response, status_code, user_id) VALUES(null, :response, :status_code, :user_id) ");
            $stmt->bindParam(":response", $e->getMessage());
            $stmt->bindParam(":status_code", $status);
            $stmt->bindParam(":user_id", $payload->userId);
            $stmt->execute();
        }
    }
}
