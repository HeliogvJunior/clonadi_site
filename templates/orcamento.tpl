<table cellpadding="2" cellspacing="0" border="0">

    {section name=i loop=$qtCarrinho}
        <tr class="zebra">
            <td id="sequencia">{$resSequencia[i] + 1}</td>
            <td id="codigo">{$resCarrinhoId[i]}</td>
            <td id="descricao_carrinho_texto">{$resCarrinhoNome[i]}</td>
            <td id="quantidade_carrinho">{$resCarrinhoQuant[i]}</td>
        </tr>
    {/section}

</table>