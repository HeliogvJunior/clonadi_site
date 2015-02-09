{section name=i loop=$resIdProduto}
    <div id="produtos">
        <div id="produto_foto">
            <img src="/img_produtos/{$resImagemProduto[i]}.jpg" class="img_prod">
        </div>
        <div id="produto_descricao">
            Cód.: {$resCodigoProduto[i]}<br />
            {$resNomeProduto[i]}<br />
            <br />
        </div>
    </div>
{/section}
