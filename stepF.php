<div class="container-fluid p-3" style="height: 100vh; overflow: scroll;">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">


<!-- <div class="container mt-5">
  <form id="myForm" novalidate>
    <div class="form-group">
      <label for="username">Username</label>
      <input type="text" class="form-control" id="username" name="username" required>
      2
    </div>
    
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" class="form-control" id="password" name="password" required>
      <div class="invalid-feedback">
        Please enter a password.
      </div>
    </div>
    
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div> -->








    <form action="route.php" method="post" id="myForm" novalidate>
        <div class="card p-2">
            <h2 class="mt-2">Barangay Census Form</h2>
            <hr>
            <div class="car-body">
                <div class="card mb-2">
                    <div class="card-header">
                        <strong>Name</strong>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <input type="text" placeholder="Last Name" class="form-control" name="name[]" required />
                                <div class="invalid-feedback">
                                    Please enter Last Name.
                                </div>
                            </div>
                            <div class="col-md-4">
                                <input type="text" placeholder="First Name" class="form-control" name="name[]" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" placeholder="Middle Name" class="form-control" name="name[]" required />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-2">
                    <div class="card-header">
                        <strong>Present Address: </strong>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3">
                                <input type="text" placeholder="(House/Block/Lot No.)" class="form-control" name="present_address[]" required />
                            </div>
                            <div class="col-md-3">
                                <input type="text" placeholder="(ST/Purok/Sitio/Subd)" class="form-control" name="present_address[]" required />
                            </div>
                            <div class="col-md-3">
                                <input type="text" placeholder="(Barangay)" class="form-control" name="present_address[]" required />
                            </div>
                            <div class="col-md-3">
                                <input type="text" placeholder="(City/Municipality)" class="form-control" name="present_address[]" required />
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Owner" name="present_address[]">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Owner
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Boarder/Rentee" name="present_address[]">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Boarder/Rentee
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <input type="text" placeholder="Lenth of Stay:" class="form-control" name="present_address[]" required />
                            </div>
                        </div>
                    </div>
                </div>


                <div class="card mb-2">
                    <div class="card-header">
                        <strong>Provincial Address: </strong>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3">
                                <input type="text" placeholder="(House/Block/Lot No.)" class="form-control" name="provincial_address[]" required />
                            </div>
                            <div class="col-md-3">
                                <input type="text" placeholder="(ST/Purok/Sitio/Subd)" class="form-control" name="provincial_address[]" required />
                            </div>
                            <div class="col-md-3">
                                <input type="text" placeholder="(Barangay)" class="form-control" name="provincial_address[]" required />
                            </div>
                            <div class="col-md-3">
                                <input type="text" placeholder="(City/Municipality)" class="form-control" name="provincial_address[]" required />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-2">
                    <div class="card-header">
                        <strong>Civil Status: </strong>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Single" name="civil_status">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Single
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Married" name="civil_status">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Married
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Widow/er" name="civil_status">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Widow/er
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Separated" name="civil_status">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Separated
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-2">
                    <div class="card-header">
                        <strong>Sex: </strong>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Female" name="sex">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Female
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Male" name="sex">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Male
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-2">
                    <div class="card-header">
                        <div class="row">
                            <div class="col mb-6">
                                <strong>Date of Birth</strong>
                            </div>
                            <div class="col mb-6">
                                <strong>Place of Birth</strong>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <input type="date" class="form-control" name="date_of_birth" required />
                            </div>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="place_of_birth" required />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-2">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-md-4">
                                <strong>Height</strong>
                            </div>
                            <div class="col-md-4">
                                <strong>Weight</strong>
                            </div>
                            <div class="col-md-4">
                                <strong>Contact Number</strong>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="height" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="wieght" required />
                            </div>
                            <div class="col-md-4">
                                <input type="number" class="form-control" name="contactno" required />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-2">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-md-6">
                                <strong>Religion</strong>
                            </div>
                            <div class="col-md-6">
                                <strong>E-Mail Address</strong>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="religion" required />
                            </div>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="email" required />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-2">
                    <div class="card-header">
                        <strong>Education Attainment</strong>
                    </div>
                    <div class="card-body">
                        <div class="row mb-2">
                            <div class="col-md-2 text-center">
                                <strong>Level of Education</strong>
                            </div>
                            <div class="col-md-5 text-center">
                                <strong>School</strong>
                            </div>
                            <div class="col-md-5 text-center">
                                <strong>Address</strong>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2 text-center">
                                <strong>Elementary</strong>
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school[]" required />
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school_address[]" required />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2 text-center">
                                <strong>High School</strong>
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school[]" required />
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school_address[]" required />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2 text-center">
                                <strong>Vocational Course</strong>
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school[]" required />
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school_address[]" required />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2 text-center">
                                <strong>College/Course</strong>
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school[]" required />
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school_address[]" required />
                            </div>
                        </div>
                    </div>
                </div>


                <div class="card mb-2">
                    <div class="card-header">
                        <strong>Employment Record</strong>
                    </div>
                    <div class="card-body">
                        <div class="row mb-2">
                            <div class="col-md-4 text-center">
                                <strong>Duration</strong>
                            </div>
                            <div class="col-md-4 text-center">
                                <strong>Name of Company/Employer</strong>
                            </div>
                            <div class="col-md-4 text-center">
                                <strong>Other Houses Occupants</strong>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="duration[]" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="name_of_emp[]" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="house_occu[]" required />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="duration[]" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="name_of_emp[]" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="house_occu[]" required />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="duration[]" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="name_of_emp[]" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="house_occu[]" required />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-2">
                    <div class="card-header">
                        <strong>Other House Occupants</strong>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-2">
                                <strong>Name</strong>
                                <p>(LN, FN, MI, QLFR)</p>
                            </div>
                            <div class="col-md-2">
                                <strong>Position in Family</strong>
                            </div>
                            <div class="col-md-2">
                                <strong>Age</strong>
                            </div>
                            <div class="col-md-2">
                                <strong>Birth Date (MM/BB/YY)</strong>
                            </div>
                            <div class="col-md-2">
                                <strong>Civil Status</strong>
                            </div>
                            <div class="col-md-2">
                                <strong>Occupation/Company</strong>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_name[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_fam_position[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_age[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_dob[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_civil_status[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_occu_company[]">
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_name[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_fam_position[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_age[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_dob[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_civil_status[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_occu_company[]">
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_name[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_fam_position[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_age[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_dob[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_civil_status[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_occu_company[]">
                            </div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_name[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_fam_position[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_age[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_dob[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_civil_status[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_occu_company[]">
                            </div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_name[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_fam_position[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_age[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_dob[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_civil_status[]">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control" name="ho_occu_company[]">
                            </div>
                        </div>
                    </div>
                </div>


                <div class="card mb-2">
                    <div class="card-header">
                        <strong>Occupations: </strong>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <?php foreach ($objModel->getJobs() as $job) : ?>
                                <div class="col-md-2">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="<?= $job['job_id']; ?>" name="job_id">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            <?= $job['job_title']; ?>
                                        </label>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                            <div id="custom-size" class="col-md-2 d-flex" style="gap: 3px; align-items: center; justify-content:left;">
                                <div class="form-check">
                                    <input id="select_other" class="form-check-input" type="checkbox" value="other">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Other
                                    </label>
                                </div>
                                <script>
                                    select_other.onchange = () => {
                                        $('#showOtherInput').toggleClass('d-none');


                                        if ($('#custom-size').hasClass('col-md-2')) {
                                            $('#custom-size').removeClass('col-md-2')
                                            $('#custom-size').addClass('col-md-4')
                                        } else {
                                            $('#custom-size').removeClass('col-md-4')
                                            $('#custom-size').addClass('col-md-2')
                                        }
                                    }
                                </script>
                                <input type="text" id="showOtherInput" class="form-control d-none" name="other">
                            </div>
                        </div>
                    </div>
                </div>


                <div class="card mb-2">
                    <div class="card-header">
                        <strong>How Many Family Memebers: </strong>
                    </div>
                    <div class="card-body">
                        <div id="custom-member" class="col-md-2 d-flex" style="gap: 3px; align-items: center; justify-content:left;">
                            <div class="form-check">
                                <input id="select_member" class="form-check-input" type="checkbox" value="other">
                                <label class="form-check-label" for="flexCheckDefault">
                                    Total Member
                                </label>
                            </div>
                            <script>
                                select_member.onchange = () => {
                                    $('#showMemberInput').toggleClass('d-none');

                                    if ($('#custom-member').hasClass('col-md-2')) {
                                        $('#custom-member').removeClass('col-md-2')
                                        $('#custom-member').addClass('col-md-4')
                                    } else {
                                        $('#custom-member').removeClass('col-md-4')
                                        $('#custom-member').addClass('col-md-2')
                                    }
                                }
                            </script>
                            <input type="number" id="showMemberInput" class="form-control d-none text-center" name="totalMember">
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <hr>
        <center>
            <input type="hidden" name="routeStep1" value="<?= uniqid() ?>">
            <button type="submit" class="btn btn-primary">NEXT&nbsp;<i class="fa-solid fa-angle-right"></i></button>
        </center>
</div>
</form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';

  window.addEventListener('load', function() {
    var form = document.getElementById('myForm');
    form.addEventListener('submit', function(event) {
      if (!form.checkValidity()) {
        event.preventDefault();
        event.stopPropagation();
      }

      form.classList.add('was-validated');
    }, false);
  });
})();
</script>