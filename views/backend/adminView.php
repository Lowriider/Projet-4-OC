
<?php ob_start();
	if(isset($_SESSION['nickname'])) { 
	 ?>
	 <div class="disconnect">
	 	<p class="msgHome">Bonjour <a href="index.php?page=admin"><?=$_SESSION['nickname']?></a> et bienvenue sur vôtre blog</p>
		<a href="index.php?page=disconnect"class="btn btn-primary">Déconnexion</a>
     </div>
	<?php }
	else
		var_dump($_SESSION['nickname']);
	
	if(isset($_SESSION['message'])){ ?>

		<div class="alert alert-<?=$_SESSION['msg_type']?>">
		<?php
		echo $_SESSION['message'];
		unset($_SESSION['message']);
	}
$login  = ob_get_clean(); ?>

<?php ob_start(); ?>
	<h1>Interface Admin !</h1>
	<p>Bienvenue sur l\'interface Admin du site !</p>
<?php $headerText = ob_get_clean(); ?>

<?php ob_start(); ?>
<a href="index.php?page=create"> <h1>Publier un article</h1> </a>
<div class="table-responsive">
<table class="table table-hover table-dark">
	<tr>
		<th scope="col">Titre</th>
		<th scope="col">Auteur</th>
		<th scope="col">date de création</th>
		<th scope="col">Consulter</th>
		<th scope="col">Editer</th>
		<th scope="col">Supprimer</th>
	</tr>
	<?php for ($i=0; isset($article[$i]); $i++) { ?>
		<tr>
		<th scope="row"><?= $article[$i]->getTitle() ?></th>
			<td><?= $article[$i]->getAutor() ?></td>
			<td><?= $article[$i]->getCreatedAt() ?></td>
			<td><a href="index.php?page=showComments&publicationID=<?= $article[$i]->getId() ?>" class="btn btn-success">Consulter </a></td>
			<td><a href="index.php?page=edit&publicationID=<?= $article[$i]->getId() ?>"class="btn btn-primary">Éditer </a></td>
			<td><a href="index.php?page=delete&publicationID=<?= $article[$i]->getId() ?>"class="btn btn-danger">Supprimer </a></td>
		</tr>
	<?php } ?>
</table>
</div>
<a href=index.php> Retour au blog</a>
<?php $content = ob_get_clean(); ?>
<?php require('views/template.php');