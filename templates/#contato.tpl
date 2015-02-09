<script type="text/javascript" src="/includes/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="/includes/js/messages_pt_BR.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#form_contato').validate({
            rules: {
                nome: {
                    required: true,
                    minlength: 3
                },
                fone: {
                    required: true,
                    minlength: 3
                },
                email: {
                    required: true,
                    minlength: 3
                },
                cidade_estado: {
                    required: true,
                    minlength: 3
                },
                assunto: {
                    required: true,
                    minlength: 3
                },
                mensagem: {
                    required: true,
                    minlength: 3
                }
            },
            messages: {
                nome: {
                    required: "O campo nome é obrigatorio.",
                    minlength: "O campo nome deve conter no mínimo 3 caracteres."
                },
                email: {
                    required: "O campo email é obrigatorio.",
                    email: "O campo email deve conter um email válido."
                },
                senha: {
                    required: "O campo senha é obrigatorio."
                },
                conf_senha: {
                    required: "O campo confirmação de senha é obrigatorio.",
                    equalTo: "O campo confirmação de senha deve ser identico ao campo senha."
                },
                termos: "Para se cadastrar você deve aceitar os termos de uso."
            }

        });
        $("#enviar").button({
            icons: {
                primary: 'ui-icon-mail-closed'
            }
        });

    });
</script>
<style type="text/css">
    #informacoes_e{
        margin-top: 10px;
        margin-left: 5px;
        padding-top: 10px;
        width: 1000px;
        font-weight: bold;
        font-family: Arial;
        text-align: center;
        color: #000;
        font-size: 22px;
        /*-moz-box-shadow: inset 0px 0px 47px 3px #4c3f37;
        /*-webkit-box-shadow: inset 0px 0px 47px 3px #4c3f37;
        /*box-shadow: inset 0px 0px 277px 3px #4c3f37;*/
        background: rgba(255, 255, 255, 0.3);
    }
    #informacoes_i{
        margin-top: 10px;
        color: #000;
        font-family: Arial;
        font-size: 14px;
        width: 992px;
        padding: 3px;
        background: rgba(255, 255, 255, 0.2);
    }
    .form{
        width: 600px;
        margin: 0 auto;
    }
    #fones{
        font-size: 18px;
        text-shadow: #fff 0px 0px 3px,#fff 0px 0px 3px;
    }
    label, input, textarea { display:block; text-align: left; }
    input.text { margin-bottom:12px; width:95%; padding: .4em;}
    textarea { margin-bottom:12px; width:95%; padding: .4em; resize: none;}

    div.error { display: none; }
    input {	border: 2px solid black; }
    input.checkbox { border: none }
    input:focus { border: 2px solid black; }
    input.error { border: 2px solid red; }
    textarea.error { border: 2px solid red; }
    form.cmxform .gray * { color: gray; }

    form.cmxform label.error, label.error {
        /* remove the next line when you have trouble in IE6 with labels in list */
        color: red;
        font-style: italic
    }
</style>
</head>

<div id="informacoes_e" class="ui-widget-content ui-corner-all">Contato
    <div id="informacoes_i" class="ui-widget-content ui-corner-all">
        <div class="form">
            <form id="form_contato" method="post" action="/contato/a/contato.html" enctype="application/x-www-form-urlencoded" lang="pt" >
                Todos os campos são obrigatórios. <br/><br/>

                <label for="nome">Nome:</label>
                <input type="text" name="nome" id="nome" class="campo text ui-widget-content ui-corner-all">
                <label for="fone">Fone / Celular:</label>
                <input type="text" name="fone" id="fone" class="text ui-widget-content ui-corner-all">
                <label for="email">e-mail:</label>
                <input type="text" name="email" id="email" class="text ui-widget-content ui-corner-all">
                <label for="cidade_estado">Cidade - Estado:</label>
                <input type="text" name="cidade_estado" id="cidade_estado" class="text ui-widget-content ui-corner-all">
                <label for="assunto">Assunto:</label>
                <input type="text" name="assunto" id="assunto" class="text ui-widget-content ui-corner-all">
                <label for="mensagem">Mensagem:</label>
                <textarea rows="5" name="mensagem" id="mensagem" class="text ui-widget-content ui-corner-all"></textarea>
                <br />
                <button id="enviar" name="enviar" value="enviar">Enviar</button>

            </form>
        </div>
    </div>
</div>
<div id="informacoes_e" class="ui-widget-content ui-corner-all">Telefones
    <div id="informacoes_i" class="ui-widget-content ui-corner-all">
        <div id="fones">
            <br><br>
            11-7753-8492 ( Sapucaia )<br>
            11-7762-3184 ( Nadine )<br>
            11-95981-3791 (Nadine-TIM) <br>
            11-97555-8993 ( Hélio )<br>
            11-2243-6600 - Comercial<br><br><br>
            (A casa da Naná esta a venda)
        </div>
    </div>
</div>
