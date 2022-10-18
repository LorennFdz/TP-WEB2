<!DOCTYPE html>
<html lang="en">
<head>
    <base href="{BASE_URL}">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>Cellshop Tandil</title>
</head>
<body>
    <header>
        <div class="titulo">
            <h1>CellShop Tandil</h1>
            <img src="./images/inicio/logo_cellshop.jpeg" alt="Logo Cellshop">
        </div>
        <nav class="barraprincipal">
            <ul>
                <li><a href="home">INICIO</a></li>
                <li><a href="products">PRODUCTOS</a></li>
                <li><a href="categories">CATEGORIAS</a></li>
                <li><a href="about">SOBRE NOSOTROS</a></li>
                {if !isset($smarty.session.USER_ID)}
                    <li><a href="login">INICIA SESION</a></li>
                {else} 
                    <li><a href="logout">CERRAR SESION ({$smarty.session.USER_EMAIL})</a></li>
                {/if}
            </ul>
        </nav>
    </header>