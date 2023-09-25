<?php
try {
    $service = new PDO(
        'mysql:host=localhost;dbname=service',
        'root',
        '',
        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION)
    );
} catch (Exception $e) {
    die("Error " . $e->getMessage());
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap-5.3.1-dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="service.css">
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/fontawesome.min.css">
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/fontawesome.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat&family=Playfair+Display:ital,wght@0,400;0,600;1,600&family=Poppins:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;0,900;1,600&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css"
        integrity="sha512-doJrC/ocU8VGVRx3O9981+2aYUn3fuWVWvqLi1U+tA2MWVzsw+NVKq1PrENF03M+TYBP92PnYUlXFH1ZW0FpLw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Service</title>
</head>


<body>

    <?php include("header.php"); ?>

    <div id="carouselExempleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="service/1.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption">
                    <p class="animated fadeInUp d-done d-md-block">
                        BANFORA: Beneficiez de nos services très abordable.
                </div>
            </div>
            <div class="carousel-item">
                <img src="service/2.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption">
                    <p class="animated fadeInUp d-done d-md-block">
                        BANFORA: Beneficiez de nos services très abordable.
                    </p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="service/3.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption">
                    <p class="animated fadeInUp d-done d-md-block">
                        BANFORA: Beneficiez de nos services très abordable.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <section>
        <div>
            <h1 class="text-center mt-5" style="text-transform: uppercase">Organiser son voyage
                à Banfora</h1>
        </div>

        <div>
            <h2 class="text-center"><a class="lieu text-center mt-5" href="#">Transports</a></h2>
            <div class="card-group">
                <?php
                $impho = $service->query("SELECT * FROM imtext");
                while ($donnees = $impho->fetch()) {
                    ?>
                    <div class="card m-3 mt-5">
                        <img src="service/<?php echo $donnees["photo"] ?>" class="card-img-top" style="height: 300px"
                            alt="...">
                        <div class="card-body">
                            <h5 class="card-title text-center">
                                <?php echo $donnees["texte"] ?>
                            </h5>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>

        <div>
            <h2 class="text-center"><a class="lieu text-center mt-5" href="#">Hébergements & Séjours</a></h2>
            <div class="card-group">
                <?php
                $phot = $service->query("SELECT * FROM image ");
                while ($donnees = $phot->fetch()) {
                    ?>
                    <div class="card m-3 mt-5">

                        <img src="service/<?php echo $donnees["photo"] ?>" class="card-img-top" style="height: 200px"
                            alt="...">

                    </div>
                <?php } ?>
            </div>
        </div>
    </section>


    <section>
        <h2 class="text-center"><a class="lieu text-center mt-5" href="#">Localisation</a></h2>
        <div class="cartes">

            <?php
            $cart = $service->query("SELECT * FROM map ");
            while ($donnees = $cart->fetch()) {
                ?>

                <div class="map-center m-5 mt-5">
                    <iframe class="map-center" src="<?php echo $donnees["map"] ?>" width="600" height="450"
                        style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>

            <?php } ?>

            <div class="coordonnées mt-5 m-5">
                <p>Banfora (Banfora) est un/une siège d'un premier ordre division administrative (class P - des lieux
                    habités) en Cascades (Comoé), Burkina Faso (Africa), ayant le code de région Africa/Middle East.
                    Banfora est situé à 302 mètres d'altitude et la population s'élève à 60,288.
                    Banfora est aussi connu(e) comme Banfora, Banforu, Банфору.</p>

                </br>
                <p>Les coordonnées géographiques sont 10°37'60" N et 4°46'0" W en DMS (degrés, minutes, secondes) ou
                    10.6333 et -4.76667 (en degrés décimaux). La position UTM est US07 et la référence Joint Operation
                    Graphics est NC30-05.</p>

                </br>
                <p>L’heure locale actuelle est 14:07; le lever du soleil est à 08:50 et le coucher du soleil est à 20:57
                    heure locale (Africa/Ouagadougou UTC/GMT+0). Le fuseau horaire pour Banfora est UTC/GMT+0
                    En 2023 l’heure d’été est valable de - à -.</p>

                </br>
                <p>A Siège d'un premier ordre division administrative est siège d'une division administrative de premier
                    ordre (PPLC a priorité sur les PPLA).</p>
            </div>
        </div>
    </section>










    <?php include("footer.php"); ?>

    <script src="header.js"></script>
    <script src=" bootstrap-5.3.1-dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>

</html>