<?php
include ("classepessoa.php");
class Paciente extends Pessoa{
	private $numeroCns;
	private $tipoSanguineo;
	private $responsavel;
	private $pacienteMaiorIdade;
	private $historicoDoencaFamiliar;
	private $qualDoenca;
	private $realizouCirurgia;
	private $qualCirurgia;
	private $medicamentoControlado;
	private $planoSaude;
	private $leito;


	public function setNumeroCns($numeroCns){ $this->numeroCns=$numeroCns; }
	public function setTipoSanguineo($tipoSanguineo){ $this->tipoSanguineo=$tipoSanguineo; }
	public function setResponsavel($responsavel){ $this->responsavel=$responsavel; }
	public function setPacienteMaiorIdade($pacienteMaiorIdade){ $this->pacienteMaiorIdade=$pacienteMaiorIdade; }
	public function setHistoricoDoencaFamiliar($historicoDoencaFamiliar){ $this->historicoDoencaFamiliar=$historicoDoencaFamiliar; }
	public function setQualDoenca($qualDoenca){ $this->qualDoenca=$qualDoenca; }
	public function setRealizouCirurgia($realizouCirurgia){ $this->realizouCirurgia=$realizouCirurgia; }
	public function setMedicamentoControlado($medicamentoControlado){ $this->medicamentoControlado=$medicamentoControlado; }
	public function setPlanoSaude($planoSaude){ $this->planoSaude=$planoSaude; }
	public function setLeito($leito){ $this->leito=$leito; }
	
	public function getNumeroCns(){ return $this->numeroCns; }
	public function getTipoSanguineo(){ return $this->tipoSanguineo; }
	public function getResponsavel(){ return $this->responsavel; }
	public function getPacienteMaiorIdade(){ return $this->pacienteMaiorIdade; }
	public function gethistoricoDoencaFamiliar(){ return $this->historicoDoencaFamiliar; }
	public function getQualDoenca(){ return $this->qualDoenca; }
	public function getRealizouCirurgia(){ return $this->realizouCirurgia; }
	public function getMedicamentoControlado(){ return $this->medicamentoControlado; }
	public function getPlanoSaude(){ return $this->planoSaude; }
	public function getLeito(){ return $this->leito; }



	public function cadastrarPaciente(){
		$id_pessoa = $this->cadastrar();
		echo "$id_pessoa";
	}
}
?>