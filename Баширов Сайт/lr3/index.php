<?php require_once '../config.php'; ?>


<?php require_once 'header.php'; ?>

<?php if (!isset($_SESSION['id'])): ?>
	<a href="/lr3/signin.php" style="margin-left:50px">Авторизоваться</a><br>
	<a href="/lr3/signup.php" style="margin-left:50px">Зарегистрироваться</a>
<?php else: ?>
	<?php header("Location: /lr2/"); ?>
<?php endif; ?>

<?php require_once 'footer.php'; ?>

