
<?php ob_start(); ?>
    <div class="disconnect">
        <p class="msgHome">Bonjour <a href="index.php?page=admin"><?=$_SESSION['nickname']?></a> et bienvenue sur vôtre blog</p>
		<a href="index.php?page=disconnect"class="btn btn-primary">Déconnexion</a>
     </div>
<?php $login  = ob_get_clean(); ?>

<?php ob_start(); ?>
    <h1>Consulter et gérer les commentaires</h1>
<?php $headerText = ob_get_clean(); ?>

<?php ob_start(); ?>
    <div class=article>
        <p><strong><?= htmlspecialchars($article->getTitle()) ?></strong>
            <?= htmlspecialchars($article->getCreatedAt())?></p>
        <p><?= htmlspecialchars($article->getAutor())?></p>
        <p><?= $article->getContent()?></p>
    </div>
    <table class="table table-hover table-dark">
        <tr>
            <th scope="col">Auteur</th>
            <th scope="col">Date de création</th>
            <th scope="col">Contenu</th>
            <th scope="col">Publier</th>
            <th scope="col">Supprimer</th>
        </tr>
        <?php for ($i=0; isset($comment[$i]); $i++) { 
                if ($comment[$i]->getVisible() == 0) {
                    $ID = $_GET['publicationID']; ?>
        <tr>
            <th scope="row">
                <p><strong><?= htmlspecialchars($comment[$i]->getAutor()) ?></strong>:</p>
            </th>
            <td><?= htmlspecialchars($comment[$i]->getCreatedAt())?></p>
            </td>
            <td>
                <p><?= htmlspecialchars($comment[$i]->getContent())?></p>
            </td>
            <td><a href="index.php?page=validateComment&commentID=<?= $comment[$i]->getId() ?>&publicationID=<?=$article->getId()?>"class="btn btn-primary">autoriser </a></td>
            <td><a href="index.php?page=deleteComment&commentID=<?= $comment[$i]->getId()  ?>&publicationID=<?=$article->getId()?>" class="btn btn-danger">supprimer </a></td>
        </tr>
        <?php 
    }
} ?>
    </table>
    <a href=index.php?page=admin> Retour à l'interface d'administration</a><br />
    <a href=index.php> Retour au blog</a>
<?php $content = ob_get_clean(); ?>
<?php require('views/template.php');