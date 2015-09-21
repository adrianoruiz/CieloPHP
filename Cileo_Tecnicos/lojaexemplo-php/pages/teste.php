<?php
require "../includes/include.php";
?>
<html>
    <head>
        <title>Loja Exemplo : Pedidos</title>
    </head>
    <center>
    <h2>
    Carrinho
    </h2>
    <form action="novoPedidoAguarde.php" method="post" >
        <input type="hidden" name="codigoBandeira" value="visa" />
        <input type="hidden" name="PaisSacado" maxlength="100" size="20" value="Brasil">
        <input type="hidden" value="177.92.51.10" name="EnderecoIPComprador"  />
        <input type="hidden" value="10-11-2014 11:23:27" name="DataHoraCompra" />
        <input type="hidden" name="produto" value="342000" />
        <input type="hidden" name="tentarAutenticar" value="nao" />
        <input type="hidden" name="tipoParcelamento" value="2" />
        <input type="hidden" name="capturarAutomaticamente" value="true" />
        <input type="hidden" name="indicadorAutorizacao" value="2" />
        <input type="submit" value="Pagar"/>
    </form>
    <a href="index.php">Menu</a>
    </center>
</html>