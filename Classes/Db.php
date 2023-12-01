<?php

namespace Classes;

use PDO;
use PDOException;

class Db
{

    public function connect($obj)
    {
        try {$obj->port = 8111; // Ensure this line is set correctly in your code
            $pdo = new PDO("mysql:host=$obj->servername;port=$obj->port;dbname=$obj->dbname", $obj->username, $obj->password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            // Log or print the error information for debugging
            echo "Connection failed: " . $e->getMessage();
            echo "Error code: " . $e->getCode();
            die(); // Terminate script execution on connection failure
        }
        return $pdo;
    }
}


