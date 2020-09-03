<?php 
class UserManager {
    private $db;

    public function __construct()
    {
        try 
        {
            $this->db = new PDO ('mysql:host=db5000834980.hosting-data.io; dbname=dbs737598',  'dbu551191', 'L@vi3e$tb3lle' , array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
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