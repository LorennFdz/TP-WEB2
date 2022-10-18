<?php

require_once './app/views/section.view.php';

class SectionController {

    private $view;

    public function __construct() {

        $this->view = new SectionView();
    }

    function showHome(){
        session_start();
        $this->view->showHome();
    }
    
    function showAbout(){
        session_start();
        $this->view->showAbout();
    }

    function showLogin(){
        $this->view->showFormLogin();
    }

    function Error404() {
        $this->view->Error404();
    }
}