<?php
$user = 'active';
$userData = $loginObj->showUser(isset($_GET['id']) ? $_GET['id'] : 0);
$userInfo = 
$modalRoute = 'admin.php?page=a_tickets'; ?>
<div class="container-fluid pt-3">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col mt-2">
                    TICKETS
                </div>
            </div>
        </div>
        <div class="card-body">
            <div style="overflow: auto;">
                <table id="tbl" class="table table-bordered" style="width: 100%;">
                    <thead>
                        <tr>
                            <th class="text-center">Ticket No</th>
                            <th class="text-center">User Id</th>
                            <th class="text-center">Ticket Status</th>
                            <th class="text-center">New Name  (First, Middle, Last)</th>
                            <th class="text-center">ID Presented</th>
                            <th class="text-center">Date Created</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($objModel->getTicket() as $ticket) : ?>
                            <tr>
                                <td class="text-center"><?= $ticket['req_id']; ?></td>
                                <td class="text-center"><?= $ticket['user_id']; ?></td>
                                <td class="text-center">
                                    <?php
                                    switch ($ticket['t_status']) {
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
                                    <button class="btn-sm btn btn-outline-success" onclick="Approval('<?= $ticket['user_id'] ?>', '1', <?= htmlspecialchars(json_encode($ticket['names']), ENT_QUOTES, 'UTF-8') ?>)"><i class="fa-solid fa-thumbs-up"></i></button>
                                    <button class="btn-sm btn btn-outline-danger" onclick="Approval('<?= $ticket['user_id'] ?>', '2', <?= htmlspecialchars(json_encode($ticket['names']), ENT_QUOTES, 'UTF-8') ?>)"><i class="fa-solid fa-thumbs-down"></i></button>
                                </td>
                                <td class="text-center"><?= json_decode($ticket['names'], true)[0]; ?> |  <?= json_decode($ticket['names'], true)[1]; ?> | <?= json_decode($ticket['names'], true)[2]; ?></td>
                          
                                <td class="text-center">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#imageModal<?= $ticket['user_id']; ?>">
                                        <img style="margin: auto; cursor: pointer;" src="<?= empty($ticket['id_url']) ? 'uploads/avatar.png' : 'uploads/' . $ticket['id_url']; ?>" alt="LOGO" width="50" height="50" class="d-inline-block align-text-top">
                                    </a>
                                </td>

                                <td class="text-center"><?= $ticket['date_created'] ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="modal fade" id="imageModal<?= $ticket['user_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel<?= $ticket['user_id']; ?>" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-body" style="display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;">
                    <img src="uploads/<?= $ticket['id_url']; ?>" class="img-fluid" alt="Larger View">
                </div>
            </div>
        </div>
    </div>
</div>
</div>


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

    const Approval = (id, status,names) => {

        let msg = status==0 ? 'Cancelled' : 'Approve';

        Swal.fire({
            title: 'Are you sure?',
            text: "Do you want to "+msg,
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Proceed'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location = 'route.php?onApprovalName=' + status+'&id='+id+'&names='+names;
            }
        })
    }
    
    <?php if (isset($_GET['id'])) : ?>
        setTimeout(() => {
            $("#userModal").modal("show");
        }, 1000);
    <?php endif; ?>
</script>