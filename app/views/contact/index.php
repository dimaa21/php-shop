<!doctype html>
<html lang="ukr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Контакти</title>
    <meta name="description" content="Контакти">

    <link rel="favicon" href="/public/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/public/css/style.css" charset="utf-8">
    <link rel="stylesheet" href="/public/css/formula.css" charset="utf-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" crossorigin="anonymous">
</head>
<body>
    <?php require 'public/blocks/header.php' ?>

    <div class="container main">
        <h1>Зворотній зв'язок</h1>
        <p>Напишіть нам, якщо у вас є питання</p>
        <form action="/contact" method="post" class="form-control">
            <input type="text" name="name" placeholder="Введіть ім'я" value="<?=$_POST['name']?>"><br>
            <input type="email" name="email" placeholder="Введіть email" value="<?=$_POST['email']?>"><br>
            <input type="text" name="age" placeholder="Введіть вік" value="<?=$_POST['age']?>"><br>
            <textarea name="message" placeholder="Введіть повідомлення"><?=$_POST['message']?></textarea>
            <div class="error"><?=$data['message']?></div>
            <button class="btn" id="send">Відправити</button>
        </form>

    </div>

    <?php require 'public/blocks/footer.php' ?>
</body>
</html>