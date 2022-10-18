<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class ProductsView {
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty();
    }

    function showProducts($productsJoinCategories, $categories) {
        $this->smarty->assign('productsJoinCategories', $productsJoinCategories);
        $this->smarty->assign('categories', $categories);
        $this->smarty->display('showProducts.tpl');
    }
    
    function showUpdateProducts($productsById, $categories){
        $this->smarty->assign('productsById', $productsById);
        $this->smarty->assign('categories', $categories);
        $this->smarty->display('showUpdateProduct.tpl');
    }

    function viewDetailProduct($detailsProducts){
        $this->smarty->assign('detailsProducts', $detailsProducts);
        $this->smarty->display('viewDetailsProducts.tpl');
    }

    function productsByCategory($details) {
        $this->smarty->assign('details', $details);
        $this->smarty->display('productsByCategory.tpl');
    }
}