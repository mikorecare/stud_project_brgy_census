<!DOCTYPE html>
<html lang="en">

<head>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
    <?php
    session_start();
    require_once 'Classes/Credential.php';
    require_once 'Classes/Db.php';
    include('loader.php');

    use Classes\Credential;
    use Classes\Db;

    $credential = new Credential();
    $db   = new Db();
    $conn = $db->connect($credential);

    $loginObj   = new Login($conn);
    $settingObj = new Settings($conn);
    $objModel   = new Model($conn);

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

        unset($_POST['routeStep1']);

        $_SESSION['step1'] = $_POST;

        header("Location: admin.php?step=step-2");
        die();
    }

    if (isset($_GET['doneSteps'])) {

        $response = $objModel->saveDataFroms(
            $_GET['doneSteps'],
            $_SESSION['step1'],
            $userData['user_id']
        );

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


    if (isset($_POST['managePostAuction'])) {

        $file = '';

        if ($_FILES['file']['error'] != 4) {
            $file = uploaderFile($_FILES['file']['name']);
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

        $response = $loginObj->signup($_POST);

        if ($response['status'] == 'success') {

            url(
                'success',
                $response['message'],
                'index.php?page=signup'
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

    if (isset($_POST['updateAccount'])) {
        if ($_POST['newPassword'] != $_POST['cPassword']) {
            url(
                'warning',
                'Password Not Match.',
                'admin.php'
            );
            die();
        }

        $file = '';

        if ($_FILES['file']['error'] != 4) {
            $file = uploaderFile($_FILES['file']['name']);
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
            $file = uploaderFile($_FILES['file']['name']);
        }

        $response = $loginObj->manageUser(
            $_POST,
            $file
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


    if (isset($_GET['onApprovalUser'])) {
        $response = $loginObj->onApprovalUser(
            $_GET['id'],
            $_GET['onApprovalUser']
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

        $file = uploaderFile($_FILES['file']['name']);

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

    function uploaderDocument($file)
    {
        $fileUpload = '';
        if (!empty($file)) {
            include('uploaderDoc.php');

            $fileUpload = upload($_FILES['file'], './uploads/');

            if ($fileUpload['status'] == 'success') {
                return $fileUpload['avatar'];
            } else {
                print_r($fileUpload['message']);
            }
            die();
        }
        return '';
    }

    function uploaderFile($file)
    {
        $fileUpload = '';
        if (!empty($file)) {
            include('uploader.php');

            $fileUpload = upload($_FILES['file'], './uploads/');

            if ($fileUpload['status'] == 'success') {
                return $fileUpload['avatar'];
            } else {
                print_r($fileUpload['message']);
            }
            die();
        }
        return '';
    }


    if (isset($_POST['editDocument'])) {
        $file = '';

        $file = uploaderDocument($_FILES['file']['name']);
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

        $file = uploaderDocument($_FILES['file']['name']);

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