<?php

namespace br\com\rodrigo\biblioteca\entidades
{

	class Biblioteca extends Pessoa{

		private $cnpj;
		private $valorMulta;

		public function setCnpj($cnpj) {
			$this->cnpj = $cnpj;
		}

		public function getCnpj() {
			return $this->cnpj;
		}

		public function setValorMulta($valorMulta) {
			$this->valorMulta = $valorMulta;
		}

		public function getValorMulta() {
			return $this->valorMulta;
		}
	}
}