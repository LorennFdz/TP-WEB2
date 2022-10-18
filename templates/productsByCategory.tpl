{include 'templates/header.tpl'}

<ul class="lista-productos">
    {foreach from=$details item=$detail}
        <li class='lista-productos-item'>
            <span> <b>{$detail->brand}</b> - {$detail->model}</span>
            <a href='categories' type='button' class='btn-lista-return'>Volver</a>
        </li>
    {foreachelse}
        <h2>Esta categoría no tiene ningun producto asociado.</h2>
    {/foreach}
</ul>

{include 'templates/footer.tpl'}