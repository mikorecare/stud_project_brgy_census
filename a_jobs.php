<?php
$user = 'active';
$userData = $loginObj->showUser(isset($_GET['id']) ? $_GET['id'] : 0);
$modalRoute = 'admin.php?page=a_jobs'; ?>
<div class="container-fluid pt-3">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col mt-2">
                    JOB LISTS
                </div>
            </div>
        </div>
        <div class="card-body">
            <div style="overflow: auto;">
                <form action="" method="post">
                    <table class="table table-bordered" style="width: 100%;">
                        <thead>
                            <tr>
                                <th class="text-center">Job Title</th>
                                <th class="text-center">Created Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $id = '';
                            foreach ($objModel->getJobs() as $job) : ?>
                                <tr>
                                    <td class="text-center">
                                        <input type="text" <?= $job['job_title'] == 'Others' ? 'readonly' : '' ?> class="form-control text-center" value="<?= $job['job_title']; ?>" name="job_title[]">
                                    </td>
                                    <td class="text-center"><?= date('Y-m-d', strtotime($job['create_job_date'])) ?><input type="hidden" value="<?= $job['job_id']; ?>" name="id_jobs[]"></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
            </div>
            <hr>
            <center>
                <input type="hidden" name="manageJobs" value="<?= uniqid(); ?>">
                <button type="submit" class="btn btn-primary text-center">Update Jobs</button>
            </center>
            </form>
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
                window.location = 'route.php?destroyJob=' + id;
            }
        })
    }
</script>