<?php 

class ArticleManager {
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
    public function add(Article $article) {
                
        $req = $this->db -> prepare ('INSERT INTO articles(title,autor,content,excerpt,created_at) VALUES (:title, :autor, :content ,:excerpt ,NOW())  ');
        $req->execute([
            'title' =>  $article->getTitle(),
            'autor' => $article->getAutor(),
            'content' => $article->getContent(),
            'excerpt' => $article->getExcerpt()
        ]);

    }
    public function getAll() {
        $articles=[];
        $req = $this->db->prepare('SELECT * FROM articles ORDER BY id DESC LIMIT 0, 5');
        $req -> execute();
        while($article = $req->fetch(\PDO::FETCH_ASSOC)){
            $articles[] = new Article($article);
        }
        return $articles;
    }
    
    public function get($id) {

        $req = $this->db->prepare('SELECT * FROM articles WHERE id = ? ORDER BY ID');
        $req->execute([
            $id
        ]);
        $article = $req->fetch();
        if($article) 
            return new Article($article);
        else 
            return false;
    }
    public function delete($id) {

        $req = $this->db->prepare("DELETE FROM articles WHERE id=$id");
        $req ->execute();
        $req = $this->db->prepare("DELETE FROM commentaires WHERE idArticle=$id");
        $req ->execute();
    }
    public function edit(Article $article) {
     
        $req = $this->db-> prepare("UPDATE articles SET title=:title, autor=:autor, content=:content , excerpt=:excerpt WHERE id=:id") or die($this->db->error);
        $req ->execute(array(
            'title' => $article->getTitle(),
            'autor' => $article->getAutor(),
            'content' => $article->getContent(),
            'excerpt' => $article->getExcerpt(),
            'id' => $article->getId()
        ));
    }
}