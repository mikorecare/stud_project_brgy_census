<?php
$user = 'active';
$userData = $loginObj->showUser(isset($_GET['id']) ? $_GET['id'] : 0);
$modalRoute = 'admin.php?page=a_users'; ?>
<div class="container-fluid pt-3">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col mt-2">
                    REGISTERED USERS HISTORY
                </div>
            </div>
        </div>
        <div class="card-body">
            <div style="overflow: auto;">
                <table id="tbl" class="table table-bordered" style="width: 100%;">
                    <thead>
                        <tr>
                            <th class="text-center">Name</th>
                            <th class="text-center">Address</th>
                            <th class="text-center">Created Date</th>
                            <th class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($objModel->getHistory() as $user) : ?>
                            <tr>
                                <td class="text-center">
                                    <?php
                                    foreach ($objModel->parseData($user['names']) as $names) {
                                        echo $names . ' ';
                                    }

                                    ?>
                                </td>
                                <td class="text-center">
                                    <?php
                                    foreach ($objModel->parseData($user['present_address']) as $names) {
                                        echo $names . ' ';
                                    }

                                    ?>
                                </td>
                                <td class="text-center">
                                    <?= date('Y-m-d', strtotime($user['form_date_created'])) ?>
                                </td>
                                <td class="text-center">
                                    <!-- <button class="btn-sm btn btn-outline-danger" onclick="destroy('<?= $user['user_id'] ?>')"><i class="fa-solid fa-trash-can"></i></button> -->

                                    <a class="btn-sm btn btn-outline-primary" href="?page=view_history&id=<?= $user['form_id'] ?>"><i class="fa-solid fa-eye"></i></a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
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
</script>