<?php

namespace br\com\rodrigo\biblioteca\entidades
{

	class Prateleira {

		private $id;
		private $posicao;
		private $livros;
		private $genero;


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
		public function setLivros($livros) {
				$this->livros = $livros;
		}

		public function getLivros() {
			return $this->livros;
		}
		public function setGenero($genero) {
				$this->genero = $genero;
		}

		public function getGenero() {
			return $this->genero;
		}
		


	}
}