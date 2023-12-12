<!DOCTYPE html>
<html lang="en">

<head>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="icon" href="./uploads/new_logo.ico" type="image/x-icon">
</head>

<body>
    <?php
    session_start();
    require_once 'Classes/Credential.php';
    require_once 'Classes/Db.php';
    include_once('loader.php');
    include_once('uploader.php');
    require 'vendor/autoload.php';

    use Classes\Credential;
    use Classes\Db;

    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;
    $mail = new PHPMailer;

    $credential = new Credential();
    $db   = new Db();
    $conn = $db->connect($credential);

    $loginObj   = new Login($conn);
    $settingObj = new Settings($conn);
    $objModel   = new Model($conn);
   
    
    function UploaderFileTest($file)
    {
        
        $fileUpload = '';
        if (!empty($file)) {
         

            $fileUpload = upload($_FILES['file'],true);

            if ($fileUpload['status'] == 'success') {
                return $fileUpload['avatar'];
            } else {
                print_r($fileUpload['message']);
            }
            die();
        }
        return '';
    }

    if (isset($_SESSION['user_id'])) {
        $userData = $loginObj->showUser($_SESSION['user_id']);
    }

    if (isset($_GET['destroyJob'])) {

        $response = $objModel->destroyJob(
            $_GET['destroyJob']
        );

        if ($response['status'] == 'success') {
            url(
                'success',
                $response['message'],
                'admin.php?page=a_jobs'
            );
            unset( $_SESSION['step1']);
        } else {
            url(
                'error',
                $response['message'],
                'admin.php?page=a_jobs'
            );
        }
        die();
    }

    if(isset($_GET['addJob'])){

        $response = $objModel->addJobs($_GET['addJob']);

        if ($response['status'] == 'success') {
            url(
                'success',
                $response['message'],
                'admin.php?page=a_jobs'
            );
            unset( $_SESSION['step1']);
        } else {
            url(
                'error',
                $response['message'],
                'admin.php?page=a_jobs'
            );
        }
        die();

    }

    if (isset($_POST['manageJobs'])) 
    {
        $response = $objModel->saveJobs($_POST);

        if ($response['status'] == 'success') {

            url(
                'success',
                $response['message'],
                'admin.php?page=a_jobs'
            );
        } else {
            url(
                'error',
                $response['message'],
                'admin.php?page=a_jobs'
            );
        }
        die();
    }

    if (isset($_POST['routeStep1'])) {
        unset( $_SESSION['step1']);
        unset($_POST['routeStep1']);

        $_SESSION['step1'] = $_POST;

        $currentYear = strtotime($objModel->getViewHistory($userData['user_id'])['form_date_created']);

        if(date('Y',$currentYear)==date('Y')){
            $formId = $objModel->getViewHistory($userData['user_id'])['form_id'];
            $response = $objModel->updateData(
                $formId,
                $_SESSION['step1'],   
            );
            // print_r($_SESSION['step1']);
            // print_r($_GET);
    
            if ($response['status'] == 'success') {
                if($_SESSION['step1']['isSave']== "TRUE"){
                    url(
                        $response['status'],
                        $response['message'],
                        'admin.php'
                    );
                    unset( $_SESSION['step1']);
                }
                else{
                    header("Location: admin.php?step=step-2");
                    die();
                }
            } else {
                print_r($response['message']);
                url(
                    $response['status'],
                    $response['message'],
                    'admin.php'
                );
            }
            die();
        }
        else{
            $response = $objModel->saveDataFroms(uniqid(), $_SESSION['step1'], $userData['user_id']);
            if ($response['status'] == 'success') {
                if($_SESSION['step1']['isSave']== "TRUE"){
                    url(
                        $response['status'],
                        $response['message'],
                        'admin.php'
                    );
                    unset( $_SESSION['step1']);
                }
                else{
                    header("Location: admin.php?step=step-2");
                    die();
                }
            } else {
                print_r($response['message']);
                url(
                    $response['status'],
                    $response['message'],
                    'admin.php'
                );
            }
            die();
        }


     
    
    }

    if(isset($_GET['sendEmail'])){
        
        $userEmail = 'user@yopmail.com';

        $subject = 'Registration approval';

 
        $message = "
            <p>Dear User,</p>
            <p>Thank you for registering with our website. Your account has been approved</p>
            <p>If you did not register on our website, you can safely ignore this email.</p>
            <p>Best regards,<br>Brgy Officials</p>
        ";

        $headers = "From: Barangay Hall <noreply@brgyhall.com>\r\n";
        $headers .= "Content-type: text/html\r\n";

        ini_set("SMTP","smtp.gmail.com");
        ini_set("smtp_port","587");
        ini_set("sendmail_from", "miko.recare@cvsu.edu.ph");
        ini_set('sendmail_path', 'C:\\xampp\\sendmail\\sendmail.exe -t -i'); // Adjust the path to your sendmail executable



        $mailSuccess = mail($userEmail, $subject, $message, $headers);
        if ($mailSuccess) {
            echo 'Email sent successfully.';
        } else {
            $e=error_get_last();
            echo $e['message'];
        }
    }



    if (isset($_GET['doneSteps'])) {
        $currentYear = strtotime($objModel->getViewHistory($userData['user_id'])['form_date_created']);
        print_r(date('Y'));


        if(date('Y',$currentYear)==date('Y')){
            $formId = $objModel->getViewHistory($userData['user_id'])['form_id'];
            $response = $objModel->updateData(
                $formId,
                $_SESSION['step1'],   
            );
            // print_r($_SESSION['step1']);
            // print_r($_GET);
    
            if ($response['status'] == 'success') {
                url(
                    $response['status'],
                    $response['message'],
                    'admin.php'
                );
                unset( $_SESSION['step1']);
            } else {
                url(
                    $response['status'],
                    $response['message'],
                    'admin.php'
                );
            }
            die();
        }
        else{
            $response = $objModel->saveDataFroms(uniqid(), $_SESSION['step1'], $userData['user_id']);
            if ($response['status'] == 'success') {
                url(
                    $response['status'],
                    $response['message'],
                    'admin.php'
                );
                unset( $_SESSION['step1']);
            } else {
                url(
                    $response['status'],
                    $response['message'],
                    'admin.php'
                );
            }
            die();
        }

     
    }


    if (isset($_POST['managePostAuction'])) {

        $file = '';

        if ($_FILES['file']['error'] != 4) {
            $file = UploaderFileTest($_FILES['file']['name']);
        }

        $response = $aucObj->manageAuction(
            $_POST,
            $file,
            $userData['user_id']
        );

        if ($response['status'] == 'success') {
            url(
                $response['status'],
                $response['message'],
                'admin.php?page=u_auctionProducts'
            );
        } else {

            url(
                $response['status'],
                $response['message'],
                'admin.php?page=u_auctionProducts'
            );
        }
        die();
    }

    if (isset($_POST['signup'])) {
        if ($_POST['confirmpass'] != $_POST['password']) {
            url(
                'warning',
                'Password Not Match.',
                'index.php?page=signup'
            );
            die();
        }

        $usernameExists = $loginObj->checkUsernameExists($_POST['username']);
        if ($usernameExists) {
            url(
                'error',
                'Username already exists. Please choose a different username.',
                'index.php?page=signup'
            );
            die();
        }

        $response = $loginObj->signup($_POST,$_FILES);
        

        if ($response['status'] == 'success') {
            $objModel->saveDataFroms(uniqid(),$response['data'],$response['id']);
            url(
                'success',
                $response['message'],
                'index.php?page=login'
            );
        } else {
            url(
                'error',
                $response['message'],
                'index.php?page=signup'
            );
        }
        die();
    }

    if(isset($_POST['changename'])){
        unset($_POST['changename']);
        $response = $objModel->changeName($_POST,$_FILES);

        if ($response['status'] == 'success') {
            url(
                'success',
                $response['message'],
                'admin.php'
            );
        } else {
            url(
                'error',
                $response['message'],
                'admin.php'
            );
        }
        die();

    }

    if (isset($_POST['login'])) {

        $response = $loginObj->loginForm(
            $_POST
        );

        if ($response['status'] == 'success') {

            $_SESSION['user_id'] = $response['message']['user_id'];
            $_SESSION['loggedin'] = 'loggedin';

            header('Location: admin.php');
        } elseif ($response['status'] == 'warning') {
            url(
                'warning',
                $response['message'],
                'index.php'
            );
        } else {

            url(
                'error',
                $response['message'],
                'index.php'
            );
        }
        die();
    }

    if (isset($_POST['forgot_password'])) {

        $response = $loginObj->forgotPassword(
            $_POST
        );


        if ($response['status'] == 'success') {
            url(
                'success',
                'Password change success, Please check your inbox',
                'index.php'
            );
        } elseif ($response['status'] == 'warning') {
            url(
                'warning',
                $response['message'],
                'index.php'
            );
        } else {

            url(
                'error',
                $response['message'],
                'index.php'
            );
        }
        die();
    }

    if (isset($_POST['updateAccount'])) {
        if ($_POST['newPassword'] != $_POST['cPassword']) {
            url(
                'warning',
                'Password Not Match.',
                'admin.php'
            );
            die();
        }

        // print_r($_POST);

        $file = '';

        if ($_FILES['file']['error'] != 4) {
            $file = UploaderFileTest($_FILES['file']['name']);
        }

        $response = $loginObj->changePassAction(
            $_POST,
            $file
        );

        if ($response['status'] == 'success') {
            url(
                'success',
                $response['message'],
                'admin.php'
            );
        } else {
            url(
                'error',
                $response['message'],
                'admin.php'
            );
        }
        die();
    }

    if (isset($_POST['manageUser'])) {
        if ($_POST['newPassword'] != $_POST['cPassword']) {
            url(
                'warning',
                'Password Not Match!.',
                'admin.php?page=a_users'
            );
            die();
        }
        $file = '';

        if ($_FILES['file']['error'] != 4) {
            $file = UploaderFileTest($_FILES['file']['name']);
        }

        $response = $loginObj->manageUser(
            $_POST,
            $file
        );

        if($response=='success'){
            $objModel->saveDataFroms(uniqid(),$response['data'],$response['id']);
            url(
                'success',
                'Created User Successfully',
                'admin.php?page=a_users'
            );
        }
        else{
            url(
                'success',
                'Updated successfully',
                'admin.php?page=a_users'
            );
        }
        die();
    }


    if (isset($_GET['onApprovalUser'])) {
        $response = $loginObj->onApprovalUser(
            $_GET['id'],
            $_GET['onApprovalUser']
        );
    
        if ($response['status'] == 'success') {
    
            $userEmail = $_GET['email'];
            $subject = 'Registration approval';
    
            $mail->isSMTP();
    
            // SMTP settings
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'miko.recare@cvsu.edu.ph'; 
            $mail->Password = 'password'; 
            $mail->SMTPSecure = 'tls';
            $mail->Port = 587;
    
            $mail->setFrom('noreply@brgyhall.com', 'Barangay Hall');
            $mail->addAddress($userEmail);
    
            $mail->Subject = $subject;
    
            if ($_GET['onApprovalUser'] == 1) {
                $mail->Body = "
                    <p>Dear User,</p>
                    <p>Thank you for registering with our website. Your account has been approved.</p>
                    <p>If you did not register on our website, you can safely ignore this email.</p>
                    <p>Best regards,<br>Brgy Officials</p>
                ";
            } elseif ($_GET['onApprovalUser'] == 2) {
                // Rejected message
                $mail->Body = "
                    <p>Dear User,</p>
                    <p>We regret to inform you that your registration has been rejected due to lack of information or invalid ID.</p>
                    <p>If you believe this is an error, please contact us for further assistance.</p>
                    <p>Best regards,<br>Brgy Officials</p>
                ";
            }
    
            // Set content type
            $mail->isHTML(true);
    
            // Send the email
            if ($mail->send()) {
                url('success', $response['message'], 'admin.php?page=a_users');
            } else {
                url('error', 'Error sending email: ' . $mail->ErrorInfo, 'admin.php?page=a_users');
            }
    
        } else {
            url('error', $response['message'], 'admin.php?page=a_users');
        }
    
        die();
    }
    

    

    if(isset($_GET['onApprovalName'])){
      
        $response = $objModel->onApprovalName(
            $_GET['id'],
            $_GET['onApprovalName'],
            $_GET['names']
        );

        if ($response['status'] == 'success') {
            url(
                'success',
                $response['message'],
                'admin.php?page=a_tickets'
            );
        } else {
            url(
                'error',
                $response['message'],
                'admin.php?page=a_tickets'
            );
        }
        die();

            
    }

    if (isset($_GET['destroyUser'])) {
        $response = $loginObj->destroyUser(
            $_GET['destroyUser']
        );

        if ($response['status'] == 'success') {
            url(
                'success',
                $response['message'],
                'admin.php?page=a_users'
            );
        } else {
            url(
                'error',
                $response['message'],
                'admin.php?page=a_users'
            );
        }
        die();
    }


    if (isset($_POST['updateLogo'])) {
        $file = '';

        $file = UploaderFileTest($_FILES['file']['name']);

        $response = $settingObj->updateLogo(
            $file,
            $_POST
        );

        if ($response['status'] == 'success') {
    ?>
            <script>
                let timerInterval
                Swal.fire({
                    html: 'Uploading...<b></b>',
                    timer: 2000,
                    timerProgressBar: true,
                    didOpen: () => {
                        Swal.showLoading()
                        const b = Swal.getHtmlContainer().querySelector('b')
                        timerInterval = setInterval(() => {
                            b.textContent = Swal.getTimerLeft()
                        }, 100)
                    },
                    willClose: () => {
                        clearInterval(timerInterval)
                    }
                }).then((result) => {
                    if (result.dismiss === Swal.DismissReason.timer) {
                        Swal.fire({
                            position: "center",
                            icon: "success",
                            title: "<?php echo $response['message']; ?>",
                            showConfirmButton: false,
                            timer: 2000
                        })
                        setTimeout(() => {
                            window.location = 'admin.php?page=settings'
                        }, 2000)
                    }
                })
            </script>
    <?php
        } else {
            url(
                'error',
                $response['message'],
                'admin.php?page=settings'
            );
        }
        die();
    }

 


    if (isset($_POST['editDocument'])) {
        $file = '';

        $file = UploaderFileTest($_FILES['file']['name']);
        $response = $catObj->editDocs(
            $_POST,
            $file
        );

        if ($response['status'] == 'success') {
            url(
                'success',
                $response['message'],
                'document.php'
            );
        } else {
            url(
                'error',
                $response['message'],
                'document.php'
            );
        }
        die();
    }


    if (isset($_POST['addDocument'])) {
        if (empty($_FILES['file']['name'])) {
            url(
                'warning',
                'Empty Choose File Please Try Again!.',
                'document.php'
            );
            die();
        }
        $file = '';

        $file = UploaderFileTestTest($_FILES['file']['name']);

        $response = $catObj->newCategory(
            $_POST,
            $file
        );

        if ($response['status'] == 'success') {
            url(
                'success',
                $response['message'],
                'document.php'
            );
        } else {
            url(
                'error',
                $response['message'],
                'document.php'
            );
        }
        die();
    }

    function url($icon, $msg, $path)
    {
        echo '
                <script>
                    Swal.fire({
                        position: "center",
                        icon: "' . $icon . '",
                        title: "' . $msg . '",
                        showConfirmButton: false,
                        timer: 1500
                    });
                </script>
            ';

        echo '
                <script>
                    setTimeout(() => {
                        window.location="' . $path . '";
                    }, 1500);
                </script>
            ';
    }
    ?>
</body>

</html>