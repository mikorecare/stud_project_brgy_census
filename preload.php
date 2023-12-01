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

$loginObj  = new Login($conn);
$settingObj = new Settings($conn);

if (isset($_SESSION['user_id'])) {
    $userData = $loginObj->showUser($_SESSION['user_id']);
}

if (isset($_POST['seacrhAuction'])) {

    $aucObj->searchAuction($_POST['seacrhAuction'], $userData['user_id']);
    die();
}

if (isset($_GET['updateTimer'])) {

    $aucObj->saveTimer(
        $_GET
    );
}

if (isset($_GET['getTimer'])) {

    $aucObj->getTimer($_GET['getTimer']);
}

if (isset($_POST['closedBid'])) {

    $aucObj->closedBid(
        $_POST['closedBid']
    );
}

if (isset($_GET['getWin'])) {

    $aucObj->getBiddersAll();
    $aucObj->getWinnerBidder();

    echo json_encode([
        'message' => 'Running Random Forest.',
        'status'  => 200
    ]);
}
