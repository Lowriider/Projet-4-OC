<?php 
class UserManager {
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
    public function add(User $user) {
        // Insertion
        $req = $this->db ->prepare('INSERT INTO user ( nickname, pass, created_at) VALUES( :nickname, :pass, NOW())');
        $req->execute([
            'nickname' => $user->getNickname(),
            'pass' => $user->getPass()
        ]);
    }
    public function verify($nickname) {
        $req = $this->db->prepare("SELECT * FROM user WHERE nickname = ?");
        $req->execute([
            $nickname
        ]);
        $result = $req->fetch();
            if($result) {
                return new User($result);
            }
            return false;
    }
    
}