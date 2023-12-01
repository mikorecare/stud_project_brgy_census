<div class="card p-5">
    <h3 class="mt-4 text-center">Welll Done! <i class="fa-solid fa-check text-success"></i> Your ID Number</h3>
    <hr>
    <div class="card" style="width: 300px; margin:auto">
        <div class="card-body">
            <center>
                <img width="100px" src="./uploads/<?= $userData['avatar']; ?>" alt="Profile Picture" class="profile-image">
            </center>
            <div class="card p-2 mt-2">
                <div class="car-body">
                    <p class="name"><?= ucwords($userData['f_name']); ?> <?= ucwords($userData['l_name']); ?><br>

                    <p class="info">Email: <?= ucwords($userData['email']); ?><br>
                    <p class="info">Date: <?= date('Y-m-d') ?><br>
                        <?php $id = uniqid(); ?>

                    <p class="info">ID Number: <?= $id ?></p>
                    <input type="hidden" id="inputId" value="<?= $id ?>">
                </div>
            </div>
        </div>
    </div>
    <br>
    <center>
        <a href="print_id.php">View To Print</a>
    </center>
    <br>
    <center>
        <a href="admin.php?step=step-2" class="btn btn-primary"><i class="fa-solid fa-angle-left"></i><span class="ml-2">&nbsp;Previus</span></a>&nbsp;&nbsp;
        <button id="btnDone" class="btn btn-primary">Done</button>
    </center>
</div>
<script>
    btnDone.onclick = () => {
        let id = document.querySelector('#inputId').value;
        window.location = `route.php?doneSteps=${id}`;
    }
</script>