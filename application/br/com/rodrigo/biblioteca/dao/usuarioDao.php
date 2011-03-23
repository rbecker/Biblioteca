<?php
namespace br\com\rodrigo\biblioteca\entidades{

	class UsuarioDao {

		public function save (Usuario $usuario){

			$sql = "insert into biblioteca values(?,?,?,?)";
    		$stm = ConexaoMysql::getInstance()->prepare($sql);
    		$stm->execute(
    		
            array(
            
            $usuario->getId(),
            $usuario->getCpf(),
            $usuario->getNome()
            
						)
					);
			}
		
		public function getById ($id){
			
		}
		
		public function remove (Usuario $usuario){
			
			$sql = "delete from biblioteca WHERE ";
    		$stm = ConexaoMysql::getInstance()->prepare($sql);
    		$stm->execute();
		}
	}
}