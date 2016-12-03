<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class companyController extends CI_Controller {

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
		$responseData = $this->MainModel->select_entry('company', 'id, userEmail', array('userEmail' => $postData->userEmail, 'userPassword' => $postData->userPassword));
		if(!empty($responseData))
		{
			$userId = $responseData->id;
			$userEmail = $responseData->userEmail;
			if($userId) 
	 		{
	 			$this->session->set_userdata('userId', $userId);
	 			$this->session->set_userdata('userEmail', $userEmail);
	 			echo "true";
	 		}
		}

		
 		else echo "false";
	}
}
