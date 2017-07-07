<?php

class Usuario
{
    private $nome;
    private $email;
    private $telefone;

    function __construct($nome, $email, $telefone)
    {
        $this->nome = $nome;
        $this->email = $email;
        $this->telefone = $telefone;
    }

    public function getNome()
    {
        return $this->nome;
    }

    public function getEmail()
    {
        return $this->email;
    }

    public function getTelefone()
    {
        return $this->telefone;
    }

    public function verificaUsuario()
    {
        if ($this->nome == "" || $this->email == "" || $this->telefone == "") {
            throw new Exception("Usuario Invalido");
        }
    }
}
	

