<style>
    .d-flex.align-items-center.justify-content-center {
        justify-content: space-between !important;
    }
</style>
<div class="container-fluid py-3 pt-5">
	<div class="login">
        <div class="card" id="card-login">
            <div class="login-wrap p-4 p-md-5" style="background: #f0f0c2;">
                <div class="d-flex" style="justify-content:center;">
                    <img src="./uploads/new_logo.jpg" style="border-radius: 50%;" width="90" height="90" class="d-inline-block align-text-to mb-3" />

                    <img src="./uploads/371390322_3693521774305835_6524331513563534201_n.jpg" style="border-radius: 50%;" width="90" height="90" class="d-inline-block align-text-to mb-3" />
                </div>
                <div class="form-group mb-3 text-center">
                    <h4><?= $settingObj->getLogo()['web_title']; ?></h4><br>
                </div>
                <div class="alert alert-danger" role="alert">
                    Account approval may take for up to 72 hours for verification. Thank you for your patience.
                </div>
                <form action="route.php" method="post" class="login-form" enctype="multipart/form-data">
                    <div class="form-group mb-3">
                        <input type="text" style="font-size: 18px;" class="form-control rounded-left text-center" name="fname" placeholder="First Name" oninput="this.value = this.value.toUpperCase()" required>
                    </div>
                    <div class="form-group mb-3">
                        <input type="text" style="font-size: 18px;" class="form-control rounded-left text-center" name="mname" placeholder="Middle Name" oninput="this.value = this.value.toUpperCase()" required>
                    </div>
                    <div class="form-group d-flex mb-3">
                        <input type="text" style="font-size: 18px;" class="form-control rounded-left text-center" name="lname" placeholder="Last Name" oninput="this.value = this.value.toUpperCase()" required>
                    </div>
                    <div class="form-group d-flex mb-3">
                        <input type="text" style="font-size: 18px;" class="form-control rounded-left text-center" name="number" placeholder="Mobile Phone" oninput="this.value = this.value.replace(/[^0-9]/g, '').substring(0, 11)" required>
                    </div>
                    <br>
                    <div class="form-group d-flex mb-3">
                        <input type="email" style="font-size: 18px;" class="form-control rounded-left text-center" name="email" placeholder="Email" required>
                    </div>
                    <div class="form-group d-flex mb-3">
                        <input type="text" style="font-size: 18px;" class="form-control rounded-left text-center" name="username" placeholder="Username" pattern="[a-zA-Z0-9]{6,20}" title="Username must be 6 to 20 characters and alphanumeric" required>
                    </div>
                    <div class="form-group d-flex mb-3 input-container">
                        <input type="password" style="font-size: 18px;" class="form-control rounded-left text-center input-pass" name="confirmpass" placeholder="Confirm Password" pattern="[a-zA-Z0-9]{6,20}" title="Password must be 6 to 20 characters and alphanumeric" required>
                        <span class="icon"><i class="fa-solid fa-eye"></i></span>
                    </div>
                    <div class="form-group d-flex mb-3 input-container">
                        <input type="password" style="font-size: 18px;" class="form-control rounded-left text-center input-pass" name="password" placeholder="Password" pattern="[a-zA-Z0-9]{6,20}" title="Password must be 6 to 20 characters and alphanumeric" required>
                        <span class="icon"><i class="fa-solid fa-eye"></i></span>
                    </div>

                    <div class="form-group flex mb-3 form-control" style="border-radius: 5px; text-align:center">
                        <label style="font-size: 18px;" class="text-center" for="file">Please upload a valid ID</label>
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
                        <br><button type="submit" style="font-size: 18px;" class="form-control btn btn-secondary rounded submit px-3">Create Account</button>
                        <input type="hidden" name="signup" value="<?= uniqid() ?>" />
                    </div>

                    <div class="form-group mb-3 text-center">
                        <br>
                        <p>Already have an account? <strong><a href="index.php">Login Now</a></strong></p>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>