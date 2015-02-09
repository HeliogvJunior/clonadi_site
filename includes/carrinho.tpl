<script type="text/javascript">
    var oldColor = '';
    $(document).ready(function () {
        $(".btnContinua").button({
            icons: {
                primary: 'ui-icon-pencil'
            }, text: true
        });
        $(".btnAtualiza").button({
            icons: {
                primary: 'ui-icon-pencil'
            }, text: true
        });
        $(".btnFinaliza").button({
            icons: {
                primary: 'ui-icon-pencil'
            }, text: true
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
        width: 746px;
        text-align: right;
        float: left;
        font-size: 13px;
    }
</style>
<div id="carrinho_e" class="ui-corner-all">
    <div id="titulo_carrinho">Solicitação de Orçamento</div>
    <div id="carrinho_i" class="ui-corner-all">
        {if $qtCarrinho eq "0"}
            <div id="titulo_carrinho">Não há produto para a solicitação de orçamento!</div>
        {else}
            <div id="cabecalho">
                <div id="descricao_carrinho" style="text-align: center"><strong>Descrição</strong></div>
                <div id="quantidade_carrinho" style="text-align: center"><strong>Quantidade</strong></div>
                <div id="opcoes_carrinho" style="text-align: center"><strong>Opções</strong></div>
            </div>
            <form method="post">
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
            <br />
            <div style="width: 746px; float: left;" > &nbsp; </div>
            <div id="continua_carrinho">
                <a href="/{$idMenu}/0/produtos.html" class="btnContinua">Escolher outro produto</a>
            </div>
            <div id="atualiza_carrinho">
                <input class="btnAtualiza" type="submit" value="Atualizar Carrinho" formaction="?acao=up" />
            </div>
            <div id="finaliza_carrinho"><br />
                <input class="btnAtualiza" type="submit" value="Finalizar Orçamento" formaction="./orcamento.html" />
            </div>
            </form>
        {/if}
        <font style="font-size: 1px; clear: none;"> &nbsp; </font>
    </div>
</div>