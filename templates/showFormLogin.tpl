{include 'templates/header.tpl'}

<div class="login">
    <form action="validate" method="POST" class="form">
        <h3>Formulario de Login</h3>
        <div class="inputs">
            <input class="controls" type="email" name="email" placeholder="Ingrese su Email" required/>
            <input class="controls" type="password" name="password" placeholder="Ingrese la contraseña" required/>
            {if $error} 
                <div>
                    {$error}
                </div>
            {/if}    
            <button class="button" type="submit">Enviar</button>
        </div>
    </form>
</div>

{include 'templates/footer.tpl'}