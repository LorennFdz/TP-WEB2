<?php
require_once './app/models/user.model.php';
require_once './app/views/section.view.php';

class AuthController {
    private $view;
    private $model;
    
    public function __construct() {
        $this->model = new UserModel();
        $this->view = new SectionView();
    }

    function showFormLogin() {
        $this->view->showFormLogin();
    }

    function validateUser() {
        if(isset($_POST['email']) && isset($_POST['password']) || !empty($_POST['email']) || !empty($_POST['password'])){
            $email = $_POST['email'];
            $password = $_POST['password'];

            $user = $this->model->getUserByEmail($email);
            if ($user && password_verify($password, $user->password)) {
                session_start();
                $_SESSION['USER_ID'] = $user->id;
                $_SESSION['USER_EMAIL'] = $user->email;
                $_SESSION['IS_LOGGED'] = true;

                header("Location: " . BASE_URL);
            } else {
               $this->view->showFormLogin("El usuario o la contraseña no existe.");
            }
        }
        else {
            $this->sectionView->showError("Debes completar todos los datos." , 404);
            die();
        }
    }

    function logout() {
        session_start();
        session_destroy();
        $this->view->showHomeLocation();
    }
}