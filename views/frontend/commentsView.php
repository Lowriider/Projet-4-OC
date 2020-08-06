<?php ob_start();
if(isset($_SESSION['nickname'])) { 
     ?>
    <div class="disconnect">
        <p class="msgHome">Bonjour <a href="index.php?page=admin"><?=$_SESSION['nickname']?></a> et bienvenue sur vôtre blog</p>
		<a href="index.php?page=deconnexion"class="btn btn-primary">Déconnexion</a>
     </div>
    <?php }
else { ?>
	<form action="?page=login" method="post">
		<input type="nickname" name="nickname" id="nickname" placeholder="pseudo" class="form-control">
		<input type="password" name="password" id="password" placeholder="mot de passe" class="form-control">
		<button type="submit" name="submit" class="btn btn-primary">Connexion</button>
		<a href=index.php?page=register class="btn btn-primary">Inscription</a>  
	</form>
    <?php }
if(isset($_SESSION['message'])){ ?>

    <div class="alert alert-<?=$_SESSION['msg_type']?>">
    <?php
    echo $_SESSION['message'];
    unset($_SESSION['message']);
}
$login  = ob_get_clean(); ?>

<?php ob_start(); ?>
	<h1>Bonne lecture !</h1>
<?php $headerText = ob_get_clean(); ?>            
               
<?php ob_start(); ?>

 <div class=article>
 <p><strong><?= htmlspecialchars($article->getTitle()) ?></strong>
 <?= htmlspecialchars($article->getCreatedAt())?></p>
 <p><?= htmlspecialchars($article->getAutor())?></p>
 <p><?= $article->getContent()?></p>
</div>
<h1>Commentaires</h1>
<?php for ($i=0; isset($comment[$i]); $i++) { 
         if ($comment[$i]->getVisible() == 1) {
         $ID = $_GET['publicationID']; ?>
         <div class=commentaires>
            <input type="hidden" name="publicationID" value="<?= $_GET['publicationID']; ?>"></input>
            <p><strong><?= htmlspecialchars($comment[$i]->getAutor()) ?></strong>:<?= htmlspecialchars($comment[$i]->getCreatedAt())?></p>
            <p><?= htmlspecialchars($comment[$i]->getContent())?></p>
            <a href="index.php?page=report&commentID=<?= htmlspecialchars($comment[$i]->getId());?>&publicationID=<?=htmlspecialchars($article->getId())?>"class="btn btn-danger">signaler </a>
         </div>
     <?php }
     } ?>
        <fieldset class="formulaire">
            <form method="POST" action="index.php?page=postComment&publicationID=<?=htmlspecialchars($article->getId())?>">
                <input type="hidden" name="publicationID" value="<?= htmlspecialchars($_GET['publicationID']);?>"></input>
                <!-- renvoie l'ID en POST -->
                    <div class="com">
                        <legend>laissez un commentaire.</legend> <!-- Titre du fieldset -->
                        <div class="pseudoInput w-25">
                            <label for="pseudo"> Tapez votre pseudo </label>
                            <input type="text" name="autor" class="form-control"/>
                            <br />
                        </div>
                        <div id="content">
                            <textarea name="content" id="content" rows="10" cols="40"></textarea>
                        </div>
                    </div><br />
                    <button type="submit" class="btn btn-primary" value="Enovyer">Envoyer</button>
            </form>
        </fieldset>

<?php $content = ob_get_clean(); ?>
<?php require('views/template.php');