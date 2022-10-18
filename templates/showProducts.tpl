{include 'templates/header.tpl'}

<ul class="lista-productos">

    {foreach from=$productsJoinCategories item=$product}
        <li class='lista-productos-item'>
            <span> <b>{$product->brand}</b> - {$product->model} - <b>{$product->category}</b></span>
            <div class='div-lista'>
                <a href='viewproducts/{$product->id}' type='button' class='btn-lista-viewdetails'>Detalle</a>
                {if isset($smarty.session.USER_ID)}
                    <a href='update/{$product->id}' type='button' class='btn-lista-update'>Editar</a>
                    <a href='delete/{$product->id}' type='button' class='btn-lista-delete'>Borrar</a>
                {/if}
            </div>
            
        </li>
    {/foreach}
</ul>
{if isset($smarty.session.USER_ID)}
    {include 'templates/form_alta_prod.tpl'}

{/if}
{include 'templates/footer.tpl'}