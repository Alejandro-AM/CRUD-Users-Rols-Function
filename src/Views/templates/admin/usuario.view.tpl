<h1>{{mode_desc}}</h1>
<section>
  <form action="index.php?page=admin_usuario" method="post">
  <input type="hidden" name="mode" value="{{mode}}" />
  <input type="hidden" name="crsf_token" value="{{crsf_token}}" />
  <input type="hidden" name="usercod" value="{{usercod}}" />
    <!--EMAIL-->
    <fieldset>
      <label for="useremail">Email: </label>
      <input {{if readonly}}readonly{{endif readonly}} type="email" id="useremail" name="useremail" placeholder="Correo electronico" value="{{useremail}}"/>
      {{if error_useremail}}
        {{foreach error_useremail}}
          <div class="error">{{this}}</div>
        {{endfor error_useremail}}
      {{endif error_useremail}}
    </fieldset>
    <!--NOMBRE-->
    <fieldset>
      <label for="username">Nombre de usuario: </label>
      <input {{if readonly}}readonly{{endif readonly}} type="text" id="username" name="username" placeholder="Nombre de usuario" value="{{username}}"/>
      {{if error_username}}
        {{foreach error_username}}
          <div class="error">{{this}}</div>
        {{endfor error_username}}
      {{endif error_username}}
    </fieldset>
    <!--ESTADO USUARIO-->
    <fieldset>
      <label for="userest">Estado Usuario: </label>
      <select id="userest" name="userest" {{if readonly}}readonly disabled{{endif readonly}}>
        {{foreach userestArr}}
        <option value="{{value}}" {{selected}}>{{text}}</option>
        {{endfor userestArr}}
      </select>
    </fieldset>
    <!--ESTADO USUARIO-->
    <fieldset>
      <label for="usertipo">Tipo de usuario: </label>
      <select id="usertipo" name="usertipo" {{if readonly}}readonly disabled{{endif readonly}}>
        {{foreach usertipoArr}}
        <option value="{{value}}" {{selected}}>{{text}}</option>
        {{endfor usertipoArr}}
      </select>
    </fieldset>
    <fieldset>
      {{if showBtn}}
        <button type="submit" name="btnEnviar">{{btnEnviarText}}</button>
        &nbsp;
      {{endif showBtn}}
      <button name="btnCancelar" id="btnCancelar">Cancelar</button>
    </fieldset>   
  </form>
</section>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('btnCancelar').addEventListener('click', function(e){
      e.preventDefault();
      e.stopPropagation();
      window.location.href = 'index.php?page=admin_usuarios';
    });
  });
</script>