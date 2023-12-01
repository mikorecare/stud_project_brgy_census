<?php
class Login
{

    private $conn;

    public function __construct($conn)
    {
        $this->conn = $conn;
    }

    public function countUsers()
    {
        try {
            $stmt = $this->conn->prepare("SELECT COUNT(*) AS `count` FROM tbl_user WHERE userType=1");
            $stmt->execute();

            echo $stmt->fetch(PDO::FETCH_ASSOC)['count'];
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function signup($data)
    {
        $newPass = md5($data['password']);

        try {
            $stmt = $this->conn->prepare("INSERT INTO tbl_user (username, f_name, l_name, email, phone, password, userType, avatar) VALUES (:username,:f_name, :l_name, :email, :phone, :password, :userType, :avatar)");
            $stmt->execute([
                'username' => $data['username'],
                'f_name'   => $data['fname'],
                'l_name'   => $data['lname'],
                'email'    => $data['email'],
                'phone'    => $data['number'],
                'password' => $newPass,
                'avatar'   => 'avatar.png',
                'userType' => 1
            ]);

            return array(
                'message' => 'Successully Sign Up.',
                'status'  => 'success'
            );
        } catch (Exception $e) {

            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
    }

    public function showUser($id)
    {
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_user WHERE user_id=$id LIMIT 01");
            $stmt->execute();

            if ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                return $row;
            }
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function getUser()
    {
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_user WHERE userType=1");
            $stmt->execute();
            $arr = array();

            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $arr[] = $row;
            }

            return $arr;
        } catch (Exception $e) {
            return array(
                'message' => $e->getMessage(),
                'status' => 'error'
            );
        }
    }

    public function loginForm($data)
    {
        $newPass = md5($data['password']);

        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_user WHERE username=:username AND password=:password LIMIT 01");
            $stmt->execute([
                'username' => $data['username'],
                'password' => $newPass
            ]);

            $result = $stmt->fetch(PDO::FETCH_ASSOC);

            if(isset($result['u_status']) && isset($result['userType']) && $result['u_status']==0 && $result['userType']==1) {
                return array(
                    'message' => 'Your account is wating for approval.',
                    'status'  => 'warning'
                );
                die();
            }

            if(isset($result['u_status']) && $result['u_status']==2) {
                return array(
                    'message' => 'Your account is cancelled please contact the admin.',
                    'status'  => 'warning'
                );
                die();
            }

            if (!$result) {
                return array(
                    'message' => 'Invalid Username & Password',
                    'status'  => 'warning'
                );
                die();
            }

            return array(
                'message' => $result,
                'status'  => 'success'
            );
        } catch (Exception $e) {

            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
    }

    public function showProfile($id)
    {
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_user WHERE user_id=:user_id LIMIT 01");
            $stmt->execute([
                'user_id' => $id
            ]);

            return $stmt->fetch(PDO::FETCH_ASSOC);
        } catch (Exception $e) {
            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
    }

    public function changePassAction($data, $file)
    {
        $this->updateUser($data, $file);

        return array(
            'message' => 'Succcess updated account.',
            'status'  => 'success'
        );
    }

    public function manageUser($data, $file)
    {
        if (empty($data['id'])) {
            $this->createUser($data, $file);

            return array(
                'message' => 'Success save user.',
                'status'  => 'success'
            );
        } else {
            $this->updateUser($data, $file);

            return array(
                'message' => 'Success updated user.',
                'status'  => 'success'
            );
        }
    }

    public function createUser($data, $file)
    {
        $newPass = md5($data['newPassword']);

        try {
            $stmt = $this->conn->prepare("INSERT INTO tbl_user (username, f_name, l_name, email, phone, password, avatar, userType) VALUES (:username, :f_name, :l_name, :email, :phone, :password, :avatar, :userType)");
            return $stmt->execute([
                'username' => $data['username'],
                'f_name'   => $data['fName'],
                'l_name'   => $data['lName'],
                'email'    => $data['email'],
                'phone'    => $data['phone'],
                'password' => $newPass,
                'avatar'   => $file,
                'userType' => 1
            ]);
        } catch (Exception $e) {

            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
    }

    public function updateUser($data, $file)
    {
        $newPass = md5($data['newPassword']);

        try {
            if (empty($file)) {
                $stmt = $this->conn->prepare("UPDATE tbl_user SET username=:username, f_name=:f_name, l_name=:l_name, email=:email, phone=:phone, password=:password WHERE user_id=:user_id");
                return $stmt->execute([
                    'username' => $data['username'],
                    'f_name'   => $data['fName'],
                    'l_name'   => $data['lName'],
                    'email'    => $data['email'],
                    'phone'    => $data['phone'],
                    'password' => $newPass,
                    'user_id'  => $data['id']
                ]);
            } else {
                $stmt = $this->conn->prepare("UPDATE tbl_user SET username=:username, f_name=:f_name, l_name=:l_name, email=:email, phone=:phone, password=:password, avatar=:avatar WHERE user_id=:user_id");
                $stmt->execute([
                    'username' => $data['username'],
                    'f_name'   => $data['fName'],
                    'l_name'   => $data['lName'],
                    'email'    => $data['email'],
                    'phone'    => $data['phone'],
                    'password' => $newPass,
                    'user_id'  => $data['id'],
                    'avatar'   => $file
                ]);
            }
        } catch (Exception $e) {

            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
    }

    public function destroyUser($id)
    {
        try {
            $stmt = $this->conn->prepare("DELETE FROM tbl_user WHERE user_id=:user_id");
            $stmt->execute([
                'user_id' => $id
            ]);

            return array(
                'message' => 'Success remove data.',
                'status' => 'success'
            );
        } catch (Exception $e) {

            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
        
    }


    public function onApprovalUser($id, $status)
    {
        try {
            $stmt = $this->conn->prepare("UPDATE tbl_user SET u_status=:u_status WHERE user_id=:user_id");
            $stmt->execute([
                'user_id' => $id,
                'u_status'=> $status
            ]);

            return array(
                'message' => 'Success save user status.',
                'status' => 'success'
            );
        } catch (Exception $e) {

            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
        
    }
}
