<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require('addpatient.php');

class QueryPatient extends CI_Controller {

 function __construct()
 {
   parent::__construct();
   $this->load->model('patient','',TRUE);
   $this->load->model('user','',TRUE);
 }

 function index()
 {
	$session_data = $this->session->userdata('logged_in');
	if($this->session->userdata('logged_in'))
   	{
			$bool = false;
			$rolex = $session_data['role'];
			foreach($rolex as $row){
				if($row == "Student" || $row == "Faculty"){
					$bool = true;
					break;
				}
			}
 
			if($bool){
			$this->load->library('form_validation');

			$this->form_validation->set_rules('gendersearch', 'Gender', 'trim|required|xss_clean');
			/*$this->form_validation->set_rules('firstname', 'First Name', 'trim|required|xss_clean');
			$this->form_validation->set_rules('midname', 'Middle Name', 'trim|required|xss_clean');
			$this->form_validation->set_rules('role', 'Role', 'trim|required|xss_clean|callback_check_role');
			$this->form_validation->set_rules('section', 'Section', 'trim|required|xss_clean');
		   	$this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean|callback_check_username');
		   	$this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean');
			$this->form_validation->set_rules('password2', 'Retype Password', 'trim|required|xss_clean|callback_check_password');*/

			if($this->form_validation->run() == FALSE)
		 	{
		     		$this->load->view('searchpatient_view');
		   	}
		   	else
		   	{
		

				$agefrom = $this->input->post('agefrom');
				$ageto = $this->input->post('ageto');

				if($agefrom == ""){
					$agefrom = 0;			
				}
				if($ageto == ""){
					$ageto = 100;			
				}

				$genders = $this->input->post('gendersearch');
				$gender = "";
		
				if($genders == "Male"){
					$gender = "patient.gender = 'Male'"; 
				}
				elseif($genders == "Female"){
					$gender = "patient.gender = 'Female'"; 
				}
				elseif($genders == "Both"){
					$gender = "(patient.gender = 'Male' OR patient.gender = 'Female')"; 
				}				

				$city = $this->input->post('citysearch');
				$occ = $this->input->post('occsearch');
			
				$perio = $this->input->post('perio');
				$rpd = $this->input->post('rpd');
				$ortho = $this->input->post('ortho');
				$os = $this->input->post('os');
				$fpd = $this->input->post('fpd');
				$pedo = $this->input->post('pedo');
				$endo = $this->input->post('endo');
				$cd = $this->input->post('cd');
				$resto = $this->input->post('resto');

				$caries = $this->input->post('caries');
				$extrusion = $this->input->post('extrusion');
				$compdent = $this->input->post('compdent');
				$impacted = $this->input->post('impacted');
				$recurrent = $this->input->post('recurrent');
				$intrusion = $this->input->post('intrusion');
				$singdent = $this->input->post('singdent');
				$missing = $this->input->post('missing');
				$restoration = $this->input->post('restoration');
				$mdr = $this->input->post('mdr');
				$rempardent = $this->input->post('rempardent');
				$acrcr = $this->input->post('acrcr');
				$pftm = $this->input->post('pftm');
				$ddr = $this->input->post('ddr');
				$pafs = $this->input->post('pafs');
				$metcr = $this->input->post('metcr');
				$rot = $this->input->post('rot');
				$rct = $this->input->post('rct');
				$pcc = $this->input->post('pcc');
				$extracted = $this->input->post('extracted');
				$unerupted = $this->input->post('unerupted');
				$porcr = $this->input->post('porcr');

				$class1 = $this->input->post('class1');
				$class2 = $this->input->post('class2');
				$class3 = $this->input->post('class3');
				$class4 = $this->input->post('class4');
				$class5 = $this->input->post('class5');
				$onlay = $this->input->post('onlay');
				$extraction = $this->input->post('extraction');
				$odon = $this->input->post('odon');
				$specclass = $this->input->post('specclass');
				$pedodontics = $this->input->post('pedodontics');
				$orthodontics = $this->input->post('orthodontics');
				$pulpsed = $this->input->post('pulpsed');
				$roc = $this->input->post('roc');
				$temfill = $this->input->post('temfill');
				$mopd = $this->input->post('mopd');
				$moai = $this->input->post('moai');
				$moti = $this->input->post('moti');
				$lamented = $this->input->post('lamented');
				$completedenture = $this->input->post('completedenture');
				$anterior = $this->input->post('anterior');
				$singlecrown = $this->input->post('singlecrown');
				$posterior = $this->input->post('posterior');
				$bridge = $this->input->post('bridge');
				$singledenture = $this->input->post('singledenture');
				$removablepartialdenture = $this->input->post('removablepartialdenture');

				$demo[] = $this->input->post('demo');
				$dentdemo[] = $this->input->post('dentdemo');
				$servdemo[] = $this->input->post('servdemo');

				$demox = ""; $dentx = ""; $servx = "";
	
				if(!in_array("", $demo)){
					foreach($demo[0] as $key=>$value){
						$demox = $value;
						//echo "demovalue=$demox";
					}
				}
				if(!in_array("", $dentdemo)){
					foreach($dentdemo[0] as $key=>$value){
						$dentx = $value;
					}
				}
				if(!in_array("", $servdemo)){
					foreach($servdemo[0] as $key=>$value){
						$servx = $value;
					}
				}
	
				$data['patientmatch'] = false;
				$data['sectionmatch'] = false;
				$data['dentalstatmatch'] = false;
				$data['servicematch'] = false;					
	
				$data['patientmatch'] = $this->patient->searchPatient1($agefrom, $ageto, $gender, $city, $occ, $agefrom, $ageto, $gender, $city, $occ, $perio, $rpd, $ortho, $os, $fpd, $pedo, $endo, $cd, $resto, $caries, $extrusion, $compdent, $impacted, $recurrent, $intrusion, $singdent, $missing, $restoration, $mdr, $rempardent, $acrcr, $pftm, $ddr, $pafs, $metcr, $rot, $rct, $pcc, $extracted, $unerupted, $porcr, $class1, $class2, $class3, $class4, $class5, $onlay, $extraction, $odon, $specclass, $pedodontics, $orthodontics, $pulpsed, $roc, $temfill, $mopd, $moai, $moti, $lamented, $completedenture, $anterior, $singlecrown, $posterior, $bridge, $singledenture, $removablepartialdenture, $demox, $dentx, $servx);
				//$data['sectionmatch'] = $this->patient->searchPatient2($perio, $rpd, $ortho, $os, $fpd, $pedo, $endo, $cd, $resto);
				//$data['dentalstatmatch'] = $this->patient->searchPatient3($caries, $extrusion, $compdent, $impacted, $recurrent, $intrusion, $singdent, $missing, $restoration, $mdr, $rempardent, $acrcr, $pftm, $ddr, $pafs, $metcr, $rot, $rct, $pcc, $extracted, $unerupted, $porcr);
				//$data['servicematch'] = $this->patient->searchPatient4($class1, $class2, $class3, $class4, $class5, $onlay, $extraction, $odon, $specclass, $pedodontics, $orthodontics, $pulpsed, $roc, $temfill, $moai, $moti, $lamented, $completedenture, $anterior, $singlecrown, $posterior, $bridge, $singledenture, $removablepartialdenture); 

				$data['agefrom'] = $agefrom;
				$data['ageto'] = $ageto;
				$data['gender'] = $genders;
				$data['city'] = $city;
				$data['occ'] = $occ;
				$data['perio'] = $perio;
				$data['rpd'] = $rpd;
				$data['ortho'] = $ortho;
				$data['os'] = $os;
				$data['fpd'] = $fpd;
				$data['pedo'] = $pedo;
				$data['endo'] = $endo;
				$data['cd'] = $cd;
				$data['resto'] = $resto;
				$data['caries'] = $caries;
				$data['extrusion'] = $extrusion;
				$data['compdent'] = $compdent;
				$data['impacted'] = $impacted;
				$data['recurrent'] = $recurrent;
				$data['intrusion'] = $intrusion;
				$data['singdent'] = $singdent;
				$data['missing'] = $missing;
				$data['restoration'] = $restoration;
				$data['mdr'] = $mdr;
				$data['rempardent'] = $rempardent;
				$data['acrcr'] = $acrcr;
				$data['pftm'] = $pftm;
				$data['ddr'] = $ddr;
				$data['pafs'] = $pafs;
				$data['metcr'] = $metcr;
				$data['rot'] = $rot;
				$data['rct'] = $rct;
				$data['pcc'] = $pcc;
				$data['extracted'] = $extracted;
				$data['unerupted'] = $unerupted;
				$data['porcr'] = $porcr;
				$data['class1'] = $class1;
				$data['class2'] = $class2;
				$data['class3'] = $class3;
				$data['class4'] = $class4;
				$data['class5'] = $class5;
				$data['onlay'] = $onlay;
				$data['extraction'] = $extraction;
				$data['odon'] = $odon;
				$data['specclass'] = $specclass;
				$data['pedodontics'] = $pedodontics;
				$data['orthodontics'] = $orthodontics;
				$data['pulpsed'] = $pulpsed;
				$data['roc'] = $roc;
				$data['temfill'] = $temfill;
				$data['mopd'] = $mopd;
				$data['moai'] = $moai;
				$data['moti'] = $moti;
				$data['lamented'] = $lamented;
				$data['completedenture'] = $completedenture;
				$data['anterior'] = $anterior;
				$data['singlecrown'] = $singlecrown;
				$data['posterior'] = $posterior;
				$data['bridge'] = $bridge;
				$data['singledenture'] = $singledenture;
				$data['removablepartialdenture'] = $removablepartialdenture;

				//print_r($data['dentalstatmatch']);
				$userID222 = $session_data['username'];
				$userID22 = $this->user->getUserID($userID222);
				$userID2 = $userID22['userID'];
				$date = date("Y-m-d");

				$this->user->addAuditTrail($userID2, 'SELECT', 'Patient', '', $date);

				$this->load->helper(array('form'));
				$this->load->view('querypatient_view', $data);
				
			}
				
		}
		else{
			redirect('home', 'refresh');
		}
	}else{
		//If no session, redirect to login page
     		redirect('login', 'refresh');
		}
   }

 	function check_gender($gender){
		if($gender == "Select one.."){
			$this->form_validation->set_message('check_gender', 'Select a gender.');
			return false;
		}
		
		return true;
	}

	function check_deceased($deceased){
		if($deceased == ""){
			$this->form_validation->set_message('check_deceased', 'Specify if patient is deceased.');
			return false;
		}
		
		return true;
	}

	function check_ID($id){
		$year = date("Y");
		$upcd_id = susbtr($year, 2)."-".$id;
		$getpatient = $this->patient->getPatient($upcd_id);

		if($getpatient == false){
			$this->form_validation->set_message('check_ID', 'UPCD_ID already exist. Enter a new ID.');
			return false;
		}
		
		return true;
	}

	/*function loadPatientDashboard($data){
		$this->load->view('patientdashboard_view', $data);
	}*/
}
?>

