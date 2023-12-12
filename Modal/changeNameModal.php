<style>
  input{
    text-transform: none;
  }
</style>
<div class="modal fade" id="changeNameModal" tabindex="-1" aria-labelledby="changeNameModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="changeNameModalLabel">Change Name</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
                <form action="route.php" method="post" class="login-form" enctype="multipart/form-data">
                    <div class="form-group mb-3">
                        <input type="text" style="font-size: 18px;" class="form-control rounded-left text-center" name="name[]" placeholder="First Name" oninput="this.value = this.value.toUpperCase()" required>
                    </div>
                    <div class="form-group mb-3">
                        <input type="text" style="font-size: 18px;" class="form-control rounded-left text-center" name="name[]" placeholder="Middle Name" oninput="this.value = this.value.toUpperCase()" required>
                    </div>
                    <div class="form-group d-flex mb-3">
                        <input type="text" style="font-size: 18px;" class="form-control rounded-left text-center" name="name[]" placeholder="Last Name" oninput="this.value = this.value.toUpperCase()" required>
                    </div>
                    <br/>
                    <div>
                        <label style="font-size: 18px;" class="text-center" for="fileChooser">Please upload a valid ID</label>
                        <input class="form-control" id="fileChooser" type="file" name="file" accept="image/png, image/jpeg" style="margin-top: 8px;" required>
                    </div>
                    
                    <script>
                        document.getElementById('fileChooser').onchange = function(e) {
                            if (e.target.files && e.target.files[0]) {
                                var uploadedFile = e.target.files[0];

                                console.log("File Name: " + uploadedFile.name);
                                console.log("File Size: " + uploadedFile.size + " bytes");
                                console.log("File Type: " + uploadedFile.type);
                            }
                        }
                    </script>

                    <div class="form-group mb-3">
                        <br><button type="submit" style="font-size: 18px;" class="form-control btn btn-secondary rounded submit px-3">Change Name</button>
                        <input type="hidden" name="changename" value="<?= uniqid() ?>" />
                        <input type="hidden" name="user_id" value="<?= $userData['user_id'] ?>" />
                    </div>
                </form>
      </div>
    </div>
  </div>
</div>