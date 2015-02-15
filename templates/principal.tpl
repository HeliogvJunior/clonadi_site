{config_load file="configs.conf" section="setup"}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>{#titulo#}</title>
        <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width">
                <link rel="stylesheet" href="/includes/css/layout.css" />
                <link rel="stylesheet" href="/includes/css/jquery-ui-1.10.3.custom.min.css" />
                <script type="text/javascript" src="/includes/js/jquery-1.9.1.min.js"></script>
                <script type="text/javascript" src="/includes/js/jquery-ui-1.10.3.custom.min.js"></script>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $("#inicio").button({
                            icons: {
                                primary: 'ui-icon-home'
                            }
                        });
                        $(".btnCarrinho").button({
                            icons: {
                                primary: 'ui-icon-cart'
                            }
                        });
                    });
                </script>
                <style type="text/css">
                    .btnCarrinho{
                        font-size: 10px;
                    }
                </style>
                </head>
                <body>
                    <div id="tudo">
                        <div id="esquerdo">
                            <div id="topo_logo">
                                <a href="/0/0/inicio.html" title="Página Inicial"><img src="/imagens/logo.png"/></a>
                            </div>
                            <br><a href="/0/0/carrinho.html" class="btnCarrinho">Carrinho</a><br>
                                    <div id="menu_e" class="ui-corner-all">
                                        {include file="menu_e.tpl"}
                                    </div>
                                    <div id="menu_e" class="ui-corner-all">
                                        {include file="sub_menu_e.tpl"}
                                    </div>
                                    </div>
                                    <div id="direito">
                                        <div id="topo_principal" class="ui-corner-all"> 
                                            <br /><br />Novos produtos com uma pequena descrição.
                                        </div>
                                        <br>
                                            <div id="principal">
                                                {include file="$nTemplate"}
                                            </div> <!-- Fim da div#principal -->
                                    </div>

                                    <div class="clear"></div>
                                    <div class="canto">
                                        <a href="//hachiinfo.com.br/" target="_blank" title="Página Inicial">
                                            <img src="/imagens/logo_hachiinfo.png" />
                                        </a>
                                    </div>
                                    <div id="rodape">
                                        <p>Clonadi - Copyright &copy; 2014. Todos os direitos reservados.</p>
                                    </div>
                                    </div> <!-- Fim da div#tudo -->

                                    </body>
                                    </html>
