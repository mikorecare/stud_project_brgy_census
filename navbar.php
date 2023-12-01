<style>
  @media(max-width: 768px) {
    .mobile-nav {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      font-size: 21px;
    }
  }
</style>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <div class="mobile-nav">
      <a href="index.php"><img src="./uploads/<?= $settingObj->getLogo()['path']; ?>" style="border-radius: 50%;" width="50" height="50" class="d-inline-block align-text-to mb-2 mr-2" /></a>
      <span class="text-muted"><?= $settingObj->getLogo()['web_title']; ?></span>
    </div>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">

        </li>
      </ul>
    </div>
  </div>
</nav>