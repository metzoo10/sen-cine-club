<?php include 'navbar.php'; ?>
<?php
include 'connexion.php'; // Connexion à la base de données

// Récupérer le nombre total de séries
$stmt = $pdo->query("SELECT COUNT(*) AS total FROM series");
$row = $stmt->fetch();
$total_series = $row['total'];

// Définir le nombre de séries par page
$series_per_page = 10;

// Calculer le nombre total de pages
$total_pages = ceil($total_series / $series_per_page);

// Récupérer la page actuelle à partir de l'URL
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
if ($page < 1) {
    $page = 1;
} elseif ($page > $total_pages) {
    $page = $total_pages;
}

// Calculer l'offset
$offset = ($page - 1) * $series_per_page;

// Requête pour récupérer les séries pour la page actuelle
$stmt = $pdo->prepare("SELECT * FROM series LIMIT :limit OFFSET :offset");
$stmt->bindValue(':limit', $series_per_page, PDO::PARAM_INT);
$stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
$stmt->execute();
$series = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="images/favicon/favicon.ico">
    <title>Séries - Sen Ciné Club</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/1946a24281.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container-fluid bg-dark text-white d-flex justify-content-center align-items-center" style="height: 400px; background: url('images/poster/1.png') no-repeat center center; background-size: cover;">
        <div class="text-center">
            <h1 class="display-4">Séries</h1>
            <p class="lead text-light">Retrouvez toutes les dernières séries et leurs infos.</p>
        </div>
    </div>

    <div class="container my-5">
        <div class="row gx-5">
            <?php foreach ($series as $serie): ?>
                <div class="col-md-4">
                    <div class="card-mb-3">
                        <img src="<?php echo $serie['image_url']; ?>" class="card-img-top" alt="<?php echo $serie['titre']; ?>" style="object-fit: cover;">
                        <div class="my-5 card-body">
                            <a href="detail-serie.php?id=<?php echo $serie['id']; ?>" class="text-dark text-decoration-underline">
                                <h5 class="card-title text-center"><?php echo $serie['titre']; ?></h5>
                            </a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>

        <!-- Pagination -->
        <nav>
            <ul class="pagination justify-content-center">
                <?php if ($page > 1): ?>
                    <li class="page-item">
                        <a class="page-link" href="?page=<?php echo $page - 1; ?>">Précédent</a>
                    </li>
                <?php endif; ?>

                <?php for ($i = 1; $i <= $total_pages; $i++): ?>
                    <li class="page-item <?php echo ($i == $page) ? 'active' : ''; ?>">
                        <a class="page-link" href="?page=<?php echo $i; ?>"><?php echo $i; ?></a>
                    </li>
                <?php endfor; ?>

                <?php if ($page < $total_pages): ?>
                    <li class="page-item">
                        <a class="page-link" href="?page=<?php echo $page + 1; ?>">Suivant</a>
                    </li>
                <?php endif; ?>
            </ul>
        </nav>
    </div>

    <?php include 'footer.php'; ?>
</body>
</html>
