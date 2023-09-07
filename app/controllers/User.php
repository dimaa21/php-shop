<?php
    class User extends Controller {
        public function reg() {

            $data = [];
            if(isset($_POST['name'])) {
                $user = $this->model('UserModel');
                $user->setData($_POST['name'], $_POST['email'], $_POST['pass'], $_POST['re_pass']);

                $isValid = $user->validForm();
                if($isValid == "Правильно")
                    $user->addUser();
                else
                    $data['message'] = $isValid;
            }

            $this->view('user/reg', $data);
        }

        public function dashboard() {
            $user = $this->model('UserModel');

            if(isset($_POST['exit_btn'])) {
                $user->logOut();
                exit();
            }

            $this->view('user/dashboard', $user->getUser());
        }

        public function auth() {

            $data = [];
            if(isset($_POST['email'])) {
                $user = $this->model('UserModel');
                $data['message'] = $user->auth($_POST['email'], $_POST['pass']);
            }

            $this->view('user/auth', $data);
        }
    }