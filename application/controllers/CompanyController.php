<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CompanyController extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('MainView');
	}

	public function login()
	{
		$data = file_get_contents("php://input");
 		$postData = json_decode($data);
 		//print_r($postData);
		$responseData = $this->MainModel->select_entry('company', 'id, companyEmail', array('companyEmail' => $postData->companyEmail, 'companyPassword' => md5($postData->companyPassword)));
		if(!empty($responseData))
		{
			$companyId = $responseData->id;
			$companyEmail = $responseData->companyEmail;
			if($companyId) 
	 		{
	 			$this->session->set_userdata('companyId', $companyId);
	 			$this->session->set_userdata('companyEmail', $companyEmail);
	 			echo true;
	 		}
		}

		
 		else echo false;
	}
	
	public function addContact()
	{
		$data = file_get_contents("php://input");
		$postData = json_decode($data);
		$this->MainModel->insert_entry('contact', $postData);
 		print_r($postData);
		//echo '1';
	}
	
	public function addCity()
	{
		$data = file_get_contents("php://input");
		$postData = json_decode($data);
		$this->MainModel->insert_entry('city', $postData);
 		print_r($postData);
		//echo '1';
	}
	
	public function fetchState()
	{
		
	$responseData = $this->MainModel->select_entry('state', 'id, name');
	echo json_encode($responseData);
	}
	
	public function fetchCity()
	{
		
	$responseData = $this->MainModel->select_entry('city', 'id, name');
	echo json_encode($responseData);
	}
}
