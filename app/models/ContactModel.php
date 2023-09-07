<?php
    class ContactModel {
        private $name;
        private $email;
        private $age;
        private $message;

        public function setData($name, $email, $age, $message) {
            $this->name = $name;
            $this->email = $email;
            $this->age = $age;
            $this->message = $message;
        }

        public function validForm() {
            if(strlen($this->name) < 3)
                return "Ім'я надто коротке";
            else if(strlen($this->email) < 3)
                return "Email надто короткий";
            else if(!is_numeric($this->age) || $this->age <= 0 || $this->age > 90)
                return "Ви ввели не вік";
            else if(strlen($this->message) < 10)
                return "Повідомлення надто коротке";
            else
                return "Правильно";
        }

        public function mail() {
            $to = "dimasukgaborak@gmail.com";
            $message = "Ім'я: " . $this->name . ". Вік: " . $this->age . ". Повідомленння: " .$this->message;

            $subject = "=?utf-8?B".base64_decode("Повідомлення з нашого сайту")."?=";
            $headers = "From: $this->email\r\nReply-to: $this->email\r\nContect-type: text/html; charset=utf-8\r\n";
            $success = mail($to, $subject, $message, $headers);

            if(!$success)
                return "Повідомлення не було відправлене";
            else
                return "Повідомлення було відправлене";
        }
    }