<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Корзина товарів</title>
    <meta name="description" content="Корзина товарів">

    <link rel="favicon" href="/public/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/public/css/style.css" charset="utf-8">
    <link rel="stylesheet" href="/public/css/products.css" charset="utf-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" crossorigin="anonymous">
</head>
<body>
    <?php require 'public/blocks/header.php' ?>

    <div class="container main">
        <h1>Корзина товарів</h1>
        <?php if(count($data['products']) == 0): ?>
        <?=$data['empty']?>
        <?php else: ?>
            <div class="products">
                <?php
                    for($i = 0; $i < count($data['products']); $i++):
                        $sum += $data['products'][$i]['price'];
                ?>

                <div class="row">
                    <img src="/public/img/<?=$data['products'][$i]['img']?>" alt="<?=$data['products'][$i]['title']?>">
                    <h4><?=$data['products'][$i]['title']?></h4>
                    <span><?=$data['products'][$i]['price']?> гривень</span>
                </div>
                <?php endfor; ?>
                <button class="btn">Купити (<b><?=$sum?> гривень</b>)</button>
            </div>
        <?php endif;?>
    </div>

    <br><br><br><br><br><br>

    <?php require 'public/blocks/footer.php' ?>
</body>
</html>