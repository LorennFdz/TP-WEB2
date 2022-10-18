{include 'templates/header.tpl'}

<ul class="lista-productos">
    {foreach from=$categoriesById item=$categoryById}
        <li class='lista-productos-item'>
            <span> <b>{$categoryById->category}</b></span>
            <div class='div-lista'>
                <a href='categories' type='button' class='btn-lista-return'>Volver</a>
                <a href='deletecategories/{$categoryById->id}' type='button' class='btn-lista-delete'>Borrar</a>
            </div>    
        </li>
    {/foreach}
</ul>

{include 'templates/form_mod_cat.tpl'}
{include 'templates/footer.tpl'}