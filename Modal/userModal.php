<div class="modal fade" id="userModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="userModalLabel">User Form</h5>
        <button onclick="window.location='<?= $modalRoute ?>'" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="route.php" method="post" enctype="multipart/form-data">
          <div class="mb-3">
            <center><img src="<?= isset($userData['avatar']) ? './uploads/' . $userData['avatar'] : 'css/account.png' ?>" id="avatarProduct" alt="avatar" width="130" height="130" style="border-radius: 50%;">
            </center>
            <input class="form-control" id="fileChooser" type="file" name="file" accept="image/png, image/jpeg" style="margin-top: 8px;" <?= isset($userData['user_id']) ? '' : 'required' ?>>
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
            <input type="text" id="fName" name="fName" class="form-control" required value="<?= isset($userData['f_name']) ? $userData['f_name'] : '' ?>" />
          </div>
          <div class="mb-3">
            <label for="lName" class="form-label">Last Name</label>
            <input type="text" id="lName" name="lName" class="form-control" required value="<?= isset($userData['l_name']) ? $userData['l_name'] : '' ?>" />
          </div>
          <div class="mb-3">
            <label for="uName" class="form-label">Username</label>
            <input type="text" id="uName" name="username" class="form-control" required value="<?= isset($userData['username']) ? $userData['username'] : '' ?>" />
          </div>


          <div class="mb-3">
            <label for="uName" class="form-label">Email</label>
            <input type="email" id="uName" name="email" class="form-control" required value="<?= isset($userData['email']) ? $userData['email'] : '' ?>" />
          </div>
          <div class="mb-3">
            <label for="uName" class="form-label">Phone</label>
            <input type="number" id="uName" name="phone" class="form-control" required value="<?= isset($userData['phone']) ? $userData['phone'] : '' ?>" />
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
        <button type="button" onclick="window.location='<?=$modalRoute;?>'" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Submit</button>
        <input type="hidden" name="manageUser" value="<?= uniqid(); ?>" />
        <input type="hidden" name="id" value="<?= isset($userData['user_id']) ? $userData['user_id'] : '' ?>" />
        </form>
      </div>
    </div>
  </div>
</div>