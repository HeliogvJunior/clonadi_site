<?php

class ConectaPDO extends PDO {

    private $dsn = 'mysql:dbname=clonadi_loja;host=localhost;charset=utf8';
    //private $dsn = 'mysql:dbname=db526266011;host=localhost;charset=utf8';
    private $user = 'clonadi_loja';
    //private $user = 'root';
    //private $user = 'quizdigt';
    //private $password = '872210(quiz).';
    private $password = '231489(mais).';
    public $handle = null;

    function __construct() {
        try {
            if ($this->handle == null) {
                $dbh = parent::__construct($this->dsn, $this->user, $this->password);
                $this->handle = $dbh;
                return $this->handle;
            }
        } catch (PDOException $e) {
            echo 'Connection failed: ' . $e->getMessage();
            return false;
        }
    }

    function __destruct() {
        $this->handle = NULL;
    }
    
    
}

/*

  define('HOST', 'localhost');
  //define('PORTA', 5432);
  define('USER', 'quizdigt');
  define('PASS', '872210(quiz).');
  define('BASE', 'quizdigt_jogo');

  class db_pdo {

  public static $db;

  public function instance() {
  if (!self::$db) {
  self::$db = $this->conecta();
  }
  return self::$db;
  }

  private function conecta() {
  //$conexao = 'pgsql:host='.HOST.';port='.PORTA.';dbname='.BASE;
  $conexao = 'mysql:host=' . HOST . ';dbname=' . BASE;

  try {
  $conecta = new PDO($conexao, USER, PASS);
  $conecta->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  echo 'conectado';
  } catch (PDOException $erro_conexao) {
  echo 'Erro ao conectar, ' . $erro_conexao->getMessage();
  }

  return $conecta;
  }

  }
 * 
 */
?>
