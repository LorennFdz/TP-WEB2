{include 'templates/header.tpl'}

<ul class="lista-productos">
    {foreach from=$detailsProducts item=$detailproduct}
        <li class='lista-productos-item'>
            <span> <b>  Marca: </b>{$detailproduct->brand}<br>
            <b> Modelo: </b> {$detailproduct->model}<br>
            <b> Descripción: </b>{$detailproduct->description}</span>
            <a href='products' type='button' class='btn-lista-return'>Volver</a>
        </li>
    {/foreach}
</ul>

{include 'templates/footer.tpl'}