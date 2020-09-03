
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
  <h1>Créez votre article!</h1>
<?php $headerText = ob_get_clean(); ?>              
  
<?php ob_start(); ?>
    <script src="https://cdn.tiny.cloud/1/8a24qvjqmpg9bnm20w9mo4tg7o3ohwtc6xfqoc2iomjb1xsp/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
      tinymce.init({
        selector: '#content',
        skin: 'oxide-dark',
        content_css: 'dark',
        height:500,
        width:600
      });
      tinymce.init({
        selector: '#excerpt',
        skin: 'oxide-dark',
        content_css: 'dark',
        height:250,
        width:600
      });
    </script>
<fieldset class="formulaire">
  <form method="POST">
     <p>
      <div id= formulaire>
        <legend>Nouvelle Publication</legend> <!-- Titre du fieldset --> 
        <div class="editTitle w-25">
          <label for="titre"> Entrez le titre de votre publication </label><br />
          <input type="text" name="title" class="form-control" /><br />
        </div>
        <div class="editAutor w-25">
          <label for="auteur"> Entrez le nom de l'auteur </label><br />
          <input type="text" name="autor" class="form-control" /><br />
        </div>
         <label for="contenu"> Écrivez votre article </label><br />
          <div id = "container">
              <textarea name="content" id="content" rows="25" cols="100">
              </textarea>
          </div>
          <label for="extrait"> Renseignez un extrait </label><br />
          <div id="container">
          <textarea name="excerpt" id="excerpt" maxlength="255" rows="6" cols="100">
              </textarea>
          </div>
        </div>
      </div><br />
          <input type="submit" value="envoyer" class="btn btn-primary"/>  
     </p> 
  </form>
</fieldset>
<a href=index.php?page=admin> Retour à l'interface d'administration</a><br />
<a href=index.php> Retour au blog</a>

<?php $content = ob_get_clean(); ?>
<?php require('views/template.php');
