<?php
require_once './app/models/categories.model.php';
require_once './app/views/categories.view.php';
require_once './app/views/section.view.php';
require_once './app/models/products.model.php';
require_once './app/helpers/auth.helper.php';

class CategoryController {
    private $model;
    private $view;
    private $sectionView;
    private $authHelper;
    private $productModel;
    
    public function __construct() {
        $this->model = new CategoryModel();
        $this->view = new CategoryView();
        $this->sectionView = new SectionView();
        $this->productModel = new ProductsModel();
        $this->authHelper = new AuthHelper();
    }

    function showCategory() {
        session_start();
        $category = $this->model->getAllCategories();
        $this->view->showCategories($category);
    }

    function addCategory($categories){
        $this->authHelper->checkLoggedIn();
        if(isset($_POST['category']) || !empty($_POST['category'])){
            
            $newCategory = $_POST['category'];
            $verifyCategories = $this->model->verifyCategory($newCategory);
            foreach($verifyCategories as $verifyCategory){
                if ($verifyCategory->category = $newCategory) {
                    $this->sectionView->showError("La categoría que intentas agregar ya existe. Por favor intentalo de nuevo", 404);
                    die();
                }
            }
            $this->model->insertCategory($newCategory);
            $this->sectionView->showCategoryLocation();
        }
        else {
            $this->sectionView->showError("Debes completar todos los datos." , 404);
            die();
        }
    }

    function showUpdateCategory($id) {
        session_start();
        $categoryById = $this->model->getCategoryById($id);
        $this->view->showUpdateCategory($id, $categoryById);
    }
    
    function updateCategory($categories) {
        $this->authHelper->checkLoggedIn();
        if(isset($_POST['category']) && !empty($_POST['category'])){

            $id = $_POST['id_category'];
            $newCategory = $_POST['category'];
            $verifyCategories = $this->model->verifyCategory($newCategory);
            foreach($verifyCategories as $verifyCategory){
                if($verifyCategory->category = $newCategory){
                    $this->sectionView->showError("La categoría que intentas editar ya existe. Por favor intentalo de nuevo", 404);
                    die();
                }
            }
            $this->model->updateCategory($id, $newCategory);
            $this->sectionView->showCategoryLocation();
        }
        else {
            $this->sectionView->showError("Debes completar todos los datos." , 404);
            die();
        }
    }
    
    function deleteCategory($id) {
        $this->authHelper->checkLoggedIn();
        $cantidad = $this->productModel->productsByCategory($id);
        if (count($cantidad) == 0){
            $this->model->deleteCategoryById($id);
            $this->sectionView->showCategoryLocation();
        }
        else {
            $this->sectionView->errorDeleteCategory();
        }
    }
}