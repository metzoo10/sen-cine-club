<?php include 'navbar.php'; ?>
<?php include 'connexion.php'; // Connexion à la base de données

// Récupérer l'id du film passé en paramètre d'URL
$id = $_GET['id'];

// Récupérer les détails du film correspondant
$stmt = $pdo;
$stmt = $pdo->prepare("SELECT * FROM films WHERE id = ?");
$stmt->execute([$id]);
$film = $stmt->fetch();
?>


<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" type="image/x-icon" href="images/favicon/favicon.ico">
	<title><?php echo $film['titre']; ?> - Sen Ciné Club</title>
	<link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/1946a24281.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1 class="my-5"><?php echo $film['titre']; ?></h1>
		<div class="row">
			<div class="col-md-6">
				<img src="<?php echo $film['image_url']; ?>" alt="<?php echo $film['titre']; ?>" class="img-fluid border border-secondary-subtle">
			</div>
			<div class="col-md-6">
				<h3>Synopsis</h3>
				<p><?php echo $film['synopsis']; ?></p>
				<p class="fw-bold">Année de sortie : <?php echo $film['date_sortie']; ?></p>
				<p class="fw-bold">Réalisé(e) par : <?php echo $film['realisateur']; ?></p>
				<p class="fw-bold">Casting notables : <?php echo $film['cast']; ?></p>
				<p class="fw-bold">Bande annonce : <a href="<?php echo $serie['lien_ba']; ?>" target="_blank" class="fw-bold text-decoration-none"><img src="images/logos/youtube.png" alt="Logo Youtube" height="30" class="logo"></a></p>
			</div>
		</div>
	</div>

	<?php include 'footer.php'; ?>
</body>
</html>