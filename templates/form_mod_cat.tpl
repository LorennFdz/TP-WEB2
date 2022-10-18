<div class="forms">
    <div>
        <!-- formulario de alta de tarea -->
        <form action="updatecategories/category" method="POST" class="form-container">
            <h2>Formulario para editar Categoria</h2>
            <div>
                <input type="hidden" name="id_category" value="{$categoryById->id_category}">

                <label><b>Categoria:</b></label>
                <input name="category" type="text" value="{$categoryById->category}" required>

                <button type="submit" class="btn btn-primary mt-2">Editar</button>
            </div>
        </form>
    </div>
</div>