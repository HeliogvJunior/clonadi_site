Cães & Gatos
<div id="menu_i" class="ui-corner-all">
    <ul id="primary-nav">
        {section name=i loop=$resIdCategoria}
            <li><a href="/{$resIdCategoria[i]}/0/produtos.html">{$resNomeCategoria[i]}</a></li>
            {/section}
    </ul>
</div>