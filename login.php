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
					<h4><?= $settingObj->getLogo()['web_title']; ?></h4>

					<h6>Census Login</h6>
				</div>
				
				<form action="route.php" method="post" class="login-form">
					<div class="form-group mb-3">
						<input type="text" style="font-size: 18px;" class="form-control rounded-left text-center" name="username" placeholder="Username" required>
					</div>
					<div class="form-group d-flex mb-3 input-container">
						<input type="password" style="font-size: 18px;" class="form-control rounded-left text-center input-pass" name="password" placeholder="Password" required>
						<span class="icon"><i class="fa-regular fa-eye"></i></span>
					</div>
					<div class="form-group mb-3 text-center">
						<br>
						<p><strong><a href="?page=forgot_password">Forgot Password</a></strong></p>
					</div>
					<div class="form-group mb-3">
						<br><button type="submit" style="font-size: 18px;" class="form-control btn btn-secondary rounded submit px-3">Login</button>
						<input type="hidden" name="login" value="<?= uniqid() ?>" />
					</div>
					<div class="form-group mb-3 text-center">
						<br>
						<p>Do you have an account? <strong><a href="?page=signup">Create Account</a></strong></p>
					</div>
				</form>

				<!-- <button class="send-email-tester" type="button" onclick="send()"></button> -->
			</div>
		</div>
	</div>
</div>

<script>
	function send(){
		window.location = 'route.php?sendEmail=test';
	}
</script>