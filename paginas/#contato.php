<?php

if ($_POST["enviar"]) {
    $nome       = $_POST["nome"];
    $fone       = $_POST["fone"];
    $email      =   $_POST["email"];
    $cid_est    =   $_POST["cidade_estado"];
    $assunto    =   $_POST["assunto"];
    $mensagem   =   $_POST["mensagem"];

    $destinatario = "eventoss@casadanana.com";
    $corpo = '
Contato via site Casa da Naná!


Nome: '.$nome.'
Assunto: '.$assunto.'
Fone: '.$fone.'
e-mail: '.$email.'
Cidade / Estado: '.$cid_est.'
Mensagem: '.$mensagem.'

';

//para o envio em formato HTML
    $headers = "MIME-Version: 1.0";
$headers .= "Content-type: text/html; charset=iso-8859-1";
    //$headers .= "Content-type: text/html; charset=utf-8";

//endereço do remitente
    //$headers .= "From: $email";

//endereço de resposta, se queremos que seja diferente a do remitente
    //$headers .= "Reply-To: $nome <$email> X-Mailer: PHP/". phpversion();

//endereços que receberão uma copia $headers .= "Cc: manel@desarrolloweb.com";
//endereços que receberão uma copia oculta
//    $headers .= "Bcc: vinnie@criarweb.com, joao@criarweb.com";
    mail($destinatario, $assunto, utf8_decode($corpo), $headers);
}
?>
