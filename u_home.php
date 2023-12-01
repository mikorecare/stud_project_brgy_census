<div class="md-stepper-horizontal orange">
    <div class="md-step <?=isset($setp1)?$setp1:'';?>">
        <div class="md-step-circle"><span><i class="fa-solid fa-pen"></i></span></div>
        <div class="md-step-title">Fill-up Form</div>
        <div class="md-step-bar-left"></div>
        <div class="md-step-bar-right"></div>
    </div>
    <div class="md-step <?=isset($setp2)?$setp2:'';?>">
        <div class="md-step-circle"><span><i class="fa-solid fa-suitcase"></i></span></div>
        <div class="md-step-title">Available Jobs</div>
        <div class="md-step-bar-left"></div>
        <div class="md-step-bar-right"></div>
    </div>
    <div class="md-step <?=isset($setp3)?$setp3:'';?>">
        <div class="md-step-circle"><span><i class="fa-solid fa-id-card"></i></span></div>
        <div class="md-step-title">ID</div>
        <div class="md-step-bar-left"></div>
        <div class="md-step-bar-right"></div>
    </div>
</div>

<?php
    $setps=isset($_GET['step']) ? $_GET['step'] : '';

    if($setps=='step-2') {
        include('stepS.php');
        ?>
        <script>
            document.querySelectorAll('.md-step')[0].classList.remove('active');
            document.querySelectorAll('.md-step')[1].classList.add('active');
        </script>        
        <?php
    } else  if($setps=='step-3') {
        include('stepT.php');
        ?>
        <script>
            document.querySelectorAll('.md-step')[1].classList.remove('active');
            document.querySelectorAll('.md-step')[2].classList.add('active');
        </script>        
        <?php
    } else {
        include('stepF.php');
        ?>
        <script>
            document.querySelectorAll('.md-step')[0].classList.add('active');
        </script>        
        <?php
    }
?>