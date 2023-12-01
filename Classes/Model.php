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
                $arr[$year][] = (INTEGER) $row['total_members'];
            }

            return json_encode($arr);
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

    public function getDataAnalizeJobs()
    {
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_census");
            $stmt->execute();
            $arr = array();
            $listData = array();

            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $arr[] = json_decode($row['occupations']);
            }

            foreach ($arr as $value) {
                if (!empty($value->job_id)) {
                    $listData[$value->job_id][] = $value->job_id;
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

    public function saveDataFroms($code, $data, $user_id)
    {

        $educ_attainment = [
            'school'        => $data['school'],
            'school_address' => $data['school_address']
        ];

        $empRecrod = [
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
            'job_id' => isset($data['job_id']) ? $data['job_id'] : 0,
            'other' => $data['other']
        ];

        try {
            $stmt = $this->conn->prepare("INSERT INTO tbl_census (refno, user_id, names, present_address, provincial_address, civil_status, sex, dob, place_of_birth, height, weight, contactno, religion, email, education_attainment, emp_record, house_occupants, occupations, total_members) VALUES (:refno, :user_id, :names, :present_address, :provincial_address, :civil_status, :sex, :dob, :place_of_birth, :height, :weight, :contactno, :religion, :email, :education_attainment, :emp_record, :house_occupants, :occupations, :total_members)");


            $stmt->execute([
                "refno"                => $code,
                "user_id"              => $user_id,
                'names'                => json_encode($data['name']),
                'present_address'      => json_encode($data['present_address']),
                'provincial_address'   => json_encode($data['provincial_address']),
                'civil_status'         => $data['civil_status'],
                'sex'                  => $data['sex'],
                'dob'                  => $data['date_of_birth'],
                'place_of_birth'       => $data['place_of_birth'],
                'height'               => $data['height'],
                'weight'               => $data['wieght'],
                'contactno'            => $data['contactno'],
                'religion'             => $data['religion'],
                'email'                => $data['email'],
                'education_attainment' => json_encode($educ_attainment),
                'emp_record'           => json_encode($empRecrod),
                'house_occupants'      => json_encode($house_occupants),
                'occupations'          => json_encode($jobs),
                'total_members'        => $data['totalMember']
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

    public function getViewHistory($id)
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

    public function parseData($data)
    {
        return json_decode($data);
    }
}
