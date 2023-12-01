<!-- <?php $profile = $loginObj->showProfile(
        isset($_SESSION['user_id']) ? $_SESSION['user_id'] : ''
      );
      ?> -->
<div class="modal fade" id="changePassModal" tabindex="-1" aria-labelledby="changePassModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="changePassModalLabel">Update Profile</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="route.php" method="post" enctype="multipart/form-data">
          <div class="mb-3">
            <center><img src="css/account.png" id="avatarProduct" alt="avatar" width="130" height="130" style="border-radius: 50%;">
            </center>
            <input class="form-control" id="fileChooser" type="file" name="file" accept="image/png, image/jpeg" style="margin-top: 8px;">
            <script>
              fileChooser.onchange = (e) => {
                if (e.target.files && e.target.files[0]) {
                  document.querySelector('#avatarProduct').src = URL.createObjectURL(event.target.files[0]);
                }
              }
            </script>
          </div>
          <div class="mb-3">
            <label for="fName" class="form-label">First Name</label>
            <input type="text" id="fName" name="fName" value="<?= $profile['f_name']; ?>" class="form-control" required />
          </div>
          <div class="mb-3">
            <label for="lName" class="form-label">Last Name</label>
            <input type="text" id="lName" name="lName" value="<?= $profile['l_name']; ?>" class="form-control" required />
          </div>
          <div class="mb-3">
            <label for="uName" class="form-label">Username</label>
            <input type="text" id="uName" name="username" value="<?= $profile['username']; ?>" class="form-control" required />
          </div>
          <div class="mb-3">
            <label for="uName" class="form-label">Email</label>
            <input type="email" id="uName" name="email" value="<?= $profile['email']; ?>" class="form-control" required />
          </div>
          <div class="mb-3">
            <label for="uName" class="form-label">Phone</label>
            <input type="number" id="uName" name="phone" value="<?= $profile['phone']; ?>" class="form-control" required />
          </div>
          <br>
          <label for="nPass" class="form-label">New Password</label>
          <div class="mb-3 input-container">
            <input type="password" name="newPassword" class="form-control rounded-left text-center input-pass" required>
            <span class="icon"><i class="fa-solid fa-eye"></i></span>
          </div>

          <label for="nPass" class="form-label">Confirm Password</label>
          <div class="mb-3 input-container">
            <input type="password" name="cPassword" class="form-control rounded-left text-center input-pass" required>
            <span class="icon"><i class="fa-solid fa-eye"></i></span>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Update Account</button>
        <input type="hidden" name="updateAccount" value="<?= uniqid(); ?>" />
        <input type="hidden" name="id" value="<?php echo $profile['user_id']; ?>" />
        </form>
      </div>
    </div>
  </div>
</div>