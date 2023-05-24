<?php require_once '../config.php'; ?>
<?php require_once 'logic.php'; ?>
<?php require_once 'header.php'; ?>

<?php

ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

if (isset($_SESSION['id']))
  header("Location: /lr2/");

if (!empty($_POST))
  $logic->check_reg($_POST);

?>

<div class="main py-5">
  <div class="container">
    <div class="row">
      <p class="py-2"><a href="/lr3/signup.php">Домашняя страница</a> &gt; Создание аккаунта </p>
    </div>
    <!-- Форма -->
    <div class="col-md-5 mx-auto">
      <div class="alert alert-danger error-msg d-none"></div>
      <form action="/lr3/signup.php" method="POST">
        <input type="hidden" name="action" value="signup">
        <div class="form-group">
          <label for="email">Email (Логин)</label>
          <input type="email" name="email" id="email" value="<?php echo @$_POST['email']; ?>" class="form-control" placeholder="example@example.com" required>
        </div>
        <div class="form-group">
          <label for="full_name">ФИО</label>
          <input type="text" name="full_name" id="full_name" value="<?php echo @$_POST['full_name']; ?>" class="form-control" placeholder="Иванов Иван Иванович" required>
        </div>
        <div class="form-group">
          <label for="date">Дата рождения</label>
          <input type="date" name="date" id="date" value="<?php echo @$_POST['date']; ?>" class="form-control" placeholder="22.06.2023" required>
        </div>
        <div class="form-group">
          <label for="sex">Пол</label>
          <select name="sex" id="sex" class="form-control" required>
            <option value="1">Мужской</option>
            <option value="2">Женский</option>
          </select>
        </div>
        <div class="form-group">
          <label for="inter">Интересы</label>
          <textarea name="inter" id="inter" class="form-control" required>
            <?php echo @trim($_POST['inter']); ?>
          </textarea>
        </div>
        <div class="form-group">
          <label for="blood_type">Группа крови</label>
          <select name="blood_type" id="blood_type" class="form-control" required>
            <option value="1">0 (I)</option>
            <option value="2">A (II)</option>
            <option value="3">B (III)</option>
            <option value="4">AB (IV)</option>
          </select>
        </div>
        <div class="form-group">
          <label for="factor">Резус-фактор</label>
          <select name="factor" id="factor" class="form-control">
            <option value="1">Положительный (+)</option>
            <option value="2">Отрицательный (-)</option>
          </select>
        </div>
        <div class="form-group">
          <label for="vk">Ссылка на профиль Вконтакте</label>
          <input type="url" name="vk" id="vk" value="<?php echo @$_POST['vk']; ?>" class="form-control" placeholder="https://vk.com/idx" required>
        </div>
        <div class="form-group">
          <label for="password">Пароль</label>
          <input type="password" name="password" id="password" class="form-control" placeholder="Совершенно секретно" required>
        </div>
        <div class="form-group">
          <label for="password_confirm">Подтвердите пароль</label>
          <input type="password" name="password_confirm" id="password_confirm" class="form-control" placeholder="Совершенно секретно" required>
        </div>
        <div class="col-md-12 text-center "><br>
          <button type="submit" class="btn btn-block btn-primary tx-tfm register-btn">
            Зарегистрироваться
          </button>
        </div>
        <div class="form-group">
          <p class="text-center">Уже есть аккаунт? <a href="/lr3/signin.php">Войти в аккаунт</a></p>
        </div>
      </form>

    <?php if (!empty($_POST)): ?>
      <?php if ('ok' === $logic->show_errors()): ?>
          <div class="alert alert-success" role="alert">Вы будете перенаправлены!</div>
      <?php else: ?>
          <div class="alert alert-danger" role="alert"><?php echo $logic->show_errors(); ?></div>
      <?php endif; ?>
    <?php endif; ?>
  </div>
</div>
</div>

<?php require_once 'footer.php'; ?>
