
 
 
 <?php ob_start(); 

	if(isset($_SESSION['nickname'])) { 
		?>
		<div class="disconnect">
			<p class="msgHome">Bonjour <a href="index.php?page=admin"><?=$_SESSION['nickname']?></a> et bienvenue sur vôtre blog</p>
			<a href="index.php?page=disconnect"class="btn btn-primary">Déconnexion</a>
		</div>
		<?php 
	}
	 else { ?>
	<form action="?page=login" method="post">
		<input type="nickname" name="nickname" id="nickname" placeholder="pseudo" class="form-control" >
		<input type="password" name="password" id="password" placeholder="mot de passe" class="form-control" >
		<button type="submit" name="submit" class="btn btn-primary">Connexion</button>
		<a href=index.php?page=register class="btn btn-primary">Inscription</a>  
	</form>
	<?php }
	if(isset($_SESSION['message'])){ ?>

		<div class="alert alert-<?=$_SESSION['msg_type']?>">
		<?php   echo $_SESSION['message'];
		unset($_SESSION['message']);
	}

$login = ob_get_clean(); ?>

<?php ob_start(); ?>
	<h1>Bonjour tout le monde !</h1>
	<p>Bienvenue ! Je suis Jean Forteroche, écrivain. Vous êtes actuellement sur mon Blog où je poste au fur et
	à mesure un nouveau chapitre de mon dernier roman intitulé Billet simple pour Alaska. N\'hésitez pas
	à y laisser des commentaires !
	</p>
<?php $headerText = ob_get_clean(); ?>      

<?php ob_start();
for ($i=0; isset($article[$i]); $i ++) { ?>
			<div id="articles" class="container">
				<p><h2><?= $article[$i]->getTitle() ?></h2> par <?= $article[$i]->getAutor() ?></p>
				<p>Publié le <?= $article[$i]->getCreatedAt()?></p>
				<p><?= $article[$i]->getExcerpt() ?></p>
				<a href="index.php?page=commentsView&publicationID=<?= $article[$i]->getId()?>" class="btn btn-primary">consulter les commentaires</a>
			</div>
		<br />
    <?php } ?>
<br />
<?php $content = ob_get_clean(); ?>
<?php require('views/template.php');


