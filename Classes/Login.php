<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use Dotenv\Dotenv;
$mail = new PHPMailer;
$dotenv = Dotenv::createImmutable(__DIR__ . '/..');
$dotenv->load();



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

    public function checkUsernameExists($username){
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_user WHERE username = :username LIMIT 1");
            $stmt->bindParam(':username', $username, PDO::PARAM_STR);
            $stmt->execute();
    
            if ($stmt->fetch(PDO::FETCH_ASSOC)) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function signup($data,$image)
    {
        
        $newPass = md5($data['password']);
        $data['fname'] = strtoupper($data['fname']);
        $data['lname'] = strtoupper($data['lname']);
        $data['email'] = strtoupper($data['email']);
        $data['mname'] = strtoupper($data['mname']);
        $fileUpload = '';
        if ($image['file']['size'] > 0) {
            

            // $fileUpload = upload($data['file'], './uploads/');
            $fileUpload = upload($image['file'], false);
            if ($fileUpload['status'] == 'success') {

                try {
                    $stmt = $this->conn->prepare("INSERT INTO tbl_user (username, f_name,m_name, l_name, email, phone, password, userType, avatar,id_url) VALUES (:username,:f_name, :m_name, :l_name, :email, :phone, :password, :userType, :avatar, :id_url)");
                    $stmt->execute([
                        'username' => $data['username'],
                        'f_name'   => $data['fname'],
                        'm_name'   => $data['mname'],
                        'l_name'   => $data['lname'],
                        'email'    => $data['email'],
                        'phone'    => $data['number'],
                        'password' => $newPass,
                        'avatar'   => 'avatar.png',
                        'userType' => 1,
                        'id_url' => $fileUpload['avatar']
                    ]);

                    $id = $this->conn->lastInsertId();
                    $form_info = array(
                        'name' => array(
                            0 => $data['lname'],
                            1 => $data['fname'],
                            2 => $data['mname']
                        ),
                        'present_address' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => '',
                            5 => ''
                        ),
                        'provincial_address' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => ''
                        ),
                        'civil_status' => '',
                        'sex' => '',
                        'date_of_birth' => '',
                        'place_of_birth' => '',
                        'height' => '',
                        'weight' => '',
                        'contactno' => $data['number'],
                        'religion' => '',
                        'email' => $data['email'],
                        'school' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => ''
                        ),
                        'school_address' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => ''
                        ),
                        'duration' => array(
                            0 => '',
                            1 => '',
                            2 => ''
                        ),
                        'name_of_emp' => array(
                            0 => '',
                            1 => '',
                            2 => ''
                        ),
                        'house_occu' => array(
                            0 => '',
                            1 => '',
                            2 => ''
                        ),
                        'ho_name' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => ''
                        ),
                        'ho_fam_position' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => ''
                        ),
                        'ho_age' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => ''
                        ),
                        'ho_dob' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => ''
                        ),
                        'ho_civil_status' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => ''
                        ),
                        'ho_occu_company' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => ''
                        ),
                        'other' => '',
                        'totalMember' => 0
                    );

                    return array(
                        'id' => $id,
                        'data' => $form_info,
                        'message' => 'Successully Sign Up.',
                        'status'  => 'success'
                    );
                } catch (Exception $e) {
        
                    return array(
                        'message' => $e->getMessage(),
                        'status'  => 'error'
                    );
                }
            } else {
                return array(
                    'message' => 'Please upload a valid image file',
                    'status'  => 'failed'
                );
            }
            die();
        }else {
            return array(
                'message' => 'Please upload an id',
                'status'  => 'failed'
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
                    'message' => 'It may take for up 72 hours for approval. Please try again later',
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

    public function forgotPassword($data)
    {

        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_user WHERE username=:username AND email=:email LIMIT 01");
            $stmt->execute([
                'username' => $data['username'],
                'email' => strtoupper($data['email'])
            ]);

            $result = $stmt->fetch(PDO::FETCH_ASSOC);

            if(isset($result['u_status']) && isset($result['userType']) && $result['u_status']==0 && $result['userType']==1) {
                return array(
                    'message' => 'It may take for up 72 hours for approval. Please try again later',
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
                    'message' => 'Invalid Username & Email',
                    'status'  => 'warning'
                );
                die();
            }

            $tempPass = uniqid();
 
            $stmt = $this->conn->prepare("UPDATE tbl_user SET password=:password WHERE username=:username AND email=:email LIMIT 01");
            $stmt->execute([
                'username' => $data['username'],
                'email'    => $data['email'],
                'password' => md5($tempPass),
            ]);

           $response = $this->sendPassword($data['email'],$tempPass);
           return $response;

        } catch (Exception $e) {

            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
    }

    public function sendPassword($email, $tempPass){


    
        $userEmail = $email;
        $subject = 'Password Reset';
        
        $message = "
            <p>Dear User,</p>
            <p>Thank you for using our website. Your password has been reset.</p>
            <p>Your temporary password is: <strong>$tempPass</strong></p>
            <p>Kindly replace it with a new password upon logging in</p>
            <p>Best regards,<br>Brgy Officials</p>
        ";
        
        $mail = new PHPMailer(true);
        
        try {
            // Server settings
            $mail->isSMTP();
            $mail->Host       = 'smtp.gmail.com';
            $mail->SMTPAuth   = true;
            $mail->Username = $_ENV['GMAIL_USERNAME']; 
            $mail->Password = $_ENV['GMAIL_PASSWORD']; 
            $mail->SMTPSecure = 'tls';
            $mail->Port       = 587;
        
            // Recipients
            $mail->setFrom('noreply@brgyhall.com', 'Barangay Hall');
            $mail->addAddress($userEmail);
        
            // Content
            $mail->isHTML(true);
            $mail->Subject = $subject;
            $mail->Body    = $message;
        
            $mail->send();
        
            return array(
                'message' => 'Changed Password',
                'status'  => 'success',
                'login.php'
            );
        } catch (Exception $e) {
            return array(
                'error',
                'Error sending email: ' . $mail->ErrorInfo,
                'admin.php'
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
                $response = $this->createUser($data, $file);
                return array(
                    'message' => 'Succcess updated account.',
                    'status'  => 'success'
                ); 
          
        } else {
            $this->updateUser($data, $file);
            return array(
                'message' => 'Succcess updated account.',
                'status'  => 'success'
            );
           
        }
    }

    public function createUser($data, $file)
    {
        $newPass = md5($data['newPassword']);
        $data['fName'] = strtoupper($data['fName']);
        $data['lName'] = strtoupper($data['lName']);
        $data['email'] = strtoupper($data['email']);
        $data['mName'] = strtoupper($data['mName']);
        try {
            $stmt = $this->conn->prepare("INSERT INTO tbl_user (username, f_name,m_name, l_name, email, phone, password, avatar, userType) VALUES (:username, :f_name,:m_name, :l_name, :email, :phone, :password, :avatar, :userType)");
             $stmt->execute([
                'username' => $data['username'],
                'f_name'   => $data['fName'],
                'm_name'   => $data['mName'],
                'l_name'   => $data['lName'],
                'email'    => $data['email'],
                'phone'    => $data['phone'],
                'password' => $newPass,
                'avatar'   => $file,
                'userType' => 1
            ]);

            $id = $this->conn->lastInsertId();
                    $form_info = array(
                        'name' => array(
                            0 => $data['lName'],
                            1 => $data['fName'],
                            2 => $data['mName']
                        ),
                        'present_address' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => '',
                            5 => ''
                        ),
                        'provincial_address' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => ''
                        ),
                        'civil_status' => '',
                        'sex' => '',
                        'date_of_birth' => '',
                        'place_of_birth' => '',
                        'height' => '',
                        'weight' => '',
                        'contactno' => $data['phone'],
                        'religion' => '',
                        'email' => $data['email'],
                        'school' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => ''
                        ),
                        'school_address' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => ''
                        ),
                        'duration' => array(
                            0 => '',
                            1 => '',
                            2 => ''
                        ),
                        'name_of_emp' => array(
                            0 => '',
                            1 => '',
                            2 => ''
                        ),
                        'house_occu' => array(
                            0 => '',
                            1 => '',
                            2 => ''
                        ),
                        'ho_name' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => ''
                        ),
                        'ho_fam_position' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => ''
                        ),
                        'ho_age' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => ''
                        ),
                        'ho_dob' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => ''
                        ),
                        'ho_civil_status' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => ''
                        ),
                        'ho_occu_company' => array(
                            0 => '',
                            1 => '',
                            2 => '',
                            3 => '',
                            4 => ''
                        ),
                        'other' => '',
                        'totalMember' => 0
                    );

                    return array(
                        'id' => $id,
                        'data' => $form_info,
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

    public function updateUser($data, $file)
    {
        $newPass = md5($data['newPassword']);
        $data['fName'] = strtoupper(($data['fName']));
        $data['lName'] = strtoupper($data['lName']);
        $data['email'] = strtoupper($data['email']);
        $data['mName'] = strtoupper($data['mName']);
        
        try {
            if (empty($file)) {
                $stmt = $this->conn->prepare("UPDATE tbl_user SET username=:username, f_name=:f_name, m_name=:m_name, l_name=:l_name, email=:email, phone=:phone, password=:password WHERE user_id=:user_id");
                $stmt->execute([
                    'username' => $data['username'],
                    'f_name'   => $data['fName'],
                    'm_name'   => $data['mName'],
                    'l_name'   => $data['lName'],
                    'email'    => $data['email'],
                    'phone'    => $data['phone'],
                    'password' => $newPass,
                    'user_id'  => $data['id']
                ]);

                $name = array(
                   strtoupper($data['lName']),
                   strtoupper($data['fName']),
                   strtoupper($data['mName']),
                    
                );

                $stmt = $this->conn->prepare("UPDATE tbl_census SET 
                                        names = :names,
                                        contactno = :contactno,
                                        email = :email
                                      WHERE user_id = :user_id");

                return $stmt->execute([
                    'names'      => json_encode($name),
                    'contactno'  => strtoupper($data['phone']),
                    'email'      => strtoupper($data['email']),
                    'user_id'    => $data['id']
                ]);
            } else {
                $stmt = $this->conn->prepare("UPDATE tbl_user SET username=:username, f_name=:f_name, m_name=:m_name, l_name=:l_name, email=:email, phone=:phone, password=:password, avatar=:avatar WHERE user_id=:user_id");
                $stmt->execute([
                    'username' => $data['username'],
                    'f_name'   => $data['fName'],
                    'm_name'   => $data['mName'],
                    'l_name'   => $data['lName'],
                    'email'    => $data['email'],
                    'phone'    => $data['phone'],
                    'password' => $newPass,
                    'user_id'  => $data['id'],           
                    'password' => $newPass,
                    'avatar'   => $file,
                ]);

                $stmt = $this->conn->prepare("UPDATE tbl_census SET 
                                        names = :names,
                                        contactno = :contactno,
                                        email = :email
                                      WHERE user_id = :user_id");

                return $stmt->execute([
                    'names'      => strtoupper($name),
                    'contactno'  => strtoupper($data['phone']),
                    'email'      => strtoupper($data['email']),
                    'user_id'    => $data['id']
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
            $stmt = $this->conn->prepare("
            DELETE FROM tbl_user 
            WHERE user_id = :user_id;
        
            DELETE FROM tbl_census 
            WHERE user_id = :user_id;
        
            DELETE FROM tbl_name_change 
            WHERE user_id = :user_id;
        ");
        
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
            $stmt = $this->conn->prepare("UPDATE tbl_user SET u_status = :u_status WHERE user_id = :user_id");
            $stmt->execute([
                'user_id' => $id,
                'u_status' => $status
            ]);
            $stmt = $this->conn->prepare("UPDATE tbl_census SET total_members = 1 WHERE user_id = :user_id");
                $stmt->execute([
                    'user_id' => $id
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
