
  <?php ob_start(); 

  if(isset($_SESSION['message'])){ ?>
        <div class="alert alert-<?=$_SESSION['msg_type']?>">
        <?php
        echo $_SESSION['message'];
        unset($_SESSION['message']);
    }
 $login = ob_get_clean();

  ob_start(); ?>
    <form class="form-signin" method="post">
        <div class="form-signin w-25">
            <h1 class="h3 mb-3 font-weight-normal">Inscrivez vous</h1>
            <label for="nickname" class="sr-only">Email address</label>
            <input type="text" name="nickname" id="nickname" class="form-control" placeholder="Pseudo" autofocus>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" name="password" id="password" class="form-control" placeholder="Password">
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Se souvenir de moi </input>
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">S'inscrire</button>
        </div>
    </form>
<?php $content = ob_get_clean();

$headerText = '<h1> Inscrivez vous ! </h1>';

require('views/template.php');