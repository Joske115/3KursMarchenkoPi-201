<?php require_once '../config.php'; ?>
<?php require_once 'logic.php'; ?>
<?php require_once 'header.php'; ?>

<?php

if (isset($_SESSION['id']))
  header("Location: /lr2/");

if (!empty($_POST))
  $logic->check_auth($_POST);

?>

<div class="main py-5">
  <div class="container">
    <div class="row">
      <p class="py-2"><a href="/lr3/signin.php">Домашняя страница</a> &gt; Авторизация </p>
    </div>
    <!-- Форма -->
    <div class="col-md-5 mx-auto">
      <div class="alert alert-danger error-msg d-none"></div>
      <form action="/lr3/signin.php" method="POST">
        <div class="form-group">
          <label for="email">Email (Логин)</label>
          <input type="email" name="email" id="email" value="<?php echo @$_POST['email']; ?>" class="form-control" placeholder="example@example.com" required>
        </div>

        <div class="form-group">
          <label for="password">Пароль</label>
          <input type="password" name="password" id="password" class="form-control" placeholder="Совершенно секретно" required>
        </div>

        <div class="col-md-12 text-center "><br>
          <button type="submit" class="btn btn-block btn-primary tx-tfm register-btn">
            Авторизоваться
          </button>
        </div>
        <div class="form-group">
          <p class="text-center">Нет аккаунта? <a href="/lr3/signup.php">Зарегистрируйте аккаунт</a></p>
        </div>
      </form>

    <?php if (!empty($_POST)): ?>
      <?php if ('ok' === $logic->show_errors_auth()): ?>
        <div class="alert alert-success" role="alert">Вы будете перенаправлены!</div>
      <?php else: ?>
        <div class="alert alert-danger" role="alert"><?php echo $logic->show_errors_auth(); ?></div>
      <?php endif; ?>
    <?php endif; ?>
  </div>
</div>
</div>

<?php require_once 'footer.php'; ?>
