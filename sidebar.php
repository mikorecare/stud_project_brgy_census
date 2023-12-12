<style>
    sup {
    vertical-align: super;
    font-size: 10px;
    background-color:red;
    padding-left:5px;
    padding-right:5px;
    color:white;
    border-radius: 50%;
}

@media(min-width:766px){
    #sidebar-wrapper{
        display:block;
    }
}



</style>

<div class="border-end bg-white" id="sidebar-wrapper">
    <div class="sidebar-heading border-bottom bg-light">
        <center><a href="."><img style="border-radius: 50%;margin: auto;" src="./uploads/<?= $settingObj->getLogo()['path']; ?>" alt="LOGO" width="50" height="50" class="d-inline-block align-text-top">
                <br><span style="color: #9e9e9e;font-size: 15px">WEB SYSTEM</span></a>
        </center>
    </div>
    <div class="list-group list-group-flush">
        <a class="list-group-item list-group-item-light p-3" data-bs-toggle="modal" data-bs-target="#changePassModal">
            <center><img src="./uploads/<?= $userData['avatar']; ?>" alt="avatar" width="130" height="130" style="border-radius: 50%;">
                <p><span style="font-size: 25px;"><?= ucwords($userData['f_name']); ?></span><br><span class="text-muted" style="font-size: 14px;"> <?= $userData['userType'] == 0 ? 'System Administrator' : 'System User'; ?> </span></p>
            </center>
        </a>
        <?php if ($userData['userType'] == 0) : ?>

            <a class="list-group-item list-group-item-action list-group-item-light p-3 <?= $home; ?>" href="admin.php"><i class="fa-solid fa-gauge px-2"></i>Dashboard</a>

            <a class="list-group-item list-group-item-action list-group-item-light p-3 <?= $home; ?>" href="?page=history_registered"><i class="fa-solid fa-list px-2"></i>History</a>

            <a class="list-group-item list-group-item-action list-group-item-light p-3 <?= $job; ?>" href="?page=a_jobs"><i class="fa-solid fa-suitcase px-2"></i>Manage Jobs</a>

            <?php if (isset($userData['userType']) && $userData['userType'] == 0) : ?>
                <a class="list-group-item list-group-item-action list-group-item-light p-3 <?= $user; ?>" href="?page=a_users"><i class="fa-solid fa-users px-2"></i>Users</a>
                <?php $settingObj->settings(isset($_GET['true']) ? $_GET['true'] : ''); ?>
            <?php endif; ?>
            
            <a class="list-group-item list-group-item-action list-group-item-light p-3 <?= $job; ?>" href="?page=a_tickets">
                <i class="fa-solid fa-ticket px-2"></i>Manage Tickets
                <?php
                $ticketCount = $objModel->getTicketCount();
                if ($ticketCount !== '' && $ticketCount > 0) {
                    echo '<span><sup>' . $ticketCount . '</sup></span>';
                }
                ?>
            </a>

        <?php else : ?>
            <a class="list-group-item list-group-item-action list-group-item-light p-3 <?= $home; ?>" href="admin.php"><i class="fa-solid fa-home px-2"></i>Home</a>
            <a class="list-group-item list-group-item-action list-group-item-light p-3 <?= $home; ?>" href="logout.php"><i class="fa-solid fa-sign-out px-2"></i>Log out</a>
        <?php endif; ?>
    </div>
</div>
<div id="page-content-wrapper">


<nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom" style="height: 80px;">
    <div class="container-fluid">
        <button id="button-toggler" class="btn bg-light" style="display:block; margin-left:10px;" onclick="toggleNav()">
            <span class="navbar-toggler-icon"></span>
        </button>

                <a class="nav-link dropdown-toggle float-end"  id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa-solid fa-user px-2"></i><?= ucwords($userData['f_name']); ?></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown" style="padding: 10px;margin-right:auto">
                    <li><a class="dropdown-item py-2" data-bs-toggle="modal" data-bs-target="#changePassModal">
                        <span><img src="./uploads/<?= $userData['avatar']; ?>" width="20px" height="20px" style="border-radius: 50%;margin-right: 5px;"></span>
                        Update Profile
                    </a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item py-2" href="logout.php"><i class="fa-solid fa-arrow-right-from-bracket px-2"></i>Log Out</a></li>
        </ul>
    </div>
</nav>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap JS and Popper.js for Bootstrap 5 -->
<script>
  function toggleNav() {
    var btn = $('#button-toggler');
    var main = $('#page-content-wrapper');
    var sidebar = $('#sidebar-wrapper');
    if (sidebar.css('margin-left') === '1px') {
        sidebar.css('margin-left','-250px');
        main.css('margin-left', '0');
        btn.css('margin-left','0');
    } else {
      sidebar.css('margin-left', '1px');
    }
  }
</script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>

