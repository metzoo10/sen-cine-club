<?php include 'navbar.php'; ?>
<?php include 'connexion.php'; // Connexion à la base de données

// Récupérer six séries
$stmtSeries = $pdo->query("SELECT * FROM series LIMIT 6"); 
$series = $stmtSeries->fetchAll();

// Récupérer six films
$stmtFilms = $pdo->query("SELECT * FROM films LIMIT 6"); 
$films = $stmtFilms->fetchAll();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon/favicon-16x16.png">
    <link rel="manifest" href="images/favicon/site.webmanifest">
    <title>Accueil - Sen Ciné Club</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/1946a24281.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container-fluid bg-dark text-white d-flex justify-content-center align-items-center" style="height: 400px; background: url('images/poster/3.jpg') no-repeat center center; background-size: cover;">
        <div class="text-center">
            <h1 class="display-4">Bienvenue sur Sen Ciné Club !</h1>
            <p class="lead text-light">Votre guide des séries et films sénégalaises !</p>
        </div>
    </div>

    <div class="container">
        <h2 class="text-center my-5">Séries du moment</h2>
        <div class="row gx-5">
            <?php foreach ($series as $serie): ?>
                <div class="col-md-4">
                    <div class="card-mb-3">
                        <img src="<?php echo $serie['image_url']; ?>" alt="<?php echo $serie['titre']; ?>" class="card-img-top" style="object-fit: cover;">
                        <div class="my-5 card-body">
                            <a href="detail-serie.php?id=<?php echo $serie['id']; ?>" class="text-dark text-decoration-underline">
                                <h5 class="card-title text-center"><?php echo $serie['titre']; ?></h5>
                            </a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>

        <h2 class="text-center my-5">Films classiques</h2>
        <div class="row gx-5">
            <?php foreach ($films as $film): ?>
                <div class="col-md-4">
                    <div class="card-mb-3">
                        <img src="<?php echo $film['image_url']; ?>" alt="<?php echo $film['titre']; ?>" class="card-img-top" style="object-fit: cover;">
                        <div class="my-5 card-body">
                            <a href="detail-film.php?id=<?php echo $film['id']; ?>" class="text-dark text-decoration-underline">
                                <h5 class="card-title text-center"><?php echo $film['titre']; ?></h5>
                            </a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>

    <?php include 'footer.php'; ?>
</body>
</html>
