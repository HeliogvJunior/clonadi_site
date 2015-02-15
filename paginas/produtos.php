<?php
//include_once 'includes/php/db_pdo.class.php';
//include_once '/includes/php/funcoes.class.php';

//$pdo = new ConectaPDO();
//$func = new funcoes();


$idMenu = $_GET['menu'];
$func->produtosItens($pdo, $smt, $idMenu);
//$smt->assign("resPro", "Lepo Lepo");
//$func->teste($smt);