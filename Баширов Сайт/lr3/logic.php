<?php

class logic {
	public $signUpErrors = [];
	public $signInErrors = [];

	function __construct($pdo) {
		$this->pdo = $pdo;
	}


	// -------------------------РЕГИСТРАЦИЯ--------------------------
	function checkPassword($password) {
	    $specSymbol = [',', '.', ';', '+', '-', '*', '/', ' ', '_', '#', '!', '@'];
	    
	    if (strlen($password) < 6) $this->signUpErrors[] = 'Пароль слишком маленький';
	    
	    $ss = 0;
	    foreach ($specSymbol as $specSymbolItem):
	        $pos = strpos($password, $specSymbolItem);
	        
	        if ($pos) {
	        	$ss = 1;
	        	break;
	        }
	    endforeach;
	    
	    if (0 === $ss) $this->signUpErrors[] = 'В пароле нет спецсимволов';
	    
	    if (!preg_match('/[A-Z]/', $password))
	        $this->signUpErrors[] = 'В пароле нет заглавных букв';
	    
	    if (!preg_match('/[a-z]/', $password))
	        $this->signUpErrors[] = 'В пароле нет строчных букв';
	    
	    if (!preg_match('/[0-9]/', $password))
	        $this->signUpErrors[] = 'В пароле нет цифр';
	    
	    if (preg_match('/[А-Яа-яЁё]/u', $password))
	        $this->signUpErrors[] = 'В пароле есть русские буквы';
	    
	    return 1;
	}

	function check_reg($data) {
		$login = '';

		// Валидный ли E-mail
		if (!filter_var($data['email'], FILTER_VALIDATE_EMAIL))
			$this->signUpErrors[] = 'E-mail введен неверно';
		else
			$login = explode('@', $data['email'])[0];

		// выбран ли пол
		if (0 === intval($data['sex']))
			$this->signUpErrors[] = 'Пол не выбран';

		// выбрана ли группа крови
		if (0 === intval($data['blood_type']))
			$this->signUpErrors[] = 'Группа крови не выбрана';

		// выбран ли Резус-фактор
		if (0 === intval($data['factor']))
			$this->signUpErrors[] = 'Резус-фактор не выбран';

		// корректность ввода пароля
		$this->checkPassword($data['password']);

		// одинаково ли введен пароль
		if ($data['password'] !== $data['password_confirm'])
			$this->signUpErrors[] = 'Пароли не совпадают';
		
		// Есть ли такой пользователь
		if ('' !== $login) {
			$stmtLogin  = $this->pdo->prepare("SELECT COUNT(`id`) AS `c` FROM `users` WHERE `login` = ?");
			$stmtLogin->execute([$login]);

			if (0 !== $stmtLogin->fetchAll()[0]['c'])
				$this->signUpErrors[] = 'Такой пользователь уже существует';
		}

		if ('ok' === $this->show_errors())
			$this->reg($data);
	}

	function reg($data) {
		$sql = "INSERT INTO `users`(`login`, `password`, `email`, `name`, `sex`, `inter`, `blood_type`, `factor`, `vk`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		$stmt = $this->pdo->prepare($sql);

		$login    = explode('@', $data['email'])[0];
		$password = htmlspecialchars($data['password']);
		$password = password_hash($password, PASSWORD_DEFAULT);


		$arr[] = htmlspecialchars($login);
		$arr[] = $password;
		$arr[] = htmlspecialchars($data['email']);
		$arr[] = htmlspecialchars($data['full_name']);
		$arr[] = htmlspecialchars($data['sex']);
		$arr[] = htmlspecialchars($data['inter']);
		$arr[] = htmlspecialchars($data['blood_type']);
		$arr[] = htmlspecialchars($data['factor']);
		$arr[] = htmlspecialchars($data['vk']);

		$stmt->execute($arr);

		// Создаем сессию
		if ($stmt) {
			$_SESSION['login'] = $login;
			$_SESSION['id'] = $this->pdo->lastInsertId();
		}
		
	}

	function show_errors() {
		if (count($this->signUpErrors) > 0)
			return $this->signUpErrors[0];
		return 'ok';
	}

	// -------------------------АВТОРИЗАЦИЯ--------------------------

	function check_auth($data) {
		$sql = "SELECT `id`, `login`, `password` FROM `users` WHERE `email` = ?";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([$data['email']]);

		if (0 == $stmt->rowCount())
			$this->signInErrors[] = 'Такого логина не существует';

		else {
			$result = $stmt->fetchAll()[0];

			$password = htmlspecialchars($data['password']);
			
			if (!password_verify($data['password'], $result['password']))
				$this->signInErrors[] = 'Неверный пароль';

			$arr = [
				'id' => $result['id'],
				'login' => explode('@', $data['email'])[0]
			];

			if ('ok' === $this->show_errors_auth())
				$this->auth($arr);
		}
		

	}

	function auth($data) {
		$_SESSION['id']    = $data['id'];
		$_SESSION['login'] = $data['login'];

		header("Location: /lr2/");
	}

	function show_errors_auth() {
		if (count($this->signInErrors) > 0)
			return $this->signInErrors[0];
		return 'ok';
	}
}


$logic = new logic($pdo);

?>