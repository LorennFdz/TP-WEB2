<div class="forms">
    <!-- formulario de editar producto -->
    <form action="update/product" method="POST" class="form-container">
        <h2>Formulario para editar producto</h2>
        <div>

            <input type="hidden" name="id" value='{$productById->id}'>

            <label><b>Marca:</b></label>
            <input name="brand" type="text" value='{$productById->brand}' required>

            <label><b>Modelo:</b></label>
            <input name="model" type="text" value='{$productById->model}' required>

            <label><b>Descripción:</b></label>
                <textarea name="description" type="text" required>{$productById->description}</textarea>

            <select name="category">
                {foreach from=$categories item=$category}
                    <option value="{$category->id_category}">{$category->category}</option>
                {/foreach}
            </select>
            <button type="submit" class="btn btn-primary mt-2">Editar</button>
        </div>
    </form>
</div>