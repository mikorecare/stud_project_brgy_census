<?php
    session_start();
    unset($_SESSION['user_id']);
    unset($_SESSION['name']);
    unset($_SESSION['loggedin']);
    unset($_SESSION['avatar']);
    unset($_SESSION['userType']);
    unset($_SESSION['step1']);
    
    header('Location: index.php');
?>