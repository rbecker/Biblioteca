<?php
namespace br\com\rodrigo\biblioteca\entidades
{

	abstract class Pessoa {

		private $id;
		private $nome;

		public function setId($id) {
				$this->id = $id;
		}

		public function setNome($nome) {
			$this->nome = $nome;
		}

		public function getId() {
			return $this->id;
		}

		public function getNome() {
			return $this->nome;
		}
	}
}