<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
session_start(); //we need to call PHP's session object to access it through CI
class PatientChecklist extends CI_Controller {

 function __construct()
 {
   parent::__construct();
	$this->load->model('patient','',TRUE);
	$this->load->model('user','',TRUE);
 }

	function patient(){
		$session_data = $this->session->userdata('logged_in');
		if($this->session->userdata('logged_in'))
   		{
			$bool = false;
			$sec = $session_data['section'];
			foreach($sec as $row){
				if($row != "System Maintenance"){
					$bool = true;
					break;
				}
			}
 
			if($bool){
				$id = $this->uri->segment(3);
				$version = "";

				$data = $this->patient->getPatient($id);
				$ptnt_array = array();
				foreach($data as $row){
			     		$ptnt_array = array(
				 		'id' => $row['UPCD_ID'],
				 		'name' => $row['patientFName']." ".substr($row['patientMName'], 0, 1).". ".$row['patientLName'],
						'age' => $row['age'],
						'address' => $row['houseno']." ".$row['street']." ".$row['brgy'].", ".$row['city'].", ".$row['province'],
						'gender' => $row['gender']
			       		);
				}

				$this->session->set_userdata('current_patient', $ptnt_array);

			
				if($this->uri->segment(4) == ""){
					$ver = $this->patient->getLatest2($id);
					foreach($ver as $row){
						$version = $row['checklistID'];
					}
				}
				else
					$version = $this->uri->segment(4);

				//echo $version;

				$this->load->helper(array('form'));
				$data = $this->patient->getPatient($id);
				
				$data['recordexist'] = false;

				//$ver = $this->patient->getLatest($id);

				/*foreach($ver as $row){
					$version = $row['patientinfoID'];
				}*/
				$userID222 = $session_data['username'];
				$userID22 = $this->user->getUserID($userID222);
				$userID2 = $userID22['userID'];
				$date = date("Y-m-d");

				if($this->patient->hasPatientChecklist($id)){
					$data['info'] = $this->patient->getPatientInfoPatientChecklist($id);
					$data['recordexist'] = true;
				}

				$clinicianID = $this->patient->isClinician($id);

				//print_r($data['info']);
				if($this->patient->isLatestForApproval2($id)){
					$this->user->addAuditTrail($userID2, 'SELECT', 'Patient Checklist', $id, $date);
					redirect('patientchecklist/view/'.$id);
				}else{
					if($clinicianID!=$userID2){
						redirect('patientchecklist/view/'.$id);
					}
					else{
						$this->user->addAuditTrail($userID2, 'SELECT', 'Patient Checklist', $id, $date);
						$this->load->view('patientchecklist_view', $data);
					}
				}
			}
			else
				redirect('home', 'refresh');
		}
		else
   		{
     			//If no session, redirect to login page
     			redirect('login', 'refresh');
   		}
		
	}

	function view(){
		$session_data = $this->session->userdata('logged_in');
		if($this->session->userdata('logged_in'))
   		{
			$bool = false;
			$sec = $session_data['section'];
			foreach($sec as $row){
				if($row != "System Maintenance"){
					$bool = true;
					break;
				}
			}
 
			if($bool){
				$id = $this->uri->segment(3);
				$version = "";

				$data = $this->patient->getPatient($id);
				$ptnt_array = array();
				foreach($data as $row){
			     		$ptnt_array = array(
				 		'id' => $row['UPCD_ID'],
				 		'name' => $row['patientFName']." ".substr($row['patientMName'], 0, 1).". ".$row['patientLName'],
						'age' => $row['age'],
						'address' => $row['houseno']." ".$row['street']." ".$row['brgy'].", ".$row['city'].", ".$row['province'],
						'gender' => $row['gender']
			       		);
				}

				$this->session->set_userdata('current_patient', $ptnt_array);


				if($this->uri->segment(4) == ""){
					$ver = $this->patient->getLatest2($id);
					foreach($ver as $row){
						$version = $row['checklistID'];
					}
				}
				else
					$version = $this->uri->segment(4);

				//echo $version;

				$this->load->helper(array('form'));
				$data = $this->patient->getPatient($id);
				
				$data['recordexist'] = false;

				//$ver = $this->patient->getLatest($id);

				/*foreach($ver as $row){
					$version = $row['patientinfoID'];
				}*/
				$userID222 = $session_data['username'];
				$userID22 = $this->user->getUserID($userID222);
				$userID2 = $userID22['userID'];
				$date = date("Y-m-d");

				$clinicianID = $this->patient->isClinician($id);
				$data['private'] = false;
				$data['forapproval'] = false;

				if($this->patient->hasPatientChecklist($id)){
					$data['info'] = $this->patient->getPatientInfoPatientChecklistRO($id, $version);
					$data['recordexist'] = true;
				}

				if($this->patient->isLatestForApproval2($id)){
					$data['forapproval'] = true;
				}

				if($clinicianID!=$userID2){
					$data['private'] = true;
					//redirect('dentalchart/view/'.$id);
				}

				//print_r($data['info']);


				$this->user->addAuditTrail($userID2, 'SELECT', 'Patient Checklist', $id, $date);
				$this->load->view('patientchecklistreadonly_view', $data);
			}
			else
				redirect('home', 'refresh');
		}
		else
   		{
     			//If no session, redirect to login page
     			redirect('login', 'refresh');
   		}
		
	}

}

?>


