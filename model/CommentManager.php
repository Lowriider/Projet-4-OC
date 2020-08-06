<?php
class CommentManager {
    private $db;

    public function __construct()
    {
        try 
        {
            $this->db = new PDO ('mysql:host=localhost; dbname=blog;charset=utf8' , 'root' , '' , array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        }
        catch(Exception $e)
        {
            die('Erreur : ' .$e->getMessage());
        }
    }
    public function add(Comment $comment, $ID) {

        $req =$this->db->prepare('INSERT INTO commentaires(idArticle,autor,content,created_at) VALUES (:idArticle,:autor,:content,NOW())');
        $req ->execute([
                        'idArticle' => $ID,
                        'autor' => $comment->getAutor(),
                        'content' => $comment->getContent()
            ]);
    }
    public function getAllByArticle() {
        $comments = [];
        $req = $this->db->prepare('SELECT * FROM commentaires WHERE idArticle =? ORDER BY id DESC LIMIT 0,5');
        $req -> execute([
            $_GET['publicationID']
        ]);
        while($comment = $req->fetch(\PDO::FETCH_ASSOC)){
            $comments[] = new Comment($comment);
        }
        return $comments;
    }
    public function report($id) {
    
        $req =  $this->db -> prepare("UPDATE commentaires SET visible='0' WHERE id=:id");
        $req -> execute([
            'id' => $id
        ]);

        
    }
    public function publish($id) {

        $req = $this->db -> prepare("UPDATE commentaires SET visible='1' WHERE id=:id");
        $req -> execute([
            'id' => $id
        ]);
    
    }
    public function delete($id) {
 
        $req = $this->db -> prepare("DELETE FROM commentaires WHERE id=$id");
        $req ->execute();
        
    }
}