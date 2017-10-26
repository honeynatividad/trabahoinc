<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * User class.
 * 
 * @extends CI_Controller
 */
class Campuses extends CI_Controller {
    
    public function __construct() {
		
	parent::__construct();
	$this->load->library(array('session'));
	$this->load->helper(array('url'));
	$this->load->model('campus');
        $this->load->model('user');
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->user_data = $this->session->userdata('userId');
		
    }
    
    public function add(){
        $data = array();
        $campusData = array();
        $session_data = $this->session->userdata('logged_in');
        if(!$session_data){
            redirect(base_url("users/login"));
        }
        $data['user_data'] = $this->user_data;
        if($this->input->post('campusSubmit')){
            $this->form_validation->set_rules('code', 'Code', 'required');
            $this->form_validation->set_rules('name', 'Name', 'required');
            

            $campusData = array(
                'code' => strip_tags($this->input->post('code')),
                'name' => strip_tags($this->input->post('name')),                
            );

            if($this->form_validation->run() == true){
                $insert = $this->campus->insert($campusData);
                if($insert){
                    $this->session->set_userdata('success_msg', 'Your registration was successfully.');
                    redirect('campuses/add');
                }else{
                    $data['error_msg'] = 'Some problems occured, please try again.';
                }
            }
        }
        $data['camnpus'] = $campusData;
        $users = $this->user->getRows(array('id'=>$this->session->userdata('userId')));
        $data['isAdmin']    = $users['name'];
        $data['user_data'] = $this->user_data;
        //load the view
        $this->load->view('template/header-main');
        $this->load->view('template/nav-top');
        $this->load->view('template/nav-left',$data);
        $this->load->view('campus/add', $data);
        $this->load->view('template/footer-main');
    }
    
    public function all(){
        $session_data = $this->session->userdata('logged_in');
        if(!$session_data){
            redirect(base_url("users/login"));
        }
        
        $campuses= $this->campus->getRows();
        $data['campuses'] = $campuses;
        
        //echo '<pre>';
        //    print_r($memberData);
        //echo '</pre>';
        $users = $this->user->getRows(array('id'=>$this->session->userdata('userId')));
        $data['isAdmin']    = $users['name'];
        $data['user_data'] = $this->user_data;
        
        $this->load->view('template/header-main');
        $this->load->view('template/nav-top');
        $this->load->view('template/nav-left',$data);
        $this->load->view('campus/all', $data);
        $this->load->view('template/footer-main');
    }
    
    public function edit($id){
        $session_data = $this->session->userdata('logged_in');
        if(!$session_data){
            redirect(base_url("users/login"));
        }
        
        $campuses= $this->campus->getRows(array('id'=>$id));
        $data['campus'] = $campuses;
        
        $users = $this->user->getRows(array('id'=>$this->session->userdata('userId')));
        $data['isAdmin']    = $users['name'];
        $data['user_data'] = $this->user_data;
        
        $this->load->view('template/header-main');
        $this->load->view('template/nav-top');
        $this->load->view('template/nav-left',$data);
        $this->load->view('campus/edit', $data);
        $this->load->view('template/footer-main');
        
        if($this->input->post('campusSubmit')){
            $this->form_validation->set_rules('code', 'Code', 'required');
            $this->form_validation->set_rules('name', 'Name', 'required');
            

            $campusData = array(
                'code' => strip_tags($this->input->post('code')),
                'name' => strip_tags($this->input->post('name')),                
            );
            $id = strip_tags($this->input->post('id'));
            if($this->form_validation->run() == true){
                $insert = $this->campus->updateCampus($id,$campusData);
                if($insert){
                    
                    redirect('campuses/all');
                }else{
                    $data['error_msg'] = 'Some problems occured, please try again.';
                }
            }
        }
    }
    
    function delete($id){
        $session_data = $this->session->userdata('logged_in');
        if(!$session_data){
            redirect(base_url("users/login"));
        }
        $delete = $this->campus->delete($id);
        if($delete){
                          
            redirect(base_url('campuses/all'));            
        }else{
            $this->session->set_userdata('success_msg', 'Error occur.');                
            redirect(base_url('campuses/all'));            
        }
            
    }
}