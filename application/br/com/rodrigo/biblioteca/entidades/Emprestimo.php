<?php

namespace br\com\rodrigo\biblioteca\entidades
{

	class Emprestimo{

		private $id;
		private $data;
		private $dataDevolucao;
		private $multa;
		//private $bibliotecario


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

	}
}