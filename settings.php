<div class="container-fluid pt-3">


    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    SETTINGS
                </div>
                <div class="card-body">
                    <form action="route.php" method="post" enctype="multipart/form-data">
                        <div class="mb-3">
                            <center><img src="./uploads/<?= $settingObj->getLogo()['path']; ?>" id="avatarProduct" alt="avatar" width="130" height="130" style="border-radius: 50%;">
                            </center>
                            <label>System Logo:</label>
                            <input class="form-control" id="fileChooser" type="file" name="file" accept="image/png, image/jpeg" style="margin-top: 8px;">
                            <script>
                                fileChooser.onchange = (e) => {
                                    if (e.target.files && e.target.files[0]) {
                                        document.querySelector('#avatarProduct').src = URL.createObjectURL(event.target.files[0]);
                                    }
                                }
                            </script>
                            <br>
                            <label>System Title:</label>
                            <textarea class="form-control" name="web_title" id="" cols="30" rows="5"><?= $settingObj->getLogo()['web_title']; ?></textarea>
                        </div>
                </div>
                <div class="card-footer">
                    <input type="hidden" name="updateLogo" value="<?php echo $settingObj->getLogo()['logo_id'] ?>">
                    <center><button class="btn btn-primary">Submit</button></center>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    System Preview
                </div>
                <div class="card-body">
                    <?php
                    $current_url = $_SERVER['REQUEST_URI'];
                    $url_parts = explode('/', trim($current_url, '/'));
                    ?>
                    <iframe width="100%" height="446px" src="<?= 'http://localhost/' . $url_parts[0] . '/' . $url_parts[1] ?>" frameborder="0"></iframe>
                </div>
            </div>
        </div>
    </div>

</div>