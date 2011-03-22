<?php

namespace br\com\rodrigo\biblioteca\entidades
{

	class Bibliotecario extends Pessoa {

		private $login;
		private $senha;
		private $multaDevolucao;
	

		public function setLogin($login) {
			
			$this->login = $login;
		}
	
		public function getLogin() {
			
			return $this->login;
		}
		
		public function setSenha($senha) {
			
			$this->senha = $senha;
		}
	
		public function getSenha() {
		
			return $this->senha;
		}
		
		public function setMultaDevolucao($devolucao) {
			
			$this->multaDevolucao = $devolucao;
		}
	
		public function getMultaDevolucao() {
			
			return $this->multaDevolucao;

		}

	}
}