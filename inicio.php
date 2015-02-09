<?php
include_once ('libs/Smarty.class.php');
include_once 'includes/php/db_pdo.class.php';
include_once 'includes/php/funcoes.class.php';

$pdo = new ConectaPDO();
$func = new funcoes();
$smt = new Smarty();

$smt->template_dir = "templates";
$smt->compile_dir = "templates_c";
$smt->config_dir = "configs";

//include_once 'includes/php/db_pdo.class.php';

if (isset($_GET['pg'])) {// Verifica se o GET pg foi enviado se não mostra a pagina home.php
    $pagina = $_GET['pg'] . '.php';
    $nome_tpl = $_GET['pg'] . '.tpl';
    if (file_exists('paginas/' . $pagina) && file_exists('templates/' . $nome_tpl)) {
        include ('paginas/' . $pagina);
    } else {
        include('paginas/home.php');
        $nome_tpl = 'home.tpl';
    }
} else {

    include('paginas/home.php');
    $nome_tpl = 'home.tpl';
}
##################################################################################
$agora = time();
##################################################################################
##FUNÇÕES
$idMenu = $_GET['idmenu'];
$func->menu($pdo, $smt);
$func->produtosCat($pdo, $smt, $idMenu);
##################################################################################

$smt->assign("ano_atual", date("Y"));
//$smt->assign("raiz", $raiz);
$smt->assign("nTemplate", "$nome_tpl");

$smt->display("principal.tpl");

?>