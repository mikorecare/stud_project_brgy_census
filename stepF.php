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
<?php $user = $objModel->getViewHistory($userData['user_id']);
// var_dump($userData);
$educationalAttainment = json_decode($user['education_attainment'],true);
$empRecord =  json_decode($user['emp_record'],true);
$houseOccupants = json_decode($user['house_occupants'],true);
$occupations = json_decode($user['occupations'],true);
$ticket = $objModel->getTicketById($user['user_id']);

// var_dump(empty($ticket));
// $user = json_decode($user);
// var_dump($user['refno']);

?>

<style>
      input{
        text-transform:uppercase;
    }
    span.required {
        color:red;
        font-size:18px;
        font-weight:700;
    }
    .col-md-3, .col-md-4, .col-md-2, .col-md-6{
        display: flex; align-items: center;
    }
    .row {
        display: flex;
        align-items: center; /* Add this line to center items vertically */
        justify-content: space-between; /* Optional: adjust if needed */
        margin-bottom: 10px; /* Optional: adjust if needed */
    }
</style>

    <form action="route.php" method="post" id="myForm" novalidate>
        <div class="card p-2">
            <h2 class="mt-2">Barangay Census Form</h2>
            <div class="alert alert-primary" role="alert">
                 Please fill-out all of the required(<span class="required">*</span>) information or place an <span class="required">'na'</span> if not applicable.
            </div>
            <hr/>
            <div class="car-body">
                <div class="card mb-2">
                <div class="card-header">
                    <strong>Name</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="font-size: 14px; color: blue">
                        <?php if (!empty($ticket)): ?>
                            Pending Approval for change name...
                        <?php else: ?>
                            Incorrect name? Send a request&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <button class="btn btn-primary" type="button" style="border-radius: 5px;" data-bs-toggle="modal" data-bs-target="#changeNameModal">Change name</button>
                        <?php endif; ?>
                    </span>
                </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <input type="text" placeholder="Last Name" class="form-control" name="name[]" value="<?php echo !empty(json_decode($user['names'])[0]) ? json_decode($user['names'])[0] : $userData['l_name']; ?>" disabled required />
                            </div>
                            <div class="col-md-4">
                            
                                <input type="text" placeholder="First Name" class="form-control" name="name[]" value="<?php echo !empty(json_decode($user['names'])[1]) ? json_decode($user['names'])[1] :$userData['f_name']; ?>" disabled required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" placeholder="Middle Name" class="form-control" name="name[]" value="<?php echo !empty(json_decode($user['names'])[2]) ? json_decode($user['names'])[2] : ''; ?>" disabled  required />
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
                            <div class="col-md-3" >
                                <span class="required">*</span>&nbsp<input type="text" placeholder="(House/Block/Lot No.)" class="form-control" name="present_address[]" value="<?php echo !empty(json_decode($user['present_address'])[0]) ? json_decode($user['present_address'])[0] : ''; ?>" required />
                            </div>
                            <div class="col-md-3">
                                <span class="required">*</span>&nbsp<input type="text" placeholder="(ST/Purok/Sitio/Subd)" class="form-control" name="present_address[]" value="<?php echo !empty(json_decode($user['present_address'])[1]) ? json_decode($user['present_address'])[1] : ''; ?>" required />
                            </div>
                            <div class="col-md-3">
                                <span class="required">*</span>&nbsp<input type="text" placeholder="(Barangay)" class="form-control" name="present_address[]" value="<?php echo !empty(json_decode($user['present_address'])[2]) ? json_decode($user['present_address'])[2] : ''; ?>" required />
                            </div>
                            <div class="col-md-3">
                                <span class="required">*</span>&nbsp<input type="text" placeholder="(City/Municipality)" class="form-control" name="present_address[]" value="<?php echo !empty(json_decode($user['present_address'])[3]) ? json_decode($user['present_address'])[3] : ''; ?>" required />
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                        <div class="col-md-4">
                        <span class="required">*</span>&nbsp;&nbsp;&nbsp;
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="Owner" name="present_address[]" id="owner" <?php echo (json_decode($user['present_address'])[4] === 'OWNER') ? 'checked' : ''; ?> required>
                                        <label class="form-check-label" for="owner">
                                            Owner
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="Boarder/Rentee" name="present_address[]" id="boarder_rentee" <?php echo (json_decode($user['present_address'])[4] === 'BOARDER/RENTEE') ? 'checked' : ''; ?> required>
                                        <label class="form-check-label" for="boarder_rentee">
                                            Boarder/Rentee
                                        </label>
                                    </div>
                                </div>
                            <div class="col-md-4">
                                <span class="required">*</span>&nbsp;<input type="text" placeholder="Approx. length of Stay (in years):" class="form-control" name="present_address[]" value="<?php echo !empty(json_decode($user['present_address'])[5]) ? json_decode($user['present_address'])[5] : ''; ?>" oninput="this.value = this.value.replace(/[^0-9]/g, '').substring(0, 3)"  required />
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
                                <span class="required">*</span>&nbsp;<input type="text" placeholder="(House/Block/Lot No.)" class="form-control" name="provincial_address[]" value="<?php echo !empty(json_decode($user['provincial_address'])[0]) ? json_decode($user['provincial_address'])[0] : ''; ?>" required />
                            </div>
                            <div class="col-md-3">
                                <span class="required">*</span>&nbsp;<input type="text" placeholder="(ST/Purok/Sitio/Subd)" class="form-control" name="provincial_address[]" value="<?php echo !empty(json_decode($user['provincial_address'])[1]) ? json_decode($user['provincial_address'])[1] : ''; ?>" required />
                            </div>
                            <div class="col-md-3">
                                <span class="required">*</span>&nbsp;<input type="text" placeholder="(Barangay)" class="form-control" name="provincial_address[]" value="<?php echo !empty(json_decode($user['provincial_address'])[2]) ? json_decode($user['provincial_address'])[2] : ''; ?>" required />
                            </div>
                            <div class="col-md-3">
                                <span class="required">*</span>&nbsp;<input type="text" placeholder="(City/Municipality)" class="form-control" name="provincial_address[]" value="<?php echo !empty(json_decode($user['provincial_address'])[3]) ? json_decode($user['provincial_address'])[3] : ''; ?>" required />
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
                        <span class="required">*</span>&nbsp;&nbsp;&nbsp;
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="SINGLE" name="civil_status" id="single" <?php echo $user['civil_status'] === 'SINGLE' ? 'checked' : ''; ?> required>
                                    <label class="form-check-label" for="single">
                                        Single
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="MARRIED" name="civil_status" id="married" <?php echo $user['civil_status'] === 'MARRIED' ? 'checked' : ''; ?> required>
                                    <label class="form-check-label" for="married">
                                        Married
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="WIDOW/ER" name="civil_status" id="widow_er" <?php echo $user['civil_status'] === 'WIDOW/ER' ? 'checked' : ''; ?> required>
                                    <label class="form-check-label" for="widow_er">
                                        Widow/er
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="SEPARATED" name="civil_status" id="separated" <?php echo $user['civil_status'] === 'SEPARATED' ? 'checked' : ''; ?> required>
                                    <label class="form-check-label" for="separated">
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
                        <span class="required">*</span>&nbsp;&nbsp;&nbsp;
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="FEMALE" name="sex" id="female" <?php echo ($user['sex']) === 'FEMALE' ? 'checked' : ''; ?> required>
                                    <label class="form-check-label" for="female">
                                        Female
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="MALE" name="sex" id="male" <?php echo ($user['sex']) === 'MALE' ? 'checked' : ''; ?> required>
                                    <label class="form-check-label" for="male">
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
                            <span class="required">*</span>&nbsp;
                                <input type="date" class="form-control" name="date_of_birth" value="<?php echo !empty($user['dob']) ? $user['dob'] : ''; ?>" required />
                            </div>
                            <div class="col-md-6">
                            <span class="required">*</span>&nbsp;
                                <input type="text" class="form-control" name="place_of_birth" value="<?php echo !empty($user['place_of_birth']) ? $user['place_of_birth'] : ''; ?>" required />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-2">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-md-4">
                                <strong>Height (in cm)</strong>
                            </div>
                            <div class="col-md-4">
                                <strong>Weight (in kg)</strong>
                            </div>
                            <div class="col-md-4">
                                <strong>Contact Number</strong>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                            <span class="required">*</span>&nbsp;
                                <input type="text" class="form-control" name="height" oninput="this.value = this.value.replace(/[^0-9]/g, '').substring(0, 3)" value="<?php echo !empty($user['height']) ? $user['height'] : ''; ?>" required />
                            </div>
                            <div class="col-md-4">
                            <span class="required">*</span>&nbsp;
                                <input type="text" class="form-control" name="weight" oninput="this.value = this.value.replace(/[^0-9]/g, '').substring(0, 3)" value="<?php echo !empty($user['weight']) ? $user['weight'] : ''; ?>" required />
                            </div>
                            <div class="col-md-4">
                            <span class="required">*</span>&nbsp;
                                <input type="text" class="form-control" name="contactno" oninput="this.value = this.value.replace(/[^0-9]/g, '').substring(0, 11)" value="<?php echo !empty($user['contactno']) ? $user['contactno'] : ''; ?>" required />
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
                                <strong>E-mail Address</strong>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                            <span class="required">*</span>&nbsp;
                                <input type="text" class="form-control" name="religion" value="<?php echo !empty($user['religion']) ? $user['religion'] : ''; ?>" required />
                            </div>
                            <div class="col-md-6">
                            <span class="required">*</span>&nbsp;
                                <input type="email" class="form-control" name="email" value="<?php echo !empty($user['email']) ? $user['email'] : ''; ?>" required />
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
                                &nbsp;<span class="required">*</span>&nbsp;
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school[]" value="<?php echo !empty($educationalAttainment['SCHOOL'][0]) ? $educationalAttainment['SCHOOL'][0] : ''; ?>"  required />
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school_address[]" value="<?php echo !empty($educationalAttainment['SCHOOL_ADDRESS'][0]) ? $educationalAttainment['SCHOOL_ADDRESS'][0] : ''; ?>" required />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2 text-center">
                                <strong>High School</strong>
                                &nbsp;<span class="required">*</span>&nbsp;
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school[]" value="<?php echo !empty($educationalAttainment['SCHOOL'][1]) ? $educationalAttainment['SCHOOL'][1] : ''; ?>" required />
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school_address[]" value="<?php echo !empty($educationalAttainment['SCHOOL_ADDRESS'][1]) ? $educationalAttainment['SCHOOL_ADDRESS'][1] : ''; ?>" required />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2 text-center">
                                <strong>Vocational Course</strong>
                                &nbsp;<span class="required">*</span>&nbsp;
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school[]" value="<?php echo !empty($educationalAttainment['SCHOOL'][2]) ? $educationalAttainment['SCHOOL'][2] : ''; ?>" required />
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school_address[]" value="<?php echo !empty($educationalAttainment['SCHOOL_ADDRESS'][2]) ? $educationalAttainment['SCHOOL_ADDRESS'][2] : ''; ?>" required />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2 text-center">
                                <strong>College/Course</strong>
                                &nbsp;<span class="required">*</span>&nbsp;
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school[]" value="<?php echo !empty($educationalAttainment['SCHOOL'][3]) ? $educationalAttainment['SCHOOL'][3] : ''; ?>" required />
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="school_address[]" value="<?php echo !empty($educationalAttainment['SCHOOL_ADDRESS'][3]) ? $educationalAttainment['SCHOOL_ADDRESS'][3] : ''; ?>" required />
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
                                <strong>Duration</strong>&nbsp;<span class="required">*</span>&nbsp;
                            </div>
                            <div class="col-md-4 text-center">
                                <strong>Name of Company/Employer</strong>&nbsp;<span class="required">*</span>&nbsp;
                            </div>
                            <div class="col-md-4 text-center">
                                <strong>Occupation/Position</strong>&nbsp;<span class="required">*</span>&nbsp;
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="duration[]" value="<?php echo !empty($empRecord['DURATION'][0]) ? $empRecord['DURATION'][0] : ''; ?>"  required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="name_of_emp[]" value="<?php echo !empty($empRecord['NAME_OF_EMP'][0]) ? $empRecord['NAME_OF_EMP'][0] : ''; ?>" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="house_occu[]" value="<?php echo !empty($empRecord['HOUSE_OCCU'][0]) ? $empRecord['HOUSE_OCCU'][0] : ''; ?>" required />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="duration[]" value="<?php echo !empty($empRecord['DURATION'][1]) ? $empRecord['DURATION'][1] : ''; ?>" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="name_of_emp[]" value="<?php echo !empty($empRecord['NAME_OF_EMP'][1]) ? $empRecord['NAME_OF_EMP'][1] : ''; ?>" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="house_occu[]" value="<?php echo !empty($empRecord['HOUSE_OCCU'][1]) ? $empRecord['HOUSE_OCCU'][1] : ''; ?>" required />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="duration[]" value="<?php echo !empty($empRecord['DURATION'][2]) ? $empRecord['DURATION'][2] : ''; ?>" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="name_of_emp[]" value="<?php echo !empty($empRecord['NAME_OF_EMP'][2]) ? $empRecord['NAME_OF_EMP'][2] : ''; ?>" required />
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="house_occu[]" value="<?php echo !empty($empRecord['HOUSE_OCCU'][2]) ? $empRecord['HOUSE_OCCU'][2] : ''; ?>" required />
                            </div>
                        </div>
                    </div>
                </div>



    <div class="card mb-2">
    <div class="card-header">
        <strong>Other House Occupants</strong><span style="font-size:14px;color:#DC3545" > Please fill-out the entire row to prevent miscount</span>
    </div>
    <div class="card-body" id="house-occupants">

        <div class="row mb-2">
            <div class="col-md-2">
                <strong>Name (LN, FN, MI, QLFR)</strong>
            </div>
            <div class="col-md-2">
                <strong>Position in Family</strong>
            </div>
            <div class="col-md-1">
                <strong>Age</strong>
            </div>
            <div class="col-md-2">
                <strong>Birth Date</strong>
            </div>
            <div class="col-md-2">
                <strong>Civil Status</strong>
            </div>
            <div class="col-md-2">
                <strong>Occupation/Company</strong>
            </div>
            <div class="col-md-1">
                -
            </div>
        </div>

        <?php for ($i = 0; $i < count($houseOccupants['HO_NAME']); $i++): ?>
            <div class="row mb-2" id="dynamicRows" >
                <div class="col-md-2">
                    <input type="text" class="form-control" name="ho_name[]" value="<?= !empty($houseOccupants['HO_NAME'][$i]) ? $houseOccupants['HO_NAME'][$i] : ''; ?>">
                </div>
                <div class="col-md-2">
                    <input type="text" class="form-control" name="ho_fam_position[]" value="<?= !empty($houseOccupants['HO_FAM_POSITION'][$i]) ? $houseOccupants['HO_FAM_POSITION'][$i] : ''; ?>">
                </div>
                <div class="col-md-1">
                    <input type="text" class="form-control" name="ho_age[]" oninput="this.value = this.value.replace(/[^0-9]/g, '').substring(0, 3)" value="<?= !empty($houseOccupants['HO_AGE'][$i]) ? $houseOccupants['HO_AGE'][$i] : ''; ?>">
                </div>
                <div class="col-md-2">
                    <input type="date" class="form-control" name="ho_dob[]" value="<?= !empty($houseOccupants['HO_DOB'][$i]) ? $houseOccupants['HO_DOB'][$i] : ''; ?>">
                </div>
                <div class="col-md-2">
                    <div class="form-control">
                        <select style="border:none;width:100%;" name="ho_civil_status[]">
                            <option value="" <?= (empty($houseOccupants['HO_CIVIL_STATUS'][$i]) || $houseOccupants['HO_CIVIL_STATUS'][$i] == '') ? 'selected' : ''; ?>></option>
                            <option value="Single" <?= (!empty($houseOccupants['HO_CIVIL_STATUS'][$i]) && $houseOccupants['HO_CIVIL_STATUS'][$i] == 'SINGLE') ? 'selected' : ''; ?>>Single</option>
                            <option value="Married" <?= (!empty($houseOccupants['HO_CIVIL_STATUS'][$i]) && $houseOccupants['HO_CIVIL_STATUS'][$i] == 'MARRIED') ? 'selected' : ''; ?>>Married</option>
                            <option value="Widow/er" <?= (!empty($houseOccupants['HO_CIVIL_STATUS'][$i]) && $houseOccupants['HO_CIVIL_STATUS'][$i] == 'WIDOW/ER') ? 'selected' : ''; ?>>Widow/er</option>
                            <option value="Separated" <?= (!empty($houseOccupants['HO_CIVIL_STATUS'][$i]) && $houseOccupants['HO_CIVIL_STATUS'][$i] == 'SEPARATED') ? 'selected' : ''; ?>>Separated</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-2">
                    <input type="text" class="form-control" name="ho_occu_company[]" value="<?= !empty($houseOccupants['HO_OCCU_COMPANY'][$i]) ? $houseOccupants['HO_OCCU_COMPANY'][$i] : ''; ?>">
                </div>
                <div class="col-md-1">
                    <button type="button" class="btn btn-danger removeRow"><i class="fa fa-trash"></i></button>
                </div>
            </div>
        <?php endfor; ?>

        <div class="row mb-2 newRow" id="newRowTemplate" style="display: none;">
                <div class="col-md-3">
                    <input type="text" class="form-control" name="ho_name[]" disabled>
                </div>
                <div class="col-md-2">
                    <input type="text" class="form-control" name="ho_fam_position[]" disabled>
                </div>
                <div class="col-md-1">
                    <input type="text" class="form-control" name="ho_age[]" oninput="this.value = this.value.replace(/[^0-9]/g, '').substring(0, 3)" disabled>
                </div>
                <div class="col-md-2">
                    <input type="date" class="form-control" name="ho_dob[]" disabled>
                </div>
                    <div class="col-md-1">
                        <div class="form-control">
                            <select style="border:none;width:100%;" name="ho_civil_status[]" disabled>
                                <option value="" selected></option>
                                <option value="Single">Single</option>
                                <option value="Married">Married</option>
                                <option value="Widow/er">Widow/er</option>
                                <option value="Separated">Separated</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <input type="text" class="form-control" name="ho_occu_company[]" disabled>
                    </div>
                    <div class="col-md-1">
                        <button type="button" class="btn btn-danger removeRow">Remove</button>
                    </div>
                    
                </div>

                <button type="button" id="addButton" class="btn btn-primary">Add New Row</button>
            </div>
        </div>

            <script>
                document.getElementById('addButton').addEventListener('click', function () {
                    addNewRow();
                });

                document.addEventListener('click', function (event) {
                    if (event.target.classList.contains('removeRow')) {
                        event.target.closest('.row').remove();
                    }
                });

                function addNewRow() {
                    const template = document.getElementById('newRowTemplate');
                const dynamicRowsContainer = document.getElementById('house-occupants');

                const newRow = template.cloneNode(true);
                newRow.style.display = 'flex'; 
                newRow.classList.remove('newRow'); 

                newRow.querySelectorAll('input, select').forEach(function (element) {
                    element.removeAttribute('disabled');
                });

                dynamicRowsContainer.insertBefore(newRow, dynamicRowsContainer.lastElementChild);
                }
            </script>



                <div class="card mb-2">
                    <div class="card-header">
                        <strong>Occupations: </strong>
                    </div>

              
                    <div class="card-body">
                        <div class="row">
                        <div class="col-md-3">
                        <span class="required">*</span>&nbsp;&nbsp;&nbsp;
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="EMPLOYED" name="type" id="employed" <?php echo ($occupations['TYPE']) === 'EMPLOYED' ? 'checked' : ''; ?> required>
                                    <label class="form-check-label" for="employed">
                                        Employed
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="UNEMPLOYED" name="type" id="unemployed" <?php echo ($occupations['TYPE']) === 'UNEMPLOYED' ? 'checked' : ''; ?> required>
                                    <label class="form-check-label" for="unemployed">
                                        Unemployed
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-6"></div>
                        </div>
                        

                        <div class="row" style="margin-top:10px;">
                                <div class="col-md-3"  id="jobSelectContainer" style="display: <?php echo ($occupations['TYPE'] === 'EMPLOYED') ? 'flex' : 'none'; ?>;">
                                    <span class="required">*</span>&nbsp;&nbsp;&nbsp;
                                    <div class="form-control">
                                        <select style="border:none;width:100%" name="job_id">
                                        <option class="form-check-input" value="<?= 0; ?>" <?php echo (empty($occupations['JOB_ID']) || $occupations['TYPE'] == 'UNEMPLOYED' ) ? 'selected' : '';  ?> name="job_id">---</option>
                                            <?php foreach ($objModel->getJobs() as $job) : ?>
                                                <option class="form-check-input" value="<?= $job['job_id'] ?>" <?php echo (!empty($occupations['JOB_ID'] == $job['job_id']) && $occupations['TYPE'] == 'EMPLOYED') ? 'selected' : '';  ?> name="job_id"><?= $job['job_title'] ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>

                                <script>
                                    document.querySelectorAll('input[name="type"]').forEach(function (radio) {
                                        radio.addEventListener('change', function () {
                                            document.getElementById('jobSelectContainer').style.display = (this.value === 'EMPLOYED') ? 'flex' : 'none';
                                        });
                                    });
                                </script>              
                            <!-- <div id="custom-size" class="col-md-2 d-flex" style="gap: 3px; align-items: center; justify-content:left;">
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
                            </div> -->
            
                    </div>
                </div>

                
                <?php
                    $total_members = 1; // Assuming there is at least one member

                    for ($i = 0; $i < count($houseOccupants['HO_NAME']); $i++) {
                        // Check if all specified fields in the current sub-array are not empty
                        if (
                            !empty($houseOccupants['HO_NAME'][$i]) &&
                            !empty($houseOccupants['HO_FAM_POSITION'][$i]) &&
                            !empty($houseOccupants['HO_DOB'][$i]) &&
                            !empty($houseOccupants['HO_AGE'][$i]) &&
                            !empty($houseOccupants['HO_CIVIL_STATUS'][$i]) &&
                            !empty($houseOccupants['HO_OCCU_COMPANY'][$i])
                        ) {
                            $total_members += 1;
                        }
                    }
                ?>


                <div class="card mb-4">
                    <div class="card-header">
                        <strong>How Many Family Members: </strong>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-2">
                                <label class="form-check-label" for="flexCheckDefault">
                                    Total Members
                                </label>
                            </div>
                            <div class="col-md-2">
                                <input id="showMemberInput" class="form-control text-center" name="totalMember" value="<?= $total_members ?>" oninput="this.value = this.value.replace(/[^0-9]/g, '').substring(0, 3)" readonly>
                            </div>
                            <div class="col-md-8">
                                <!-- Add any additional content or elements here -->
                            </div>
                        </div>
                        <input type="hidden" name="routeStep1">
                        <input type="hidden" name="refno" value="<?= $user['refno'] ?>">
                        <input type="hidden" id="isSave" name="isSave" value="TRUE">
                    </div>
                </div>



            </div>
        </div>
        <hr>
        <div style="display:flex;justify-content:space-around;gap:20px;padding:20px;">
            <button onclick="setFormAction('save')" type="submit" style="width:500px" class="btn btn-success">SAVE CHANGES&nbsp;&nbsp;&nbsp;<i class="fa fa-save"></i></button>
            <button onclick="setFormAction('next')" type="submit" style="width:500px" class="btn btn-primary">NEXT&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-angle-right"></i></button>
            <script>
                function setFormAction(action) {
                    action == 'save' ? $('#isSave').val('TRUE') : $('#isSave').val('FALSE');
                }
            </script>
        </div>
            

</div>
</form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script>

(function() {
  'use strict';

  window.addEventListener('load', function() {
    var form = document.getElementById('myForm');
    form.addEventListener('submit', function(event) {
        console.log("FORM VALIDITY",form.checkValidity());
      
      if(form.checkValidity()){
        document.querySelectorAll('input[name="name[]"]').forEach(function (name) {
        name.removeAttribute('disabled');
        });
      }

      if (!form.checkValidity()) {
        event.preventDefault();
        event.stopPropagation();
      }
   
      form.classList.add('was-validated');
      
    }, false);
  });
})();

</script>