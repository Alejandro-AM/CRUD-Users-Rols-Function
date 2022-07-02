<h1>{{mode_desc}}</h1>
<section>
    <form action="index.php?page=admin_rol" method="POST">
        <input type="hidden" name="mode" value="{{mode}}" />
        <input type="hidden" name="crsf_token" value="{{crsf_token}}" />
        <fieldset>
            <label for="rolescod">Codigo: </label>
            <input {{if readonlycode}}readonly{{endif readonlycode}} type="text" name="rolescod" id="rolescod" placeholder="Codigo" value="{{rolescod}}"/>
            {{if error_rolescod}}
            {{foreach error_rolescod}}
            <div class="error">{{this}}</div>
            {{endfor error_rolescod}}
            {{endif error_rolescod}}
        </fieldset>
        <fieldset>
            <label for="rolesdsc">Descripcion: </label>
            <input {{if readonly}}readonly{{endif readonly}} type="text" name="rolesdsc" id="rolesdsc" placeholder="Descripcion" value="{{rolesdsc}}" />
            {{if error_rolesdsc}}
            {{foreach error_rolesdsc}}
            <div class="error">{{this}}</div>
            {{endfor error_rolesdsc}}
            {{endif error_rolesdsc}}
        </fieldset>
        <fieldset>
            <label for="rolesest">Estado: </label>
            <select name="rolesest" id="rolesest" {{if readonly}}readonly disabled>{{endif readonly}}>
                {{foreach rolesestArr}}
                <option value="{{value}}" {{selected}}>{{text}}</option>
                {{endfor rolesestArr}}
            </select>
        </fieldset>
        <fieldset>
            {{if showBtn}}
            <button type="submit" name="btnEnviar" value="{{btn_value}}">{{btnEnviarText}}</button>
            &nbsp;
            {{endif showBtn}}
            <button type="button" name="btnCancelar" id="btnCancelar">Cancelar</button>
        </fieldset>
    </form>
</section>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('btnCancelar').addEventListener('click', function (e) {
      e.preventDefault();
      e.stopPropagation();
      window.location.href = 'index.php?page=admin_roles';
    });
  });
</script>