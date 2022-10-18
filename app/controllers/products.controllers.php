<?php
require_once './app/models/products.model.php';
require_once './app/views/products.view.php';
require_once './app/helpers/auth.helper.php';
require_once './app/models/categories.model.php';
require_once './app/views/section.view.php';

class ProductsController {
    private $model;
    private $view;
    private $authHelper;
    private $categoryModel;
    private $sectionView;
    
    public function __construct() {
        $this->model = new ProductsModel();
        $this->view = new ProductsView();
        $this->categoryModel = new CategoryModel();
        $this->sectionView = new SectionView();
        $this->authHelper = new AuthHelper();
    }

    function showProducts() {
        session_start();
        $productsJoinCategories = $this->model->getAllProductsJoinCategories();
        $categories = $this->categoryModel->getAllCategories();
        $this->view->showProducts($productsJoinCategories, $categories);
    }

    function addProduct($product){
        $this->authHelper->checkLoggedIn();
        if (isset($_POST['brand']) && (isset($_POST['model'])) && (isset($_POST['description'])) &&
            (isset($_POST['category'])) && !empty($_POST['description']) && !empty($_POST['model']) &&
            !empty($_POST['brand'])){

            $brand = $_POST['brand'];
            $newModel = $_POST['model'];
            $description = $_POST['description'];
            $category = $_POST['category'];

            $verifyModels = $this->model->verifyModelProduct($newModel);
            foreach($verifyModels as $verifyModel){
                if ($verifyModel->model = $newModel) {
                    $this->sectionView->showError("El modelo que intentas agregar ya existe. Por favor intentalo de nuevo", 404);
                    die();
                }
            }
            $this->model->insertProduct($brand, $newModel, $description, $category);
            $this->sectionView->showProductsLocation();
        }
        else {
            $this->sectionView->showError("Debes completar todos los datos." , 404);
            die();
        }
    }

    function showUpdateProducts($id) {
        session_start();
        $productsById = $this->model->getProductById($id);
        $categories = $this->categoryModel->getAllCategories();
        $this->view->showUpdateProducts($productsById, $categories);
    }
    
    function updateProduct($product) {
        $this->authHelper->checkLoggedIn();
        if (isset($_POST['brand']) && (isset($_POST['model'])) && (isset($_POST['description'])) &&
        !empty($_POST['brand']) && !empty($_POST['model']) && !empty($_POST['description'])){

            $id = $_POST['id'];
            $brand = $_POST['brand'];
            $newModel = $_POST['model'];
            $description = $_POST['description'];
            $category = $_POST['category'];
            
            $verifyModels = $this->model->verifyModelProduct($newModel);
            foreach($verifyModels as $verifyModel){
                if ($verifyModel->model = $newModel) {
                    $this->sectionView->showError("El modelo que intentas editar ya existe. Por favor intentalo de nuevo", 404);
                    die();
                }
            }
            $this->model->updateProduct($id, $brand, $newModel, $description, $category);
            $this->sectionView->showProductsLocation();
        }
        else {
            $this->sectionView->showError("Debes completar todos los datos." , 404);
            die();
        }
    }

    function viewDetailProduct($id){
        session_start();
        $detailsProducts = $this->model->getProductById($id);
        $this->view->viewDetailProduct($detailsProducts);
    }

    function productsByCategory($id){
        session_start();
        $details = $this->model->productsByCategory($id);
        $this->view->productsByCategory($details);
    }

    function deleteProduct($id) {
        $this->authHelper->checkLoggedIn();
        $this->model->deleteProductById($id);
        $this->sectionView->showProductsLocation();
    }

}