<?php 
session_start();
function my_autoloader($class) {
    include 'model/' . $class . '.php';
}

spl_autoload_register('my_autoloader');
require('controllers/publicController.php');



try {

	if(isset($_GET['page'])) {
                                                // <-----------------------  SECTION FRONT -----------------------> //

		if($_GET['page'] == "commentsView")
			commentsView();
		elseif($_GET['page'] == "postComment")
		postComment();
		elseif($_GET['page'] == "chapters")
			readAll();
		elseif($_GET['page'] == "delete") 
			delete();
		elseif($_GET['page'] == "login")
			login();
		elseif($_GET['page'] == "report") 
			report();
		elseif($_GET['page'] == "register")
			register();

												// <-----------------------  SECTION BACK -----------------------> //														

		elseif(isset($_SESSION['id']) && $_GET['page'] == "disconnect")
			disconnect();
		elseif(isset($_SESSION['id']) && $_GET['page'] == "deleteComment") 
			deleteComment();
		elseif(isset($_SESSION['id']) && $_GET['page'] == "validateComment") 
			validateComment();
		elseif(isset($_SESSION['id']) && $_GET['page'] == "edit") 
			edit();
		elseif(isset($_SESSION['id']) && $_GET['page'] == "create") 
			create();
		elseif(isset($_SESSION['id']) && $_GET['page'] == "admin")
			admin();
		elseif(isset($_SESSION['id']) && $_GET['page'] == "showComments") 
			showComments();
		else
			error(); 
	}
	else
		home();
} 
catch (Exception $e) {
	$errorMsg =$e->getMessage();
	require('views/frontend/errorView.php');
}
?>

