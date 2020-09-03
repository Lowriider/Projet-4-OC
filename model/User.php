<?php 

class User {
    private $id;
    private $pass;
    private $nickname;
  
    public function __construct(array $data)
    {
        $this->hydrate($data);
    }
    public function hydrate($data) {

        foreach ($data as $key => $value)
        {
          $method = 'set'.ucfirst($key);
          
          if (method_exists($this, $method))
          {
            $this->$method($value);
          }
        }
    }
    public function getId() {
        return $this->id;
    }
    public function setId($id) {
        $this->id = $id;
    }

    public function getNickname()
    {
        return $this->nickname;
    }

    public function setNickname($nickname)
    {
        $this->nickname = $nickname;

        return $this;
    }

    public function getPass()
    {
        return $this->pass;
    }

    public function setPass($pass)
    {
        $this->pass = $pass;

        return $this;
    }
}