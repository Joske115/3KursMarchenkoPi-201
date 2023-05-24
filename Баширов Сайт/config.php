<?php

$host = '127.0.0.1';
$db   = 'a0814333_andrey';
$user = 'a0814333_andrey';
$pass = 'Ot90Ljej';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$opt = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
$pdo = new PDO($dsn, $user, $pass, $opt);

function check_pass($password) {
    $errors = [];
    $specSymbol = [',', '.', ';', '+', '-', '*', '/', ' ', '_'];
    
    if (strlen($password) < 6) $errors[] = 'Пароль слишком маленький';
    
    $ss = 0;
    foreach ($specSymbol as $specSymbolItem):
        $pos = strpos($password, $specSymbolItem);
        
        if ($pos) $ss += 1;
    endforeach;
    
    if (0 === $ss) $errors[] = 'Нет спецсимволов';
    
    if (!preg_match('/[A-Z]/', $password))
        $errors[] = 'Нет заглавных букв';
    
    if (!preg_match('/[a-z]/', $password))
        $errors[] = 'Нет строчных букв';
    

    if (preg_match('/[А-Яа-яЁё]/u', $password))
        $errors[] = 'Есть русские буквы';
    
    if (count($errors) > 0)
        return $errors[0];
    else {
        // СОЗДАВАТЬ СЕССИЮ
        return 'OK';
    }
        
}