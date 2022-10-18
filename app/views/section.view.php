<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class SectionView {
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty();
    }

    function showHome() {
        $this->smarty->display('showHome.tpl');
    }

    function showAbout() {
        $this->smarty->display('showAbout.tpl');
    }

    function showFormLogin($error = null) {
        $this->smarty->assign("error", $error);
        $this->smarty->display('showFormLogin.tpl');
    }

    function showError($mensaje, $error = null) {
        $this->smarty->assign('mensaje', $mensaje);
        $this->smarty->assign('error', $error);
        $this->smarty->display('showError.tpl');
    }

    function error404(){
        $this->smarty->display('error404.tpl');
    }

    function errorDeleteCategory() {
        $this->smarty->display('errorDeleteCategory.tpl');
    }

    function showHomeLocation() {
        header("Location: " . BASE_URL . "home");
    }
    function showProductsLocation() {
        header("Location: " . BASE_URL . "products");
    }
    function showCategoryLocation() {
        header("Location: " . BASE_URL . "categories");
    }
    function showLoginLocation() {
        header("Location: " . BASE_URL . "login");
    }
}