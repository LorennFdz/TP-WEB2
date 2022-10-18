<div class="forms">
    <div>
        <!-- formulario de alta de tarea -->
        <form action="add/product" method="POST" class="form-container">
            <h2>Formulario para agregar producto</h2>
            <div>

                <label><b>Marca:</b></label>
                <input name="brand" type="text" required>

                <label><b>Modelo:</b></label>
                <input name="model" type="text" required>

                <label><b>Descripción:</b></label>
                <textarea name="description" type="text" required></textarea>

                <select name="category">
                    {foreach from=$categories item=$category}
                        <option value="{$category->id_category}">{$category->category}</option>
                    {/foreach}
                </select>
                <button type="submit" class="btn btn-primary mt-2">Agregar</button>
            </div>
        </form>
    </div>
</div>