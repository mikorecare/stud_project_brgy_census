<style>
  .card {
            display: flex;
            width: 85.6mm;
            height: 53.98mm;
            margin: auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            padding:0;
        }

        .top-section {
            display: flex;
            justify-content: space-between;
            padding: 10px 20px 0 20px;
        }

        .top-section img {
            width: 30px; /* Set the width of your logos */
            height: auto;
            border-radius: 50%;
        }

        .middle-title {
            align-self:center;
            height:max-content;
            text-align: center;
            font-size: 8px;
            /* margin: 10px 20px 0 20px; */
        }

        .middle-title span {
            display: block;
        }

        /* .upper-logo {
            width: 100%;
            text-align: center;
            padding: 10px 0;
        }

        .upper-logo img {
            width: 30px; 
            height: auto;
            border-radius: 50%;
        } */

        .profile-image {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
        }

        .card-body {
            padding: 10px;
            display: flex;
            gap:20px;
            flex-direction: row;
            align-items: center;
            justify-content: center;
        }

        .user-info {
            flex-direction:column;
            margin-top: 10px;
            text-align: left;
        }

        .user-info p {
            width:100%;
            margin:0;
            font-size: 10px;
        }

        .user-info .name {
            font-size: 12px;
            font-weight: bold;
        }

        .user-info .email {
            font-size: 10px;
            text-transform:lowercase;
        }

        .user-info .date {
            font-size: 10px;
        }

        .user-info .id {
            font-size: 10px;
            color: #666;
        }
</style>

<div class="">
    <h3 class="mt-4 text-center">Welll Done! <i class="fa-solid fa-check text-success"></i> Your ID Number</h3>
    <hr>
    <div class="card">
    <div class="top-section">
             <div class="upper-logo">
                <img src="./uploads/avatar_0.92839000 1699190373.jpg" alt="Establishment Logo">
            </div>

            <div class="middle-title">
                <span><strong>Republic of the Phillipines</strong></span>
                <span><em>City of Taguig</em></span>
                <span>Barangay South Signal Village</span> 
            </div>
            <div class="upper-logo">
                <img src="./uploads/avatar_0.57507300 1699605675.jpg" alt="Logo"> 
            </div>
        </div>

        <div class="card-body">
            <img class="profile-image" src="./uploads/<?= $userData['avatar']; ?>" alt="Profile Picture">
            <div class="user-info">
                <?php
                $user = $objModel->getViewHistory($userData['user_id']);
                $id = $user['refno'];
                ?>
                <div class="id">Census Number: <?= $id; ?></div>
                <div class="name"><?= ucwords($userData['f_name'] . ' ' .$userData['m_name']. ' ' . $userData['l_name']); ?></div>
                <div class="email"><?= ucwords($userData['email']); ?></div>
                <div class="date">Date Issued: <?= date('Y-m-d'); ?></div>
                <input type="hidden" id="inputId" value="<?= $id; ?>">
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