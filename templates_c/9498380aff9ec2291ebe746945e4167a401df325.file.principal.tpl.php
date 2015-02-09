<?php /* Smarty version Smarty-3.1.14, created on 2014-05-18 22:54:34
         compiled from "templates/principal.tpl" */ ?>
<?php /*%%SmartyHeaderCode:197834581853624fda916ab3-89795001%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9498380aff9ec2291ebe746945e4167a401df325' => 
    array (
      0 => 'templates/principal.tpl',
      1 => 1400456334,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '197834581853624fda916ab3-89795001',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_53624fdb503275_62580278',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53624fdb503275_62580278')) {function content_53624fdb503275_62580278($_smarty_tpl) {?><?php  $_config = new Smarty_Internal_Config("configs.conf", $_smarty_tpl->smarty, $_smarty_tpl);$_config->loadConfigVars("setup", 'local'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title><?php echo $_smarty_tpl->getConfigVariable('titulo');?>
</title>
        <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width">
                <link rel="stylesheet" href="/includes/css/layout.css" />
                <link rel="stylesheet" href="/includes/css/jquery-ui-1.10.3.custom.min.css" />
                <script type="text/javascript" src="/includes/js/jquery-1.9.1.min.js"></script>
                <script type="text/javascript" src="/includes/js/jquery-ui-1.10.3.custom.min.js"></script>
                <script type="text/javascript">
                    $(document).ready(function() {
                        $("#inicio").button({
                            icons: {
                                primary: 'ui-icon-home'
                            }
                        });
                    });
                </script>
                <style type="text/css">

                </style>
                </head>
                <body>
                    <div id="tudo">
                        <div id="esquerdo">
                            <div id="topo_logo">
                                <a href="/0/0/inicio.html" title="Página Inicial"><img src="/imagens/logo.png"/></a>
                            </div>
                            <br><br>
                                    <div id="menu_e" class="ui-corner-all">
                                        <?php echo $_smarty_tpl->getSubTemplate ("menu_e.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

                                    </div>
                                    <div id="menu_e" class="ui-corner-all">
                                        <?php echo $_smarty_tpl->getSubTemplate ("sub_menu_e.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

                                    </div>
                                    </div>
                                    <div id="direito">
                                        <div id="topo_principal" class="ui-corner-all"> 
                                            <br /><br />Novos produtos com uma pequena descrição.
                                        </div>
                                        <br>
                                            <div id="principal">
                                                <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['nTemplate']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

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
<?php }} ?>