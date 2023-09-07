<?php
class Categories extends Controller {
    public function index() {
        $products = $this->model('Products');
        $data = ['products' => $products->getProducts(), 'title' => 'Всі товари на сайті'];
        $this->view('categories/index', $data);
    }

    public function shoes() {
        $products = $this->model('Products');
        $data = ['products' => $products->getProductsCategory('shoes'), 'title' => 'Категорія взуття'];
        $this->view('categories/index', $data);
    }

    public function hats() {
        $products = $this->model('Products');
        $data = ['products' => $products->getProductsCategory('hats'), 'title' => 'Категорія кепки'];
        $this->view('categories/index', $data);
    }

    public function shirts() {
        $products = $this->model('Products');
        $data = ['products' => $products->getProductsCategory('shirts'), 'title' => 'Категорія футболки'];
        $this->view('categories/index', $data);
    }

    public function watches() {
        $products = $this->model('Products');
        $data = ['products' => $products->getProductsCategory('watches'), 'title' => 'Категорія годинники'];
        $this->view('categories/index', $data);
    }
}