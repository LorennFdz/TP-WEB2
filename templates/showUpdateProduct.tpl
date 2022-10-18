{include 'templates/header.tpl'}

<ul class="lista-productos">
    {foreach from=$productsById item=$productById}
        <li class='lista-productos-item'>
            <span> <b>{$productById->brand}</b> - {$productById->model}</span>
            <div class='div-lista'>
                <a href='products' type='button' class='btn-lista-return'>Volver</a>
                <a href='delete/{$productById->id}' type='button' class='btn-lista-delete'>Borrar</a>
            </div>    
        </li>
    {/foreach}
</ul>

{include 'templates/form_mod_prod.tpl'}
{include 'templates/footer.tpl'}