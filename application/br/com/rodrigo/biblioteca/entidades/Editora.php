<?php

namespace br\com\rodrigo\biblioteca\entidades
{
	class Editora extends Pessoa {

		private $cnpj;

		public function setCnpj($cnpj) {
			$this->cnpj = $cnpj;
		}
	
		public function getCnpj() {
			return $this->cnpj;
		}
	}
}