<header>
    <div class="container top-menu">
        <div class="nav">
            <a href="/">Головна</a>
            <a href="/contact">Контакти</a>
            <a href="/contact/about">Про магазин</a>
        </div>
        <div class="tel">
            <i class="fas fa-phone"></i> +380 99 584 598
        </div>
    </div>
    <div class="container middle">
        <div class="logo">
            <img src="/public/img/logotype.svg" alt="Logo">
            <span>Одяг для кожного!</span>
        </div>
        <div class="auth-checkout">
            <a href="/basket">

                <?php
                    require_once 'app/models/BasketModel.php';
                    $basketModel = new BasketModel();
                ?>

                <button class="btn basket">Корзина <b>(<?=$basketModel->countItems()?>)</b></button>
            </a><br>
            <?php if($_COOKIE['login'] == ''): ?>
            <a href="/user/auth">
                <button class="btn auth">Вхід</button>
            </a>
            <a href="/user/reg">
                <button class="btn">Реєстрація</button>
            </a>
            <?php else: ?>
            <a href="/user/dashboard">
                <button class="btn dashboard">Кабінет користувача</button>
            </a>
            <?php endif; ?>
        </div>
    </div>
    <div class="container menu">
        <ul>
            <li><a href="/categories">Всі товари</a></li>
            <li><a href="/categories/shoes">Взуття</a></li>
            <li><a href="/categories/hats">Кепки</a></li>
            <li><a href="/categories/shirts">Футболки</a></li>
            <li><a href="/categories/watches">Годинники</a></li>
        </ul>
    </div>
</header>