<?php

namespace br\com\rodrigo\biblioteca\entidades
{

	class Usuario extends Pessoa {
		private $cpf;
	
		public function setCpf($cpf) {
			
			$this->cpf = $cpf;
		}
	
		public function getCpf() {
			
			return $this->cpf;

		}
	}
}