<?php
	include ("../includes/conexao.php");
interface PessoaInterface{
	//public function cadastrar();
	//public function alterar();
	//public function listar();
}
	class Pessoa implements PessoaInterface{

		protected $nome;
		protected $email;
		protected $telefone1;
		protected $telefone2;
		protected $rg;
		protected $emissorRg;
		protected $cpf;
		protected $dataNascimento;
		protected $endereco;
		protected $estadoCivil;
		protected $data;

		public function setNome($nome){ $this->nome=$nome; }
		public function setEmail($email){ $this->email=$email; }
		public function setTelefone1($telefone1){ $this->telefone1=$telefone1; }
		public function setTelefone2($telefone2){ $this->telefone2=$telefone2; }
		public function setRg($rg){ $this->rg=$rg; }
		public function setEmissorRg($emissorRg){ $this->emissorRg=$emissorRg; }
		public function setCpf($cpf){ $this->cpf=$cpf; }
		public function setDataNascimento($dataNascimento){ $this->dataNascimento=$data; }
		public function setendereco($endereco){ $this->endereco=$endereco; }
		public function setEstadoCivil($estadoCivil){ $this->estadoCivil=$estadoCivil; }
		public function setData($data){ $this->data=$data; }

		public function getNome(){ return $this->nome; }
		public function getEmail(){ return $this->email; }
		public function getTelefone1(){ return $this->telefone1; }
		public function getTelefone2(){ return $this->telefone2; }
		public function getRg(){ return $this->rg; }
		public function getEmissorRg(){ return $this->emissorRg; }
		public function getCpf(){ return $this->cpf; }
		public function getDataNascimento(){ return $this->dataNascimento; }
		public function getendereco(){ return $this->endereco; }
		public function getEstadoCivil(){ return $this->estadoCivil; }
		public function getData(){ return $this->data; }

		public function cadastrar(){
			
			/*echo $sql = "INSERT INTO pessoa (nome, email, telefone, data) 			VALUES ('$this->nome', '$this->email', '$this->telefone',now())";*/
			
			$sql = "INSERT INTO pessoa (nome, email, telefone1, telefone2, rg, emissorRg, cpf, dataNascimento, endereco, estadoCivil, data) values ('$this->nome','$this->email','$this->telefone1','$this->telefone2','$this->rg','$this->emissorRg','$this->cpf','$this->dataNascimento','$this->endereco','$this->estadoCivil',now())";
			$query = $conectar->query($sql);
	
			echo $ultimo_id = $query->insert_id();

			//retorn $id_pessoa;//liberar depois de ter o id

		}
	}

?>