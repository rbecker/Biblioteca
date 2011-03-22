<?php

namespace br\com\rodrigo\biblioteca\entidades
{

	class Usuario extends Pessoa {

		private $Cnpj;
	
	
		public function setCnpj($cnpj) {
			
			$this->Cnpj = $cnpj;
		}
	
		public function getCnpj() {
			
			return $this->Cnpj;

		}
		

	}
}