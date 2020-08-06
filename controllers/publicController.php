<?php 


                                                // <-----------------------  SECTION CLIENT -----------------------> //


function home () {

    $articleManager = new ArticleManager();
    $article = $articleManager->getAll();
    include('views/frontend/indexView.php');
}

function register() {
    
    if(!empty($_POST)) {
        $validation = true;
        if(!isset($_POST['password'],$_POST['nickname'])) {
            $validation = false;
            $_SESSION['message'] = " les champs n'existent pas !";
            $_SESSION['msg_type'] = "danger";
        }
        if(strlen($_POST['password']) <= 8){
            $validation = false;
            $_SESSION['message'] = " Le mot de passe doit être supérieur ou égal à 8 caratères !";
            $_SESSION['msg_type'] = "danger";
        }
        if(strlen($_POST['nickname']) <= 3){
            $validation = false;
            $_SESSION['message'] = " Le pseudo doit être supérieur ou égal à 3 caratères !";
            $_SESSION['msg_type'] = "danger";
        }
        
        if($validation) {
            $_POST['password'] = password_hash($_POST['password'], PASSWORD_DEFAULT);
            $user = new User([
                'pass' => $_POST['password'],
                'nickname' => $_POST['nickname']
            ]);
            $userManager = new UserManager();
            $userManager->add($user);
            $_SESSION['message'] = " Vous êtes maintenant inscrit sur le site !";
            $_SESSION['msg_type'] = "success";
               
            header('location: index.php');
        } 
    }
    include('views/frontend/registerView.php');
}

function login() {

    if(!empty($_POST['nickname']) && !empty($_POST['password'])) {
        $log = true;
        if(!isset($_POST['nickname'],$_POST['password'])) {
                $log = false;
                $_SESSION['message'] = " les champs n'existent pas !";
                $_SESSION['msg_type'] = "danger";
                header('location: index.php');
        }
        if($log) {
            $userManager = new UserManager();
            $result = $userManager->verify($_POST['nickname']);

            if($result &&  password_verify($_POST['password'], $result->getPass())) {
                $_SESSION['id'] = $result->getId();
                $_SESSION['nickname'] = $result->getNickname();
                $_SESSION['message'] = "Vous êtes connecté !";
                $_SESSION['msg_type'] = "success";
                header('location: index.php?page=admin');
            }
        }
    }
    else {
        header('location: index.php');
        $_SESSION['message'] = " Un des champs est vide !";
        $_SESSION['msg_type'] = "danger";
    }
}

function disconnect() {

    $_SESSION['message'] = "Vous êtes maintenant Déconnecté !";
    $_SESSION['msg_type'] = "success";
    header('location: index.php');
    var_dump('HELLO');
    session_destroy();
    unset($_SESSION);
}

function commentsView() {
   
    $articleManager = new ArticleManager();
    if(!$article = $articleManager->get($_GET['publicationID'])) {
        header('Location: index.php');
        exit();
    }
    $commentManager = new CommentManager();
    $comment = $commentManager->getAllByArticle();
    include('views/frontend/commentsView.php');
}
function postComment() {
    $ID = $_GET['publicationID'];
    if(!empty($_POST['autor']) && !empty($_POST['content'])) {
        $validation = true;
        if(!isset($_POST['autor'], $_POST['content'])) {
            $validation = false;
            $_SESSION['message'] = " les champs n'existent pas !";
            $_SESSION['msg_type'] = "danger";

        }
        if($validation){ 
            $comment = new Comment([
            'idArticle'=> $ID,
            'autor' => $_POST['autor'],
            'content' => $_POST['content'],
            ]);
            $commentAdd = new CommentManager();
            $commentAdd->add($comment,$ID);
            $_SESSION['message'] = "Le commentaire a bien été enregistré !";
            $_SESSION['msg_type'] = "success";
            header('location: index.php?page=commentsView&publicationID='.$ID.'');
        }
    }
    else {
        $_SESSION['message'] = " Un des champs est vide !";
        $_SESSION['msg_type'] = "danger";
        header('location: index.php?page=commentsView&publicationID='.$ID.'');
    }

}
function report() {
    if (isset($_GET['commentID'],$_GET['publicationID'])) { 
        $id = $_GET['commentID'];
        $ID = $_GET['publicationID'];
        $commentReport = new CommentManager();
        $commentReport->report($id);
        $_SESSION['message'] = "Le commentaire a bien été signalé !";
        $_SESSION['msg_type'] = "success";
        header('location: index.php?page=commentsView&publicationID='.$ID.'');
    }
}


                                                // <-----------------------  SECTION ADMIN -----------------------> //


function admin() {
    $articleManager = new ArticleManager();
    $article = $articleManager->getAll();
    include('views/backend/adminView.php');
}

function edit() {
    if(!empty($_POST['editTitle']) && !empty($_POST['editAutor']) && !empty($_POST['editContent']) && !empty($_POST['editExcerpt'])) {
        $validation = true;
       if(!isset($_POST['editTitle'],$_POST['editAutor'],$_POST['editContent'],$_POST['editExcerpt'])) {
        $validation = false;
        $_SESSION['message'] = " les champs n'existent pas !";
        $_SESSION['msg_type'] = "danger";
       }
       if($validation) {
            $articleManager = new ArticleManager();
            $article = new Article([
                'title' =>  $_POST['editTitle'],
                'autor' => $_POST['editAutor'],
                'content' => $_POST['editContent'],
                'excerpt' => $_POST['editExcerpt'],
                'id' => $_GET['publicationID']
            ]);
            $articleManager->edit($article);
            $_SESSION['message'] = "L'article a bien été édité !";
            $_SESSION['msg_type'] = "success";
            header('location: index.php?page=admin');
       }
    }
    $_SESSION['message'] = " Un des champs est vide !";
    $_SESSION['msg_type'] = "danger";
    $articleManager = new ArticleManager();
    $article = $articleManager->get($_GET['publicationID']);
    include('views/backend/editView.php');
}

function create() {
    
    if(!empty($_POST['title']) && !empty($_POST['autor']) && !empty($_POST['content']) && !empty($_POST['excerpt'])) {
        $validation = true;
        if(!isset($_POST['title'],$_POST['autor'],$_POST['content'],$_POST['excerpt'])) {
            $validation = false;
            $_SESSION['message'] = " les champs n'existent pas !";
            $_SESSION['msg_type'] = "danger";
        }
        if($validation) {
            $article = new Article([
            'title' =>  $_POST['title'],
            'autor' => $_POST['autor'],
            'content' => $_POST['content'],
            'excerpt' => $_POST['excerpt']
            ]);
            $articleManager = new ArticleManager();
            $articleManager->add($article);
            $_SESSION['message'] = "L'article a bien été créé!";
            $_SESSION['msg_type'] = "success";
            header('location: index.php?page=admin');
        }
        
    }
    $_SESSION['message'] = " Un des champs est vide !";
    $_SESSION['msg_type'] = "danger";
    include('views/backend/createView.php');
    
}
function delete() {
    if(isset($_GET['publicationID'])) {
		$articleDelete = new ArticleManager();
        $articleDelete->delete($_GET['publicationID']);
        $_SESSION['message'] = "L'article a bien été supprimé !";
        $_SESSION['msg_type'] = "danger";
		header('location: index.php?page=admin');
    }
}    

function showComments() {
    
    $articleManager = new ArticleManager();
    $article = $articleManager->get($_GET['publicationID']);
    $commentManager = new CommentManager();
    $comment = $commentManager->getAllByArticle();
    include('views/backend/readView.php');
    
}

function deleteComment() {
    if(isset($_GET['commentID'],$_GET['publicationID'])) {
        $id = $_GET['commentID'];
        $ID = $_GET['publicationID'];
        $commentRemove = new CommentManager();
        $commentRemove->delete($id);
        $_SESSION['message'] = "Le commentaire a bien été supprimé !";
        $_SESSION['msg_type'] = "danger";
        header('location: index.php?page=showComments&publicationID='.$ID.'');
    }
}
function validateComment() {
    if (isset($_GET['commentID'],$_GET['publicationID'])) {
        $id = $_GET['commentID'];
        $ID = $_GET['publicationID'];
        $commentPublish = new CommentManager();
        $commentPublish->publish($id);
        $_SESSION['message'] = "Le commentaire est autorisé !";
        $_SESSION['msg_type'] = "success";
        header('location: index.php?page=showComments&publicationID='.$ID.'');
    }
}
function error() {
    include('views/frontend/errorView.php');
}


