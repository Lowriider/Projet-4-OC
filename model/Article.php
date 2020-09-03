<?php 

class Article {
    private $id;
    private $title;
    private $content;
    private $createdAt;
    private $autor;
    private $excerpt;

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

    /**
     * Get the value of title
     */ 
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * Set the value of title
     *
     * @return  self
     */ 
    public function setTitle($title)
    {
        $this->title = $title;
    }

    /**
     * Get the value of content
     */ 
    public function getContent()
    {
        return $this->content;
    }


    public function setContent($content)
    {
        $this->content = $content;
    }

    /**
     * Get the value of createdAt
     */ 
    public function getCreatedAt()
    {
        return $this->createdAt;
    }

    /**
     * Set the value of createdAt
     *
     * @return  self
     */ 
    public function setCreated_at($createdAt)
    {
        $this->createdAt = $createdAt;
    }

    /**
     * Get the value of autor
     */ 
    public function getAutor()
    {
        return $this->autor;
    }

    /**
     * Set the value of autor
     *
     * @return  self
     */ 
    public function setAutor($autor)
    {
        $this->autor = $autor;

    }

    /**
     * Get the value of excerpt
     */ 
    public function getExcerpt()
    {
        return $this->excerpt;
    }

    /**
     * Set the value of excerpt
     *
     * @return  self
     */ 
    public function setExcerpt($excerpt)
    {
        $this->excerpt = $excerpt;

        return $this;
    }
}

