<h1>Trabajando con Roles</h1>
<section>
    <table>
        <thead>
            <tr>
                <th>Id</th>                
                <th>Descripcion</th>
                <th>Estado</th>
                <th><a href="index.php?page=admin_rol&mode=INS">NUEVO REGISTRO</a></th>
            </tr>
        </thead>
        <tbody>
            {{foreach Roles}}
            <tr>
                <td>{{rolescod}}</td>
                <td>{{rolesdsc}}</td>
                <td>{{rolesest}}</td>
                <td>
                    <a href="index.php?page=admin_rol&mode=UPD&Id={{rolescod}}">Editar</a>
                    <a href="index.php?page=admin_rol&mode=DEL&Id={{rolescod}}">&nbsp;Eliminar</a>
                </td>
            </tr>
            {{endfor Roles}}
        </tbody>
    </table>
</section>