<?php

namespace br\com\rodrigo\biblioteca\entidades
{

	class Prateleira {

		private $id;
		private $posicao;


		public function setId($id) {
				$this->id = $id;
		}

		public function getId() {
			return $this->id;
		}

		public function setPosicao($pos) {
				$this->posicao = $pos;
		}

		public function getPosicao() {
			return $this->posicao;
		}


	}
}