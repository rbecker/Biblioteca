<?php

namespace br\com\rodrigo\biblioteca\entidades
{

	class Emprestimo{

		private $id;
		private $data;
		private $dataDevolucao;
		private $multa;
		private $bibliotecario;
		private $usuario;
		private $livro;
		private $dataProgramada;
		


		public function setId($id) {

			$this->id = $id;
		}

		public function getId() {

			return $this->id;
		}

		public function setData($data) {

			$this->data = $data;
		}

		public function getData() {

			return $this->data;
		}

		public function setdataDevolucao($dtdevolucao) {

			$this->DataDevolucao = $dtdevolucao;
		}

		public function getdataDevolucao() {

			return $this->DataDevolucao;
		}

		public function setMulta($Multa) {

			$this->multa = $Multa;
		}

		public function getMulta() {

			return $this->multa;
		}
		public function seBibliotecario($bibliotecario) {

			$this->bibliotecario = $bibliotecario;
		}

		public function getBibliotecario() {

			return $this->bibliotecario;
		}
		public function setUsuario($usuario) {

			$this->usuario = $usuario;
		}

		public function getUsuario() {

			return $this->usuario;
		}
		public function setLivro($livro) {

			$this->livro = $livro;
		}

		public function getLivro() {

			return $this->livro;
		}
		public function setdataProgramada($dataProgramada) {

			$this->dataProgramada = $dataProgramada;
		}

		public function getdataProgramada() {

			return $this->dataProgramada;
		}


	}
}