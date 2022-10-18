<?php

class ProductsModel {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_tpe;charset=utf8', 'root', '');
    }
    
    function getAllProductsJoinCategories() {
        $query = $this->db->prepare('SELECT p.*, c.* FROM products p INNER JOIN category c ON p.id_category = c.id_category;');
        $query->execute();
        $productsJoinCategories = $query->fetchAll(PDO::FETCH_OBJ);
        return $productsJoinCategories;
    }

    function getProductById($id){
        $query = $this->db->prepare('SELECT * FROM products WHERE id = ?');
        $query->execute([$id]);
        $productsById = $query->fetchAll(PDO::FETCH_OBJ);
        return $productsById;
    }
    function verifyModelProduct($newModel){
        $query = $this->db->prepare('SELECT * FROM products WHERE model = ?');
        $query->execute([$newModel]);
        $verifyModels = $query->fetchAll(PDO::FETCH_OBJ);
        return $verifyModels;
    }
    function insertProduct($brand, $model, $description, $category) {
        $query = $this->db->prepare('INSERT INTO products (brand, model, description, id_category) VALUES (?, ?, ?, ?)');
        $query->execute([$brand, $model, $description, $category]);
        return $this->db->lastInsertId();
    }

    function updateProduct($id, $brand, $model, $description, $category) {
        $query = $this->db->prepare('UPDATE `products` SET `brand` = ?, `model` = ?, `description` = ?, `id_category` = ? WHERE  `id`  = ?');
        $query->execute([$brand, $model, $description, $category, $id]);
    }

    function productsByCategory($id){
        $query = $this->db->prepare( "SELECT * FROM products WHERE id_category = ?");
        $query->execute([$id]);
        $details = $query->fetchAll(PDO::FETCH_OBJ);
        return $details;
    }

    function deleteProductById($id){
        $query = $this->db->prepare('DELETE FROM products WHERE id = ?');
        $query->execute([$id]);
    }
}