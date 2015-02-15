<?php
$idMenu = $_GET['menu'];

session_start();

if (!isset($_SESSION['carrinho'])) {
    $_SESSION['carrinho'] = array();
}

//adiciona produto

if (isset($_GET['acao'])) {

    //ADICIONAR CARRINHO
    if ($_GET['acao'] == 'add') {
        $id = intval($_GET['id']);
        if (!isset($_SESSION['carrinho'][$id])) {
            $_SESSION['carrinho'][$id] = 1;
        } else {
            $_SESSION['carrinho'][$id] += 1;
        }
    }

    //REMOVER CARRINHO
    if ($_GET['acao'] == 'del') {
        $id = intval($_GET['id']);
        if (isset($_SESSION['carrinho'][$id])) {
            unset($_SESSION['carrinho'][$id]);
        }
    }

    //ALTERAR QUANTIDADE
    if ($_GET['acao'] == 'up') {
        if (is_array($_POST['prod'])) {
            foreach ($_POST['prod'] as $id => $qtd) {
                $id = intval($id);
                $qtd = intval($qtd);
                if (!empty($qtd) || $qtd <> 0) {
                    $_SESSION['carrinho'][$id] = $qtd;
                } else {
                    unset($_SESSION['carrinho'][$id]);
                }
            }
        }
    }
}



if (count($_SESSION['carrinho']) == 0) {
    $smt->assign("qtCarrinho", "0");
} else {
    $conta = 0;
    foreach ($_SESSION['carrinho'] as $id => $qtd) {
        
        $prod = $func->produtoCarrinho($pdo, $smt, $id);
        $carr_codigo[] = $prod->codigo;
        $carr_nome[] = $prod->nome;
        $carr_id[] = $prod->idprodutos;
        $carr_quant[] = $qtd;
        $conta++;
    }
    $smt->assign("resCarrinhoCodigo", $carr_codigo);    
	$smt->assign("resCarrinhoId", $carr_id);
    $smt->assign("resCarrinhoNome", $carr_nome);
    $smt->assign("resCarrinhoQuant", $carr_quant);
    $smt->assign("qtCarrinho", $conta);
    $smt->assign("idMenu", $idMenu);
}

    
