<?php include('route.php'); ?>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<div class="card p-5 content">
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

    <button style="width: 200px; margin:auto" class="btn btn-primary" id="printButton">Print</button>
</div>
<script>
    $(document).ready(function() {
        $('#printButton').click(function() {
            $("#printButton").addClass("d-none");
            var printableContent = $('.content').clone();

            var printWindow = window.open('', '', 'width=600,height=600');
            printWindow.document.open();
            printWindow.document.write('<html><head><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"><title>Print</title></head><body>');
            printWindow.document.write(printableContent.html());
            printWindow.document.write('</body></html>');
            printWindow.document.close();


            printWindow.print();
            printWindow.close();
            $("#printButton").removeClass("d-none");
            window.location='admin.php?step=step-3';
        });
    });
</script>