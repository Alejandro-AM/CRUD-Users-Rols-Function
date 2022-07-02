<?php 

namespace Controllers\Admin;

use Dao\Mnt\Roles as DaoRoles;
use Controllers\PrivateController;
use Views\Renderer;

class Roles extends PrivateController
{
    public function run():void
    {
        $viewData = array();
        $viewData['Roles'] = DaoRoles::getAll();
        Renderer::render('admin/roles', $viewData);
    }
}

?>