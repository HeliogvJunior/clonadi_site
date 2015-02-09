<?php
try {
    $sql_busca_categoria = "select * from categoria order by categoria asc";
    $query_categoria = $pdo->prepare($sql_busca_categoria);
    $query_categoria->execute();
    
    while ($categoria = $query_categoria->fetchObject()) {
        $id_cat[] = $categoria->idcategoria;
        $nome_cat[] = $categoria->categoria;
        echo "teste";
    }
    $smt->assign("resIdCategoria", $id_cat);
    $smt->assign("resNomeCategoria", $nome_cat);
} catch (PDOException $erro_busca_categoria) {
    echo 'Erro ao efetuar a Consulta: ' . $erro_consulta->getMessage();
}
?>