<?php

// Security
define('SECRETE_KEY', 'test123');

// Data type
define('BOOLEAN', '1');
define('INTEGER', '2');
define('STRING', '3');

// Error Codes
define('REQUEST_METHOD_NOT_VALID',                         404);
define('REQUEST_CONTENTTYPE_NOT_VALID',                    101);
define('REQUEST_NOT_VALID',                                102);
define('VALIDATE_PARAMETER_REQUIRED',                      412);
define('VALIDATE_PARAMETER_DATATYPE',                      412);
define('API_NAME_REQUIRED',                                412);
define('API_PARAM_REQUIRED',                               412);
define('API_DOEST_NOT_EXIT',                               400);
define('INVALID_USER_PASS',                                401);
define('USER_NOT_ACTIVE',                                  401);

define('SUCCESS_RESPONSE',                                 200);

// Server Errors
define('JWT_PROCESSING_ERROR',                             400);
define('AUTHORIZATION_HEADER_NOT_FOUND',                   401);
define('ACCESS_TOKEN_ERRORS',                              400);
