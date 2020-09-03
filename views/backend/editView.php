
<?php ob_start(); ?>
    <div class="disconnect">
        <p class="msgHome">Bonjour <a href="index.php?page=admin"><?=$_SESSION['nickname']?></a> et bienvenue sur vôtre blog</p>
		<a href="index.php?page=disconnect"class="btn btn-primary">Déconnexion</a>
     </div>
<?php if(isset($_SESSION['message'])){ ?>

    <div class="alert alert-<?=$_SESSION['msg_type']?>">
    <?php   echo $_SESSION['message'];
    unset($_SESSION['message']); 
}

 $login  = ob_get_clean(); ?>

<?php ob_start(); ?>
    <h1>Éditer un article !</h1>
<?php $headerText = ob_get_clean(); ?>

<?php ob_start(); ?>
<script src="https://cdn.tiny.cloud/1/8a24qvjqmpg9bnm20w9mo4tg7o3ohwtc6xfqoc2iomjb1xsp/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
    tinymce.init({
      selector: '#content',
      skin: 'oxide-dark',
      content_css: 'dark',
      height:500,
      width:600,
    });
    tinymce.init({
      selector: '#excerpt',
      skin: 'oxide-dark',
      content_css: 'dark',
      height:250,
      width:600,
    });
</script>
    <title>Blog Écrivain</title>
</head>
<body>
    <div id="editor"class="container">
        <fieldset class="formulaire">
            <form method="POST">
                <div id=formulaire>
                <input type="hidden" name="publicationID" value="<?= $_GET['publicationID']; ?>"></input>
                    <legend>Editez votre article</legend> <!-- Titre du fieldset -->
                    <div class="editTitle w-25">
                        <label for="titre"> Modifier le titre de votre publication? </label><br />
                        <input type="text" name="editTitle" value="<?= $article->getTitle(); ?>" class="form-control"  /><br />
                    </div>
                    <div class="editAutor w-25">
                        <label for="auteur"> Modifier le nom de l'auteur? </label><br />
                        <input type="text" name="editAutor" value="<?= $article->getAutor(); ?>" class="form-control"  /><br />
                    </div>
                    <label for="contenu"> Modifier votre article? </label><br />
                    <div id="contenu" class="container">
                        <textarea name="editContent" id="content" rows="25" cols="100">
                            <?= $article->getContent(); ?>
                        </textarea>
                    </div>
                    <label for="extrait"> Modifier l'extrait? </label><br />
                    <div id="extrait" class="container">
                        <textarea name="editExcerpt" id="excerpt" maxlength="255" rows="6" cols="100">
                            <?= $article->getExcerpt(); ?>
                        </textarea>
                    </div>
                </div><br />
                <button type="submit" class="btn btn-primary">Enregistrer les modifications</button><a href="index.php?page=admin"class="btn btn-danger">Annuler </a>
            </form>
        </fieldset>
    </div>

<?php $content = ob_get_clean(); ?>
<?php require('views/template.php');