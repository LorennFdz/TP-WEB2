{include 'templates/header.tpl'}

<ul class="lista-productos">
    {foreach from=$categories item=$category}
        <li class='lista-productos-item'>
        <span> <b>{$category->category}</b></span>
            <div class='div-lista'>
                <a href='viewcategory/{$category->id_category}' type='button' class='btn-lista-viewdetails'>Detalle</a>
                {if isset($smarty.session.USER_ID)}
                    <a href='updatecategories/{$category->id_category}' type='button' class='btn-lista-update'>Editar</a>
                    <a href='deletecategories/{$category->id_category}' type='button' class='btn-lista-delete'>Borrar</a>
                {/if}
            </div>
        </li>
    {/foreach}
</ul>
{if isset($smarty.session.USER_ID)}
    {include 'templates/form_alta_cat.tpl'}
{/if}

{include 'templates/footer.tpl'}