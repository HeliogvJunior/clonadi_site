
<style type="text/css">
    #content { width:900px; margin:10px auto; text-align: center;}
    #desc { margin:10px; float:left; font-family: Arial, sans-serif; font-size: 12px;}
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
        height: 550px;
        background: rgba(255, 255, 255, 0.2);
    }
</style>

<!-- include CSS always before including js -->
<link type="text/css" rel="stylesheet" href="/includes/css/tn3.css"></link>
<!-- include tn3 plugin -->
<script type="text/javascript" src="/includes/js/jquery.tn3lite.min.js"></script>

<!--  initialize the TN3 when the DOM is ready -->
<script type="text/javascript">
    $(document).ready(function() {
        //Thumbnailer.config.shaderOpacity = 1;
        var tn1 = $('.mygallery').tn3({
            skinDir: "skins",
            imageClick: "fullscreen",
                delay: 3500,
                //duration:250,
            image: {
                maxZoom: 1.5,
                crop: true,
                clickEvent: "dblclick",
                transitions: [{
                        type: "blinds"
                    }, {
                        type: "grid"
                    }, {
                        type: "grid",
                        duration: 460,
                        easing: "easeInQuad",
                        gridX: 1,
                        gridY: 8,
// flat, diagonal, circle, random
                        sort: "random",
                        sortReverse: false,
                        diagonalStart: "bl",
// fade, scale
                        method: "fade",
                        partDuration: 360,
                        partEasing: "easeOutSine",
                        partDirection: "left"
                    }]
            }
        });
    });
</script>
<div id="informacoes_e" class="ui-widget-content ui-corner-all">Galeria de Fotos
    <div id="informacoes_i" class="ui-widget-content ui-corner-all">
        <div id="content">
            <div class="mygallery">
                <div class="tn3 album">

                    <ol>
                        <!-- {assign var="contador" value="32"} -->

                        {for $valor=1 to 32}


                            <li>
                                <a href="/imagens/galeria/{$valor}.JPG">
                                    <img src="/imagens/galeria_mini/{$valor}.JPG" />
                                </a>
                            </li>
                        {/for}
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>