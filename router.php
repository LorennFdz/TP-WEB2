<?php
require_once './app/controllers/products.controllers.php';
require_once './app/controllers/categories.controllers.php';
require_once './app/controllers/auth.controllers.php';
require_once './app/controllers/section.controller.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'home';
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

switch ($params[0]) {
    case 'home':
        $sectionController = new SectionController();
        $sectionController->showHome();
        break;
    case 'products':
        $productsController = new ProductsController();
        $productsController->showProducts();
        break;
    case 'categories':
        $categoryController = new CategoryController();
        $categoryController->showCategory();
        break;
    case 'add':
        if($params[1] == 'product'){
            $productsController = new ProductsController();
            $product = $params[1];
            $productsController->addProduct($product);
        }
        else if($params[1] == 'category'){
            $categoryController = new CategoryController();
            $categories = $params[1];
            $categoryController->addCategory($categories);
        }
        break;
    case 'update':
        if($params[1] == 'product') {
            $productsController = new ProductsController();
            $product = $params[1];
            $productsController->updateProduct($product);
        }
        else {
            $productsController = new ProductsController();
            $id = $params[1];
            $productsController->showUpdateProducts($id);
        }
        break;
    case 'updatecategories':
        if($params[1] == 'category') {
            $categoryController = new CategoryController();
            $categories = $params[1];
            $categoryController->updateCategory($categories);
        }
        else {
            $categoryController = new CategoryController();
            $id = $params[1];
            $categoryController->showUpdateCategory($id);
        }
        break;
    case 'viewproducts': 
        $productsController = new ProductsController();
        $id = $params[1];
        $productsController->viewDetailProduct($id);
        break;
    case 'viewcategory': 
        $productsController = new ProductsController();
        $id = $params[1];
        $productsController->productsByCategory($id);
        break;
    case 'delete':
        $productsController = new ProductsController();
        $id = $params[1];
        $productsController->deleteProduct($id);
        break;
    case 'deletecategories':
        $categoryController = new CategoryController();
        $id = $params[1];
        $categoryController->deleteCategory($id);
        break;
    case 'about':
        $sectionController = new SectionController();
        $sectionController->showAbout();
        break;
    case 'login':
        $authController = new AuthController();
        $authController->showFormLogin();
        break;
    case 'validate':
        $authController = new AuthController();
        $authController->validateUser();
        break;
    case 'logout':
        $authController = new AuthController();
        $authController->logout();
        break;
    default:
        $sectionController = new SectionController();
        $sectionController->Error404();
        break;
}