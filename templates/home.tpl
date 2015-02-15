<script type="text/javascript">
    $(document).ready(function () {
        $(".btnOrcamento").button({
            icons: {
                primary: 'ui-icon-pencil'
            }, text: true
        });

    });
</script>
<style type="text/css">
.btnOrcamento{
    font-size: 10px;
}    

</style>
{section name=i loop=$resIdProduto}
    <div id="produtos">
        <div id="produto_foto">
            <img src="/img_produtos/{$resImagemProduto[i]}.jpg" class="img_prod">
        </div>
        <div id="produto_descricao">
            Cód.: {$resCodigoProduto[i]}<br />
            {$resNomeProduto[i]}<br />
            <br />
            <a href="/0/0/carrinho.html?acao=add&id={$resIdProduto[i]}" class="btnOrcamento">Orçamento</a>
        </div>
    </div>
{/section}
