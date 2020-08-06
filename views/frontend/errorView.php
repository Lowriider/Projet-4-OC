
<?php ob_start();
	if(isset($_SESSION['nickname'])) { ?>
		<a href="index.php?page=deconnexion"class="btn btn-primary">Déconnexion</a>
		<p class="msgHome">Bonjour <?=$_SESSION['nickname']?> et bienvenue sur vôtre blog</p>
<?php }
$login  = ob_get_clean(); ?>

<?php ob_start(); ?>
<h1>Oooops page non trouvée !</h1>
<?php $headerText = ob_get_clean(); ?>            
               
<?php ob_start(); ?>

<img src="public/image/NBPIF.png" alt="" srcset="">


<?php $content = ob_get_clean(); ?>
<?php require('views/template.php');

