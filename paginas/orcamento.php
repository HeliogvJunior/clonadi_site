<?php

$produto = $_POST['prod'];
$nome = $_POST['nome'];
$fone = $_POST['fone'];
$cidade = $_POST['cidade'];
$contato = $_POST['contato'];
$cnpj = $_POST['cnpj'];
$email = $_POST['email'];
foreach ($_POST['prod'] as $id => $qtd) {
    $id = intval($id);
    $qtd = intval($qtd);
    $prod = $func->produtoCarrinho($pdo, $smt, $id);
    $carr_codigo[] = $prod->codigo;
    $carr_nome[] = $prod->nome;
    $carr_id[] = $prod->idprodutos;
    $carr_quant[] = $qtd;
    $carr_sequencia[] = $conta;
    $conta++;
}
$para       = $email;
$assunto    = 'Orçamento Clonadi';
$mensagem   = '<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <img src="http://www.clonadi.com.br/imagens/topo_email.png" />
        <br />
        <br />
        Ola '.$contato.',
        <br />
        <br />
        Recebemos a sua solicitção de orçamento.
        <br />
        <br />
        <table style="width: 600px; border: 1px solid #000; border-spacing: 0px;">
            <thead style="text-align: center; font-weight: bold; border: 1px solid #000;">
                <tr>
                    <td colspan="4" style="border: 1px solid #000;">DESCRIÇÃO DO ORÇAMENTO</td>
                </tr>
                <tr>
                    <td style="width: 30px; text-align: center; border: 1px solid #000;">Seq.</td>
                    <td style="width: 50px; text-align: center;border: 1px solid #000;">Código</td>
                    <td style="width: 470px;border: 1px solid #000;">Descrição</td>
                    <td style="width: 50px; text-align: center;border: 1px solid #000;">Quant.</td>
                </tr>
            </thead>
            <tbody style="font-size: 14px;">
                <tr>
                    <td style="text-align: center; border: 1px solid #000;">1</td>
                    <td style="text-align: center; border: 1px solid #000;">123</td>
                    <td style="border: 1px solid #000;">GUIA DE CORDA COM AMORTECEDOR E COLAR DE ELOS DUPLOS TORCIDOS 3,5MM X 70CM</td>
                    <td style="text-align: center; border: 1px solid #000;">122</td>
                </tr>
            </tbody>
            <tfoot style="font-size: 14px;">
                <tr>
                    <td colspan="4"  style="text-align: center; border: 1px solid #000;">Seu orçamento esta sendo processado. Obrigado pelo contato.</td>
                </tr>
            </tfoot>
        </table>
        <br />
        <br />
        A Clonadi agracede sua prefêrencia.
    </body>
</html>

';
$headers    = 'From: contato@clonadi.com.br' . "\r\n" .
    'Reply-To: contato@clonadi.com.br' . "\r\n" .
    'Content-type: text/html; charset=iso-8859-1'.'\r\n'.
    'X-Mailer: PHP/' . phpversion();

mail($para, $assunto, $mensagem, $headers);




$smt->assign("resCarrinhoCodigo", $carr_codigo);
$smt->assign("resCarrinhoId", $carr_id);
$smt->assign("resCarrinhoNome", $carr_nome);
$smt->assign("resCarrinhoQuant", $carr_quant);
$smt->assign("qtCarrinho", $conta);
$smt->assign("resSequencia", $carr_sequencia);
$smt->assign("idMenu", $idMenu);
?>