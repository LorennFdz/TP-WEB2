<?php

class CategoryView {
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty();
    }

    function showCategories($category) {
        $this->smarty->assign('categories', $category);
        $this->smarty->display('showCategories.tpl');
    }

    function showUpdateCategory($id, $categoryById) {
        $this->smarty->assign('categoriesById', $categoryById);
        $this->smarty->display('showUpdateCategory.tpl');
    }
    
}