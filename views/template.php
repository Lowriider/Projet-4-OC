<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="public/css/bootstrap.min.css">
        <link rel="stylesheet" href="public/css/style.css">
        <title>Blog Écrivain</title>
    </head>
    <body class='text-center'>
        <header>
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.php"> Blog d'Écrivain</a>
                        <a class="navbar-brand" href="index.php?page=chapters"> Lire la suite des chapitres?</a>
                    </div class="login">
                        <?= $login ?>
                    </div>
                    </div>
                </div>
            </nav>
            <div class="jumbotron">
                <div class="container">
                    <?= $headerText ?>
                </div>
            </div>
        </header>
        <?= $content ?>
        <footer id="footer" class="container-fluid">
                <p>Tous droits réservés © <a href="https://powned.fr">Lowriider</a> 2020  - Formation Openclassrooms - Développeur Web Junior - Projet n°4 : Créez un blog pour un écrivain</p>
        </footer>
        <script src="public/js/bootstrap.min.js"></script>
    </body>
</html>