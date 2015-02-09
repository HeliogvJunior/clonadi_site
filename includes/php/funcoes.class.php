<?php


class funcoes {

    function teste($smt) {
        $smt->assign("resTeste", "Teste OK");
    }
    
    function paginar($totalPagina, $pagina, $link, $valor) {
        $divPaginacao = '<div class="paginacao">';
        if ($totalPagina > 1) {
            $max_links = 9;
            //@$mostrar .= "";
            if ($link != 'no') {
                $links = '&' . $link . '&valor=' . $valor;
            } else {
                $links = "";
            }

            $divPaginacao .= '<a href="?pagina=1' . $links . '" class="paginar" > << </a>';
            for ($i = $pagina - $max_links; $i <= $pagina - 1; $i++) {
                if ($i <= 0) {
                    
                } else {
                    $divPaginacao .= '<a href="?pagina=' . $i . $links . '" class="paginar" >&nbsp;' . $i . '&nbsp;</a>';
                }
            }
            $divPaginacao .= '<a class="pagina_esco"> ' . $pagina . ' </a>';
            for ($i = $pagina + 1; $i <= $pagina + $max_links; $i++) {
                if ($i > $totalPagina) {
                    
                } else {
                    $divPaginacao .= '<a href="?pagina=' . $i . $links . '" class="paginar" >&nbsp;' . $i . '&nbsp;</a>';
                }
            }
            $divPaginacao .= '<a href="?pagina=' . $totalPagina . $links . '" class="paginar" > >> </a>';
        }
        $divPaginacao .= '</div>';
        return $divPaginacao;
    }

    function menu($pdo, $smt) {
        try {
            $sql_busca_categoria = "select * from hi_categoria order by categoria asc";
            $query_categoria = $pdo->prepare($sql_busca_categoria);
            $query_categoria->execute();

            while ($categoria = $query_categoria->fetchObject()) {
                $id_cat[] = $categoria->idcategoria;
                $nome_cat[] = $categoria->categoria;
            }
            $smt->assign("resIdCategoria", $id_cat);
            $smt->assign("resNomeCategoria", $nome_cat);
        } catch (PDOException $erro_busca_categoria) {
            echo 'Erro ao efetuar a Consulta: ' . $erro_consulta->getMessage();
        }
    }
    function produtosCat($pdo, $smt, $idMenu) {
        try {
            $sql_busca_categoria = "select * from hi_categoria order by categoria asc";
            $query_categoria = $pdo->prepare($sql_busca_categoria);
            $query_categoria->execute();

            while ($categoria = $query_categoria->fetchObject()) {
                $id_cat[] = $categoria->idcategoria;
                $nome_cat[] = $categoria->categoria;
            }
            $smt->assign("resIdCategoria", $id_cat);
            $smt->assign("resNomeCategoria", $nome_cat);
        } catch (PDOException $erro_busca_categoria) {
            echo 'Erro ao efetuar a Consulta: ' . $erro_consulta->getMessage();
        }
    }
    function produtosItens($pdo, $smt, $idMenu) {
        try {
            $sql_busca_categoria = "select * from hi_categoria where idcategoria = $idMenu";
            $query_categoria = $pdo->prepare($sql_busca_categoria);
            $query_categoria->execute();
            
            $sql_busca_produtos = "select * from hi_produtos where id_categoria = $idMenu";
            $query_produtos = $pdo->prepare($sql_busca_produtos);
            $query_produtos->execute();
            
            while ($produtos = $query_produtos->fetchObject()) {
                $id_prod[] = $produtos->idprodutos;
                $codigo_prod[] = $produtos->codigo;
                $nome_prod[] = $produtos->nome;
                $imagem_prod[] = $produtos->imagem;
                $tipo_animal_prod[] = $produtos->tipo_animal;
                $garantia_prod[] = $produtos->garantia;
            }
            $smt->assign("resIdProduto", $id_prod);
            $smt->assign("resNomeProduto", $nome_prod);
            $smt->assign("resCodigoProduto", $codigo_prod);
            $smt->assign("resImagemProduto", $imagem_prod);
            $smt->assign("resTipoProduto", $tipo_animal_prod);
            $smt->assign("resGarantiaProduto", $garantia_prod);
            
        } catch (PDOException $erro_busca_produto) {
            echo 'Erro ao efetuar a Consulta: ' . $erro_busca_produto->getMessage();
        }
    }
    
    function produtosItensInicial($pdo, $smt, $quant) {
        try {
            $sql_busca_produtos = "select * from hi_produtos order by rand() limit 0,$quant";
            $query_produtos = $pdo->prepare($sql_busca_produtos);
            $query_produtos->execute();
            
            while ($produtos = $query_produtos->fetchObject()) {
                $id_prod[] = $produtos->idprodutos;
                $codigo_prod[] = $produtos->codigo;
                $nome_prod[] = $produtos->nome;
                $imagem_prod[] = $produtos->imagem;
                $tipo_animal_prod[] = $produtos->tipo_animal;
                $garantia_prod[] = $produtos->garantia;
            }
            $smt->assign("resIdProduto", $id_prod);
            $smt->assign("resNomeProduto", $nome_prod);
            $smt->assign("resCodigoProduto", $codigo_prod);
            $smt->assign("resImagemProduto", $imagem_prod);
            $smt->assign("resTipoProduto", $tipo_animal_prod);
            $smt->assign("resGarantiaProduto", $garantia_prod);
            
        } catch (PDOException $erro_busca_produto) {
            echo 'Erro ao efetuar a Consulta: ' . $erro_busca_produto->getMessage();
        }
    }
}

?>
