<script type="text/javascript">
    var oldColor = '';
    $(document).ready(function () {
        $(".btnContinua").button({
            text: true
        });
        $(".btnAtualiza").button({
            text: true
        });
        $(".btnFinalizar").button({
            text: true
        });
        $(".btnFinalizar").click(function () {
            //var id = $(this).attr('id');
            //alert( id );
            $(".produtos").css({
                display: "none"});
            //$(".btnAtualizar").css({ display: "block"});
            $(".dados").css({
                display: "block"});
            /*$("." + id + "ocultar").css({
             display: "block",
             width: "100px"
             });
             */

        });
        $(".btnFinaliza").button({
            text: true
        });
        $('.zebra:even').css('background-color', '#bfe4fb');//faz o efeito da zebra nas linhas

        /*efeito hover ao passar pela linha*/
        $('.zebra').hover(function () {
            oldColor = $(this).css('background-color');
            $(this).attr('oldColor', oldColor);//seto atributo p/ funcionar em todos os navegadores
            $(this).css('background-color', '#81b9da'); //seta a cor do mouseover da linha
        }, function () {
            $(this).css('background-color', $(this).attr('oldColor'));//restaura cor original na saida do evento
        });

        /* ================================================================================================ */


        $("#formCarrinho").validate({
            rules: {
                nome: "required",
                fone: "required",
                cidade: "required",
                contato: "required",
                cnpj: "required",
                /*
                 confirm_password: {
                 required: true,
                 minlength: 5,
                 equalTo: "#password"
                 },
                 */
                email: {
                    required: true,
                    email: true
                },
                topic: {
                    required: "#newsletter:checked",
                    minlength: 2
                },
                agree: "required"
            },
            messages: {
                nome: "O campo Nome da Empresa é Obrigatório!",
                fone: "O campo Telefone é Obrigatório!",
                cidade: "O campo Cidade é Obrigatório!",
                contato: "O campo Contato é Obrigatório!",
                cnpj: "O campo CNPJ é Obrigatório!",
                /*
                 confirm_password: {
                 required: "Please provide a password",
                 minlength: "Your password must be at least 5 characters long",
                 equalTo: "Please enter the same password as above"
                 },
                 */
                email: "Digite um e-mail válido!",
                // agree: "Please accept our policy"
            }
        });
        
        $("#formCarrinho").tooltip({
		show: false,
		hide: false
	});
        $("#formCarrinho input:not(:submit)").addClass("ui-widget-content");

    });
    $.validator.setDefaults({
        showErrors: function (map, list) {
            // there's probably a way to simplify this
            var focussed = document.activeElement;
            if (focussed && $(focussed).is("input, textarea")) {
                $(this.currentForm).tooltip("close", {
                    currentTarget: focussed
                }, true)
            }
            this.currentElements.removeAttr("title").removeClass("ui-state-highlight");
            $.each(list, function (index, error) {
                $(error.element).attr("title", error.message).addClass("ui-state-highlight");
            });
            if (focussed && $(focussed).is("input, textarea")) {
                $(this.currentForm).tooltip("open", {
                    target: focussed
                });
            }
        }
    });
</script>
<style type="text/css">
    #carrinho_e{
        text-align: center;
        float: left;
        background-color: #74b2e2;
        width: 750px;
        padding: 5px 3px 2px 3px;
        font-family: Tahoma, Verdana;
        font-size: 16px;                
        font-weight: bold;
        color: #FFF;
        margin-bottom: 5px;
    }
    #carrinho_i{
        width: 746px;
        padding: 5px 2px 5px 2px;
        font-family: Tahoma, Verdana;
        font-size: 12px;
        color: #000;
        font-weight: normal;
        background-color: #FFF;
        margin-top: 5px;
        float: left;
    }
    #descricao_carrinho{ font-size: 12px; width: 543px; float: left; text-align: left; padding: 3px 0px 2px 3px; }
    #quantidade_carrinho{ font-size: 12px; width: 97px; float: left; padding: 3px 0px 2px 3px; }
    #opcoes_carrinho{ font-size: 12px; width: 97px; float: left; padding: 3px 0px 2px 3px; }
    #continua_carrinho{
        width: 373px;
        text-align: left;
        float: left;
        font-size: 13px;
    }
    #atualiza_carrinho{
        width: 373px;
        text-align: right;
        float: left;
        font-size: 13px;
    }
    #finaliza_carrinho{
        width: 744px;
        text-align: right;
        float: left;
        font-size: 13px;
    }
    .produtos{
        display: block;
    }
    .dados{
        display: none;
    }
    .campo{
        margin: 3px;
        padding: 3px;
        font-size: 15px;
    }


    label {
        display: inline-block;
        width: 150px;
    }

    #commentForm {
        width: 500px;
    }
    #formCarrinho label {
        width: 740px;
    }
    #formCarrinho label.error, #formCarrinho button.submit {
        margin-left: 10px;
        font-weight: bold;
        text-align: center;
        float: left;
    }
</style>
<div id="carrinho_e" class="ui-corner-all">
    <div id="titulo_carrinho">Solicitação de Orçamento</div>
    <div id="carrinho_i" class="ui-corner-all">
        <form method="post" id="formCarrinho">
            {if $qtCarrinho eq "0"}
                <div id="titulo_carrinho">Não há produto para a solicitação de orçamento!</div>
            {else}
                <div class="produtos">
                    <div id="cabecalho_carrinho">
                        <div id="descricao_carrinho" style="text-align: center"><strong>Descrição</strong></div>
                        <div id="quantidade_carrinho" style="text-align: center"><strong>Quantidade</strong></div>
                        <div id="opcoes_carrinho" style="text-align: center"><strong>Opções</strong></div>
                    </div>


                    <div style="width: 746px; float: left;">
                        <table cellpadding="0" cellspacing="0" border="0">        
                            {section name=i loop=$qtCarrinho}
                                <tr class="zebra">
                                    <td id="descricao_carrinho">{$resCarrinhoNome[i]}</td>
                                    <td id="quantidade_carrinho"><input type="text" size="5" name="prod[{$resCarrinhoId[i]}]" value="{$resCarrinhoQuant[i]}" style="text-align: center"/></td>
                                    <td id="opcoes_carrinho"><a href="?acao=del&id={$resCarrinhoId[i]}"><img src="/imagens/unchecked.gif"></a></td>
                                </tr>
                            {/section}

                        </table>
                    </div>

                    <font style="font-size: 1px; width: 746px; float: left; padding-bottom: 5px;"> &nbsp; <br /></font>
                    <div id="continua_carrinho">
                        <a href="/{$idMenu}/0/produtos.html" class="btnContinua">Escolher outro produto</a>
                    </div>
                    <div id="atualiza_carrinho">
                        <input class="btnAtualiza" type="submit" value="Atualizar Carrinho" formaction="?acao=up" />
                    </div>
                    <div id="finaliza_carrinho"><br />
                        <a href="#" class="btnFinalizar" >Finalizar</a>
                    </div>
                </div>
                <div class="dados">
                    <input type="text" class="ui-corner-all campo" name="nome" size="50" placeholder="Razão Social ou Nome Fantasia" oninvalid="setCustomValidity('Por favor, preencha com o Razão Social ou Nome Fantasia')" />
                    <input type="tel" class="ui-corner-all campo" name="fone" size="50" placeholder="Telefone" oninvalid="setCustomValidity('Por favor, preencha com o Telefone')" />
                    <input type="email" class="ui-corner-all campo" name="email" size="50" placeholder="e-mail" oninvalid="setCustomValidity('Por favor, preencha com o e-mail para contato')" />
                    <input type="text" class="ui-corner-all campo" name="cidade" size="50" placeholder="Cidade / UF" oninvalid="setCustomValidity('Por favor, preencha com a Cidade com o Estado')" />
                    <input type="text" class="ui-corner-all campo" name="contato" size="50" placeholder="Contato" oninvalid="setCustomValidity('Por favor, preencha com o Contato')" />
                    <input type="text" class="ui-corner-all campo" name="cnpj" size="50" placeholder="CNPJ" oninvalid="setCustomValidity('Por favor, preencha com o CNPJ')" />


                    <br />
                    <br />

                    <div id="finaliza_carrinho"><br />
                        <input class="btnAtualiza" type="submit" value="Finalizar Orçamento" formaction="./orcamento.html" />
                    </div>

                </div>
            {/if}
        </form>
        <font style="font-size: 1px; width: 746px; float: left;"> &nbsp; </font>
    </div>
</div>
<script src="/includes/js/jquery.validate.min.js"></script>
<script src="/includes/js/messages_pt_BR.min.js"></script>
<link rel="stylesheet" href="/includes/css/screen.css">