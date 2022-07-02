<h1>Trabajar con Usuarios</h1>
<section>

</section>
<section>
  <table>
    <thead>
      <tr>
        <th>Id</th>
        <th>Email</th>
        <th>Nombre</th>
        <th>Estado</th>
        <th>Tipo</th>
        <th><a href="index.php?page=admin_Usuario&mode=INS">Nuevo</a></th>
      </tr>
    </thead>
    <tbody>
      {{foreach Usuarios}}
      <tr>
        <td>{{usercod}}</td>
        <td>{{useremail}}</td>
        <td> <a href="index.php?page=admin-Usuario&mode=DSP&id={{usercod}}">{{username}}</a></td>
        <td>{{userest}}</td>
        <td>{{usertipo}}</td>
        <td>
          <a href="index.php?page=admin_Usuario&mode=UPD&id={{usercod}}">Editar</a>
          &NonBreakingSpace;
          <a href="index.php?page=admin_Usuario&mode=DEL&id={{usercod}}">Eliminar</a>
        </td>
      </tr>
      {{endfor Usuarios}}
    </tbody>
  </table>
</section>
