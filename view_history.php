<?php
$user = $objModel->getViewHistoryAdmin(isset($_GET['id']) ? $_GET['id'] : '');
?>

<div class="container-fluid p-3" style="height: 100vh; overflow: scroll;">
    <div class="card p-2">
        <h2 class="mt-2 text-center">View Barangay Census Form</h2>
        <hr>
        <div class="car-body">
            <div class="card mb-2">
                <div class="card-header">
                    <strong>Name</strong>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <input type="text" value="<?= $objModel->parseData($user['names'])[0] ?>" class="form-control" readonly />
                        </div>
                        <div class="col-md-4">
                            <input type="text" value="<?= $objModel->parseData($user['names'])[1] ?>" class="form-control" readonly />
                        </div>
                        <div class="col-md-4">
                            <input type="text" value="<?= $objModel->parseData($user['names'])[2] ?>" class="form-control" readonly />
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
                            <input type="text" value="<?= $objModel->parseData($user['present_address'])[0] ?>" class="form-control" readonly />
                        </div>
                        <div class="col-md-3">
                            <input type="text" value="<?= $objModel->parseData($user['present_address'])[1] ?>" class="form-control" readonly />
                        </div>
                        <div class="col-md-3">
                            <input type="text" value="<?= $objModel->parseData($user['present_address'])[2] ?>" class="form-control" readonly />
                        </div>
                        <div class="col-md-3">
                            <input type="text" value="<?= $objModel->parseData($user['present_address'])[3] ?>" class="form-control" readonly />
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="Owner" <?= $objModel->parseData($user['present_address'])[4] == 'Owner' ? 'checked' : 'disabled'; ?>>
                                <label class="form-check-label" for="flexCheckDefault">
                                    Owner
                                </label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="Boarder/Rentee" <?= $objModel->parseData($user['present_address'])[4] == 'Boarder/Rentee' ? 'checked' : 'disabled'; ?>>
                                <label class="form-check-label" for="flexCheckDefault">
                                    Boarder/Rentee
                                </label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <input type="text" value="<?= $objModel->parseData($user['present_address'])[5] ?>" class="form-control" readonly />
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
                            <input type="text" value="<?= $objModel->parseData($user['provincial_address'])[0] ?>" class="form-control" readonly />
                        </div>
                        <div class="col-md-3">
                            <input type="text" value="<?= $objModel->parseData($user['provincial_address'])[1] ?>" class="form-control" readonly />
                        </div>
                        <div class="col-md-3">
                            <input type="text" value="<?= $objModel->parseData($user['provincial_address'])[2] ?>" class="form-control" readonly />
                        </div>
                        <div class="col-md-3">
                            <input type="text" placeholder="(City/Municipality)" class="form-control" value="<?= $objModel->parseData($user['provincial_address'])[3] ?>" readonly />
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
                                <input class="form-check-input" type="checkbox" value="Single" <?= $user['civil_status'] == 'SINGLE' ? 'checked' : 'disabled'; ?>>
                                <label class="form-check-label" for="flexCheckDefault">
                                    Single
                                </label>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="Married" <?= $user['civil_status'] == 'MARRIED' ? 'checked' : 'disabled'; ?>>
                                <label class="form-check-label" for="flexCheckDefault">
                                    Married
                                </label>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="Widow/er" <?= $user['civil_status'] == 'WIDOW/ER' ? 'checked' : 'disabled'; ?>>
                                <label class="form-check-label" for="flexCheckDefault">
                                    Widow/er
                                </label>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="Separated" <?= $user['civil_status'] == 'SEPARATED' ? 'checked' : 'disabled'; ?>>
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
                                <input class="form-check-input" type="checkbox" value="Female" <?= $user['sex'] == 'FEMALE' ? 'checked' : 'disabled'; ?>>
                                <label class="form-check-label" for="flexCheckDefault">
                                    Female
                                </label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="Male" <?= $user['sex'] == 'MALE' ? 'checked' : 'disabled'; ?>>
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
                            <input type="date" class="form-control" value="<?= $user['dob'] ?>" readonly />
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" value="<?= $user['place_of_birth'] ?>" readonly />
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
                            <input type="text" class="form-control" value="<?= $user['height'] ?>" readonly />
                        </div>
                        <div class="col-md-4">
                            <input type="text" class="form-control" value="<?= $user['height'] ?>" readonly />
                        </div>
                        <div class="col-md-4">
                            <input type="number" class="form-control" value="<?= $user['contactno'] ?>" readonly />
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
                            <input type="text" class="form-control" value="<?= $user['religion'] ?>" readonly />
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" value="<?= $user['email'] ?>" readonly />
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
                            <input type="text" class="form-control" value="<?= $objModel->parseData($user['education_attainment'])->SCHOOL[0] ?>" readonly />
                        </div>
                        <div class="col-md-5">
                            <input type="text" class="form-control" value="<?= $objModel->parseData($user['education_attainment'])->SCHOOL_ADDRESS[0] ?>" readonly />
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-2 text-center">
                            <strong>High School</strong>
                        </div>
                        <div class="col-md-5">
                            <input type="text" class="form-control" value="<?= $objModel->parseData($user['education_attainment'])->SCHOOL[1] ?>" readonly />
                        </div>
                        <div class="col-md-5">
                            <input type="text" class="form-control" value="<?= $objModel->parseData($user['education_attainment'])->SCHOOL_ADDRESS[1] ?>" readonly />
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-2 text-center">
                            <strong>Vocational Course</strong>
                        </div>
                        <div class="col-md-5">
                            <input type="text" class="form-control" value="<?= $objModel->parseData($user['education_attainment'])->SCHOOL[2] ?>" readonly />
                        </div>
                        <div class="col-md-5">
                            <input type="text" class="form-control" value="<?= $objModel->parseData($user['education_attainment'])->SCHOOL_ADDRESS[2] ?>" readonly />
                        </div>
                    </div>

                    <div class="row mb-2">
                        <div class="col-md-2 text-center">
                            <strong>College/Course</strong>
                        </div>
                        <div class="col-md-5">
                            <input type="text" class="form-control" value="<?= $objModel->parseData($user['education_attainment'])->SCHOOL[3] ?>" readonly />
                        </div>
                        <div class="col-md-5">
                            <input type="text" class="form-control" value="<?= $objModel->parseData($user['education_attainment'])->SCHOOL_ADDRESS[3] ?>" readonly />
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
                        <?php $i = 0;
                        foreach ($objModel->parseData($user['emp_record']) as $enpRecord) :

                            if ($i == 0) :
                        ?>

                                <div class="col-md-4">
                                    <input type="text" class="form-control" value="<?= $objModel->parseData($user['emp_record'])->DURATION[$i] ?>" readonly />
                                </div>

                                <div class="col-md-4">
                                    <input type="text" class="form-control" value="<?= $objModel->parseData($user['emp_record'])->NAME_OF_EMP[$i] ?>" readonly />
                                </div>

                                <div class="col-md-4">
                                    <input type="text" class="form-control" value="<?= $objModel->parseData($user['emp_record'])->HOUSE_OCCU[$i] ?>" readonly />
                                </div>
                        <?php
                            endif;
                            $i++;
                        endforeach; ?>
                    </div>
                    <div class="row mb-2">
                        <?php $i = 0;
                        foreach ($objModel->parseData($user['emp_record']) as $enpRecord) :

                            if ($i == 1) :
                        ?>

                                <div class="col-md-4">
                                    <input type="text" class="form-control" value="<?= $objModel->parseData($user['emp_record'])->DURATION[$i] ?>" readonly />
                                </div>

                                <div class="col-md-4">
                                    <input type="text" class="form-control" value="<?= $objModel->parseData($user['emp_record'])->NAME_OF_EMP[$i] ?>" readonly />
                                </div>

                                <div class="col-md-4">
                                    <input type="text" class="form-control" value="<?= $objModel->parseData($user['emp_record'])->HOUSE_OCCU[$i] ?>" readonly />
                                </div>
                        <?php
                            endif;
                            $i++;
                        endforeach; ?>
                    </div>
                    <div class="row mb-2">
                        <?php $i = 0;
                        foreach ($objModel->parseData($user['emp_record']) as $enpRecord) :

                            if ($i == 2) :
                        ?>

                                <div class="col-md-4">
                                    <input type="text" class="form-control" value="<?= $objModel->parseData($user['emp_record'])->DURATION[$i] ?>" readonly />
                                </div>

                                <div class="col-md-4">
                                    <input type="text" class="form-control" value="<?= $objModel->parseData($user['emp_record'])->NAME_OF_EMP[$i] ?>" readonly />
                                </div>

                                <div class="col-md-4">
                                    <input type="text" class="form-control" value="<?= $objModel->parseData($user['emp_record'])->HOUSE_OCCU[$i] ?>" readonly />
                                </div>
                        <?php
                            endif;
                            $i++;
                        endforeach; ?>
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
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_NAME[0] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_FAM_POSITION[0] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_AGE[0] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_DOB[0] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_CIVIL_STATUS[0] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_OCCU_COMPANY[0] ?>">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_NAME[1] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_FAM_POSITION[1] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_AGE[1] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_DOB[1] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_CIVIL_STATUS[1] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_OCCU_COMPANY[1] ?>">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_NAME[2] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_FAM_POSITION[2] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_AGE[2] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_DOB[2] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_CIVIL_STATUS[2] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_OCCU_COMPANY[2] ?>">
                        </div>
                    </div>

                    <div class="row mb-2">
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_NAME[3] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_FAM_POSITION[3] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_AGE[3] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_DOB[3] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_CIVIL_STATUS[3] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_OCCU_COMPANY[3] ?>">
                        </div>
                    </div>

                    <div class="row mb-2">
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_NAME[4] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_FAM_POSITION[4] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_AGE[4] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_DOB[4] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_CIVIL_STATUS[4] ?>">
                        </div>
                        <div class="col-md-2">
                            <input readonly type="text" class="form-control" value="<?= $objModel->parseData($user['house_occupants'])->HO_OCCU_COMPANY[4] ?>">
                        </div>
                    </div>
                </div>
            </div>

            <div class="card mb-2">
                <div class="card-header">
                    <strong>Occupations: </strong>
                </div>
                <div class="card-body">

                    <?php foreach ($objModel->getJobs() as $job) : ?>
                        <?php if ($objModel->parseData($user['occupations'])->JOB_ID == $job['job_id']) : ?>
                            <div class="form-check">
                                <input class="form-check-input" checked type="checkbox">
                                <label class="form-check-label" for="flexCheckDefault">
                                    <?= $job['job_title']; ?>
                                </label>
                            </div>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </div>
            </div>

            <div class="card mb-2">
                    <div class="card-header">
                        <strong>How Many Family Memebers: </strong>
                    </div>
                    <div class="card-body">
                        <div id="custom-member" class="col-md-2 d-flex" style="gap: 3px; align-items: center; justify-content:left;">
                            <div class="form-check">
                                <input id="select_member" class="form-check-input" type="checkbox" readonly checked>
                                <label class="form-check-label" for="flexCheckDefault">
                                    Total Member
                                </label>
                            </div>
                            <input type="number" class="form-control text-center" value="<?=$user['total_members']?>" readonly>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>
</div>
</div>