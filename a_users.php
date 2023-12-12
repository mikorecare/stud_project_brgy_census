<?php
$user = 'active';
$userData = $loginObj->showUser(isset($_GET['id']) ? $_GET['id'] : 0);
$userInfo = 
$modalRoute = 'admin.php?page=a_users'; ?>

<style>
.loader-container {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
}

.loader {
    border: 8px solid #f3f3f3;
    border-top: 8px solid #3498db;
    border-radius: 50%;
    width: 50px;
    height: 50px;
    animation: spin 1s linear infinite;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}

.loading-message {
    margin-top: 10px;
}
</style>
<div class="container-fluid pt-3">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col mt-2">
                    USERS
                </div>
                <div class="col">
                    <button style="float: right;" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#userModal">New User</button>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div style="overflow: auto;">
                <table id="tbl" class="table table-bordered" style="width: 100%;">
                    <thead>
                        <tr>
                            <th class="text-center">Avatar</th>
                            <th class="text-center">First Name</th>
                            <th class="text-center">Last Name</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Phone</th>
                            <th class="text-center">Status</th>
                            <th class="text-center">Action</th>
                            <th class="text-center">ID Presented</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($loginObj->getUser() as $user) : ?>
                            <tr>
                                <td class="text-center"><img style="border-radius: 50%;margin: auto;" src="uploads/<?= $user['avatar']; ?>" alt="LOGO" width="50" height="50" class="d-inline-block align-text-top"></td>
                                <td class="text-center"><?= $user['f_name']; ?></td>
                                <td class="text-center"><?= $user['l_name']; ?></td>
                                <td class="text-center"><?= $user['email']; ?></td>
                                <td class="text-center"><?= $user['phone'];  ?></td>
                                <td class="text-center">
                                    <?php
                                    switch ($user['u_status']) {
                                        case 0:
                                            echo "<p class='text-primary'>Pending</p>";
                                            break;
                                        case 1:
                                            echo "<p class='text-success'>Approve</p>";
                                            break;
                                        case 2:
                                            echo "<p class='text-danger'>Cancelled</p>";
                                            break;
                                    }
                                    ?>
                                    <button class="btn-sm btn btn-outline-success" onclick="Approval('<?= $user['user_id'] ?>', '1','<?= $user['email'] ?>')"><i class="fa-solid fa-thumbs-up"></i></button>
                                    <button class="btn-sm btn btn-outline-danger" onclick="Approval('<?= $user['user_id'] ?>', '2','<?= $user['email'] ?>')"><i class="fa-solid fa-thumbs-down"></i></button>
                                </td>
                                <td class="text-center">
                                    <button class="btn-sm btn btn-outline-danger" onclick="destroy('<?= $user['user_id'] ?>')"><i class="fa-solid fa-trash-can"></i></button>
                                    <a class="btn-sm btn btn-outline-primary" href="?page=a_users&id=<?= $user['user_id'] ?>"><i class="fa-solid fa-pencil"></i></a>
                                </td>
                                <td class="text-center">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#imageModal<?= $user['user_id']; ?>">
                                        <img style="margin: auto; cursor: pointer;" src="<?= empty($user['id_url']) ? 'uploads/avatar.png' : 'uploads/' . $user['id_url']; ?>" alt="LOGO" width="50" height="50" class="d-inline-block align-text-top">
                                    </a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="modal fade" id="imageModal<?= $user['user_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel<?= $user['user_id']; ?>" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-body" style="display: flex;
                                                justify-content: center;
                                                align-items: center;
                                                height: 100vh;">
                    <img src="uploads/<?= $user['id_url']; ?>" class="img-fluid" alt="Larger View">
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<?php include('Modal/userModal.php'); ?>

<script>
    const destroy = (id) => {
        Swal.fire({
            title: 'Are you sure?',
            text: "Do you want to remove!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Remove'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location = 'route.php?destroyUser=' + id;
            }
        })
    }

    const Approval = (id, status, email) => {
    let msg = status == 2 ? 'Cancelled' : 'Approve';

    Swal.fire({
        title: 'Are you sure?',
        text: 'Do you want to ' + msg,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Proceed'
    }).then((result) => {
        if (result.isConfirmed) {
            // Show loader
            Swal.fire({
                html: '<div class="loader-container"><div class="loader"></div><div class="loading-message">Saving Changes. Please wait...</div></div>',
                showConfirmButton: false,
                allowOutsideClick: false,
                allowEscapeKey: false
            });

            // Make your PHP request here, then close the loader
            window.location = 'route.php?onApprovalUser=' + status + '&id=' + id + '&email=' + email;
        }
    });
};

    <?php if (isset($_GET['id'])) : ?>
        setTimeout(() => {
            $("#userModal").modal("show");
        }, 1000);
    <?php endif; ?>
</script>