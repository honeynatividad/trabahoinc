<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {
    public function __construct() {
		
        parent::__construct();
	$this->load->library(array('session'));
	$this->load->helper(array('url'));
	$this->load->model('users_model');
        $this->load->library('form_validation');
    
		
    }
    public function index(){
        $this->load->model('home_model');
        
        //get data from the database
        $data['images'] = $this->home_model->get_images();
        
        //load view and pass the data
        $this->load->view('template/header');
        $this->load->view('home/home_view', $data);
        $this->load->view('template/footer');
    }
}