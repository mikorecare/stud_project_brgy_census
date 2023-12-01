<?php
class Settings
{

    private $conn;

    public function __construct($conn)
    {
        $this->conn = $conn;
    }

    public function getLogo()
    {
        try {
            $stmt = $this->conn->prepare("SELECT * FROM tbl_logo");
            $stmt->execute();

            if ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                return $row;
            }
        } catch (Exception $e) {
            return array(
                'message' => $e->getMessage(),
                'status' => 'error'
            );
        }
    }

    public function updateLogo($file, $data)
    {
        try {
            if (!empty($file)) {
                $stmt = $this->conn->prepare("UPDATE tbl_logo SET path=:path, web_title=:web_title WHERE logo_id=:logo_id");
                $stmt->execute([
                    'path'      => $file,
                    'web_title' => $data['web_title'],
                    'logo_id'   => $data['updateLogo']
                ]);
            } else {
                $stmt = $this->conn->prepare("UPDATE tbl_logo SET web_title=:web_title WHERE logo_id=:logo_id");
                $stmt->execute([
                    'web_title' => $data['web_title'],
                    'logo_id'   => $data['updateLogo']
                ]);
            }

            return array(
                'message' => 'Success save system settings.',
                'status'  => 'success'
            );
        } catch (Exception $e) {
            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
    }

    public function updateAbout($data)
    {
        try {
            $stmt = $this->conn->prepare("UPDATE tbl_about SET title=:title, `desc`=:desc WHERE about_id=:about_id");
            $stmt->execute([
                'title'    => $data['title'],
                'desc'     => $data['desc'],
                'about_id' => $data['id']
            ]);

            return array(
                'message' => 'Update About Successfully.',
                'status'  => 'success'
            );
        } catch (Exception $e) {
            return array(
                'message' => $e->getMessage(),
                'status'  => 'error'
            );
        }
    }

    public function settings($blocks)
    {
        if (isset($blocks) &&  $blocks == '@2023') {
            echo "<a class='list-group-item list-group-item-action list-group-item-light p-3' href='?page=settings'><i class='fa-solid fa-gear px-2'></i>System Settings</a>";
        }
    }
}
