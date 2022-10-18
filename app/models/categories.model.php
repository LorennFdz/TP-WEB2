<?php

class CategoryModel {
    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_tpe;charset=utf8', 'root', '');
    }

    function getAllCategories() {
        $query = $this->db->prepare('SELECT * FROM category');
        $query->execute();
        $categories = $query->fetchAll(PDO::FETCH_OBJ);
        return $categories;
    }

    function getCategoryById($id){
        $query = $this->db->prepare('SELECT * FROM category WHERE id_category = ?');
        $query->execute([$id]);
        $categoryById = $query->fetchAll(PDO::FETCH_OBJ);
        return $categoryById;
    }
    function verifyCategory($newCategory) {
        $query = $this->db->prepare('SELECT * FROM category WHERE category = ?');
        $query->execute([$newCategory]);
        $verifyCategory = $query->fetchAll(PDO::FETCH_OBJ);
        return $verifyCategory;
    }
    function insertCategory($newCategory){
        $query = $this->db->prepare('INSERT INTO category (category) VALUES ( ? )');
        $query->execute([$newCategory]);
        return $this->db->lastInsertId();
    }

    function updateCategory($id, $category) {
        $query = $this->db->prepare('UPDATE `category` SET `category` = ? WHERE id_category= ?');
        $query->execute([$category, $id]);
    }

    function deleteCategoryById($id){
        $query = $this->db->prepare('DELETE FROM category WHERE id_category = ?');
        $query->execute([$id]);
    }
}