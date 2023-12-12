<?php
class Model
{

    private $conn;

    public function __construct($conn)
    {
        $this->conn = $conn;
    }

    public function getTotalPopulation()
    {
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_census ORDER BY form_id DESC");
            $stmt->execute();
            $arr = array();
    
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $year = date('Y', strtotime($row['form_date_created']));
    
                if (!isset($arr[$year])) {
                    $arr[$year] = 0;
                }
    
                $arr[$year] += (int)$row['total_members'];
            }
            return $arr; // Return the associative array directly
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function getJobsAnalytics()
    {
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_jobs ORDER BY job_id DESC");
            $stmt->execute();
            $arr = array();

            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $arr[] = $row;
            }

            return $arr;
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function getDataAnalizeOtherJobs()
    {
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_census");
            $stmt->execute();
            $arr = array();
            $count = 0;

            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $arr[] = json_decode($row['occupations']);
            }

            foreach ($arr as $value) {
                if (!empty($value->other)) {
                    $count++;
                }
            }

            echo json_encode($count);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function getDataAnalizeJobs($year)
        {
            try {
                // Construct the SQL query with a WHERE clause to filter by year
                $sql = "SELECT * FROM tbl_census WHERE YEAR(form_date_created) = :year";
                $stmt = $this->conn->prepare($sql);
                $stmt->bindParam(':year', $year, PDO::PARAM_INT);
                $stmt->execute();

                $arr = array();
                $listData = array();

                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    $arr[] = json_decode($row['occupations']);
                }

                foreach ($arr as $value) {
                    if (!empty($value->JOB_ID)) {
                        $listData[$value->JOB_ID][] = $value->JOB_ID;
                    }
                }

                return json_encode($listData);
            } catch (Exception $e) {
                die($e->getMessage());
            }
        }

        public function getUniqueYears()
        {
            try {
                $stmt = $this->conn->prepare("SELECT DISTINCT YEAR(form_date_created) AS year FROM tbl_census");
                $stmt->execute();
                $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

                return json_encode(array_column($result, 'year'));
            } catch (Exception $e) {
                die($e->getMessage());
            }
        }

        public function getEmploymentRate($year)
        {
            try {
                $stmt = $this->conn->prepare("SELECT * FROM tbl_census WHERE YEAR(form_date_created) = :year");
                $stmt->bindParam(':year', $year, PDO::PARAM_INT);
                $stmt->execute();
        
                $arr = array();
                $listData = array();
        
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    $arr[] = json_decode($row['occupations']);
                }
        
                foreach ($arr as $value) {
                    if (!empty($value->TYPE)) {
                        $listData[$value->TYPE][] = $value->TYPE;
                    }
                }
        
                return json_encode($listData);
            } catch (Exception $e) {
                die($e->getMessage());
            }
        }

    public function destroyJob($id)
    {
        try {
            $stmt = $this->conn->prepare("DELETE FROM tbl_jobs WHERE job_id=:job_id");
            $stmt->execute([
                'job_id' => $id
            ]);

            return array(
                'message' => 'Success remove data.',
                'status' => 'success'
            );
        } catch (Exception $e) {

            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
    }

    public function getJobs()
    {
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_jobs ORDER BY job_title ASC");
            $stmt->execute();
            $arr = array();

            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $arr[] = $row;
            }

            return $arr;
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function saveJobs($data)
    {
        try {
            $x = 0;

            foreach ($data['id_jobs'] as $id) {
                $stmt = $this->conn->prepare("UPDATE tbl_jobs SET job_title=:job_title WHERE job_id=:job_id");

                $stmt->execute([
                    'job_title' => $data['job_title'][$x],
                    'job_id'    =>  $id
                ]);

                $x++;
            }


            return array(
                'message' => 'Success updated job.',
                'status'  => 'success'
            );
        } catch (Exception $e) {

            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
    }

    public function addJobs($data)
    {
        try {
            $stmt = $this->conn->prepare("INSERT INTO tbl_jobs (job_title, create_job_date) VALUES (UPPER(?), CURDATE());");
    
            $stmt->execute([$data]);
    
            return [
                'message' => 'Success added job.',
                'status'  => 'success',
            ];
        } catch (Exception $e) {
            return [
                'message' => $e->getMessage(),
                'status'  => 'error',
            ];
        }
    }
    

    public function saveDataFroms($code, $data, $user_id)
    {
        

        $educ_attainment = [
            'school'        => $data['school'],
            'school_address' => $data['school_address']
        ];

        $empRecord = [
            'duration'    => $data['duration'],
            'name_of_emp' => $data['name_of_emp'],
            'house_occu'  => $data['house_occu']
        ];

        $house_occupants = [
            'ho_name'         => $data['ho_name'],
            'ho_fam_position' => $data['ho_fam_position'],
            'ho_age'          => $data['ho_age'],
            'ho_dob'          => $data['ho_dob'],
            'ho_civil_status' => $data['ho_civil_status'],
            'ho_occu_company' => $data['ho_occu_company']
        ];

        $jobs = [
            'type' => isset($data['type']) ? $data['type'] : "0",
            'job_id' => isset($data['job_id']) ? $data['job_id'] : "0"
        ];

        try {
            $stmt = $this->conn->prepare("INSERT INTO tbl_census (refno, user_id, names, present_address, provincial_address, civil_status, sex, dob, place_of_birth, height, weight, contactno, religion, email, education_attainment, emp_record, house_occupants, occupations, total_members) VALUES (:refno, :user_id, :names, :present_address, :provincial_address, :civil_status, :sex, :dob, :place_of_birth, :height, :weight, :contactno, :religion, :email, :education_attainment, :emp_record, :house_occupants, :occupations, :total_members)");


            $stmt->execute([
                "refno"                => $code,
                "user_id"              => $user_id,
                'names'                => strtoupper(json_encode($data['name'])),
                'present_address'      => strtoupper(json_encode($data['present_address'])),
                'provincial_address'   => strtoupper(json_encode($data['provincial_address'])),
                'civil_status'         => strtoupper($data['civil_status']),
                'sex'                  => strtoupper($data['sex']),
                'dob'                  => strtoupper($data['date_of_birth']),
                'place_of_birth'       => strtoupper($data['place_of_birth']),
                'height'               => strtoupper($data['height']),
                'weight'               => strtoupper($data['weight']),
                'contactno'            => strtoupper($data['contactno']),
                'religion'             => strtoupper($data['religion']),
                'email'                => strtoupper($data['email']),
                'education_attainment' => strtoupper(json_encode($educ_attainment)),
                'emp_record'           => strtoupper(json_encode($empRecord)),
                'house_occupants'      => strtoupper(json_encode($house_occupants)),
                'occupations'          => strtoupper(json_encode($jobs)),
                'total_members'        => strtoupper($data['totalMember']),
            ]);

            return array(
                'message' => 'Success save data.',
                'status'  => 'success'
            );
        } catch (Exception $e) {

            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
    }

    public function updateData($form_id, $data)
    {
    $educ_attainment = [
        'school'        => $data['school'],
        'school_address' => $data['school_address']
    ];

    $empRecord = [
        'duration'    => $data['duration'],
        'name_of_emp' => $data['name_of_emp'],
        'house_occu'  => $data['house_occu']
    ];

    $houseOccupants = [
        'ho_name'         => $data['ho_name'],
        'ho_fam_position' => $data['ho_fam_position'],
        'ho_age'          => $data['ho_age'],
        'ho_dob'          => $data['ho_dob'],
        'ho_civil_status' => $data['ho_civil_status'],
        'ho_occu_company' => $data['ho_occu_company']
    ];

    $jobs = [
        'type' => $data['type'],
        'job_id' => isset($data['job_id']) ? $data['job_id'] : 0
    ];

    try {
        $stmt = $this->conn->prepare("UPDATE tbl_census SET 
                                        names = :names,
                                        present_address = :present_address,
                                        provincial_address = :provincial_address,
                                        civil_status = :civil_status,
                                        sex = :sex,
                                        dob = :dob,
                                        place_of_birth = :place_of_birth,
                                        height = :height,
                                        weight = :weight,
                                        contactno = :contactno,
                                        religion = :religion,
                                        email = :email,
                                        education_attainment = :education_attainment,
                                        emp_record = :emp_record,
                                        house_occupants = :house_occupants,
                                        occupations = :occupations,
                                        total_members = :total_members
                                      WHERE form_id = :form_id");

        $stmt->execute([
            'names'                => strtoupper(json_encode($data['name'])),
            'present_address'      => strtoupper(json_encode($data['present_address'])),
            'provincial_address'   => strtoupper(json_encode($data['provincial_address'])),
            'civil_status'         => strtoupper($data['civil_status']),
            'sex'                  => strtoupper($data['sex']),
            'dob'                  => strtoupper($data['date_of_birth']),
            'place_of_birth'       => strtoupper($data['place_of_birth']),
            'height'               => strtoupper($data['height']),
            'weight'               => strtoupper($data['weight']),
            'contactno'            => strtoupper($data['contactno']),
            'religion'             => strtoupper($data['religion']),
            'email'                => strtoupper($data['email']),
            'education_attainment' => strtoupper(json_encode($educ_attainment)),
            'emp_record'           => strtoupper(json_encode($empRecord)),
            'house_occupants'      => strtoupper(json_encode($houseOccupants)),
            'occupations'          => strtoupper(json_encode($jobs)),
            'total_members'        => strtoupper($data['totalMember']),
            'form_id'              => $form_id
        ]);

        

        return array(
            'message' => 'Successfully updated data.',
            'status'  => 'success'
        );
    } catch (Exception $e) {

        return array(
            'message' => $e->getMessage(),
            'status'  => 'error'
        );
    }
}



    public function getHistory()
    {
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_census ORDER BY form_id DESC");
            $stmt->execute();
            $arr = array();

            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $arr[] = $row;
            }

            return $arr;
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function getViewHistoryAdmin($id)
    {
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_census WHERE form_id=$id");
            $stmt->execute();
            if ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
                return $result;
            }
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function getViewHistory($id)
{
    try {
        $stmt = $this->conn->prepare("SELECT * FROM tbl_census WHERE user_id = :user_id ORDER BY form_date_created DESC LIMIT 1");
        $stmt->bindParam(':user_id', $id, PDO::PARAM_INT);
        $stmt->execute();

        if ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
            return $result;
        }
    } catch (Exception $e) {
        die($e->getMessage());
    }
}

    
    public function getTicket()
    {
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_name_change WHERE t_status=0");
            $stmt->execute();
            $arr = array();

            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $arr[] = $row;
            }

            return $arr;
        } catch (Exception $e) {
            return array(
                'message' => $e->getMessage(),
                'status' => 'error'
            );
        }
    }

    public function getTicketById($id)
        {
            try {
                $stmt = $this->conn->prepare("SELECT * FROM tbl_name_change WHERE user_id = :user_id");
                $stmt->execute([
                    'user_id' => $id
                ]);

                $arr = array();

                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    $arr[] = $row;
                }

                return $arr;
            } catch (Exception $e) {
                return array(
                    'message' => $e->getMessage(),
                    'status' => 'error'
                );
            }
        }
    
        
    public function getTicketCount()
    {
        try {
            $stmt = $this->conn->prepare("SELECT COUNT(*) as document_count FROM tbl_name_change WHERE t_status = 0");
            $stmt->execute();
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
            return $result['document_count'];
        } catch (Exception $e) {
            return array(
                'message' => $e->getMessage(),
                'status' => 'error'
            );
        }
    }

    public function changeName($data,$image){
        $fileUpload = '';
        if ($image['file']['size'] > 0) {   
            $fileUpload = upload($image['file'], false);
            if ($fileUpload['status'] == 'success') {

                try {
                    $stmt = $this->conn->prepare("INSERT INTO tbl_name_change (user_id, names, t_status ,id_url) VALUES (:user_id, :names, :t_status , :id_url)");
                    $stmt->execute([
                        'user_id' => $data['user_id'],
                        'names' => strtoupper(json_encode($data['name'])),
                        't_status'=> 0,
                        'id_url' => $fileUpload['avatar']
                    ]);

                    return array(
                        'message' => 'Successully Sign Up.',
                        'status'  => 'success'
                    );
                } catch (Exception $e) {
        
                    return array(
                        'message' => $e->getMessage(),
                        'status'  => 'error'
                    );
                }
            } else {
                return array(
                    'message' => 'Please upload a valid image file',
                    'status'  => 'failed'
                );
            }
            die();
        }else {
            return array(
                'message' => 'Please upload an id',
                'status'  => 'failed'
            );
        }  
    }

    public function onApprovalName($id, $status,$names)
    {
        try {
            $newNames = array(json_decode($names)[2],json_decode($names)[0],json_decode($names)[1]);
            $stmt = $this->conn->prepare("UPDATE tbl_user SET l_name = :l_name, f_name = :f_name, m_name = :m_name WHERE user_id = :user_id");
            $stmt->execute([
                'user_id' => $id,
                'l_name' => json_decode($names)[2],
                'f_name' => json_decode($names)[0],
                'm_name' => json_decode($names)[1],
            ]);
            $stmt = $this->conn->prepare("UPDATE tbl_census SET names = :names WHERE user_id = :user_id");
            $stmt->execute([
                'user_id' => $id,
                'names' => json_encode($newNames)
            ]);
            $stmt = $this->conn->prepare("DELETE FROM tbl_name_change WHERE user_id = :user_id");
            $stmt->execute([
                'user_id' => $id,
            ]);
            
            return array(
                'message' => 'Success save user status.',
                'status' => 'success'
            );
        } catch (Exception $e) {

            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
        
    }

    public function parseData($data)
    {
        return json_decode($data);
    }
}
