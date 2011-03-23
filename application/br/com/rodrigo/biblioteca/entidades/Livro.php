<?php

namespace br\com\rodrigo\biblioteca\entidades
{

	class Livro{

		private $id;
		private $titulo;
		private $ano;
		private $edicao;
		private $paginas;
		private $quantidade;
		private $editora;
		private $autor;
		private $genero;


		public function setId($id) {
			$this->id = $id;
		}

		public function getId() {
			return $this->id;
		}

		public function setTitulo($Titulo) {
			$this->titulo = $Titulo;
		}

		public function getTitulo() {
			return $this->titulo;
		}

		public function setAno($ano) {
			$this->ano = $ano;
		}

		public function getAno() {
			return $this->ano;
		}

		public function setEdicao($edicao) {
			$this->edicao = $edicao;
		}

		public function getEdicao() {
			return $this->edicao;
		}

		public function setPaginas($pagina) {
			$this->paginas = $pagina;
		}

		public function getPaginas() {
			return $this->paginas;
				
		}
		public function setQuantidade($qnt) {
			$this->quantidade = $qnt;
		}

		public function getQuantidade() {
			return $this->quantidade;
		}
		public function setEditora($editora) {
			$this->editora = $editora;
		}

		public function getEditora() {
			return $this->editora;
		}
		public function setAutor($autor) {
			$this->autor = $autor;
		}

		public function getAutor() {
			return $this->autor;
		}
		public function setGenero($genero) {
			$this->genero = $genero;
		}

		public function getGenero() {
			return $this->genero;
		}

	}
}