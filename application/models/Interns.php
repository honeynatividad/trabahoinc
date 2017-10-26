<?php  
defined('BASEPATH') OR exit('No direct script access allowed');  
  
class Interns extends CI_Controller {  
    public function __construct() {
		
        parent::__construct();
	$this->load->library(array('session'));
	$this->load->helper(array('url'));
	$this->load->model('member');
        $this->load->model('campus');
        $this->load->model('intern');
        $this->load->model('user');
        $this->load->model('victory_group');
        $this->load->helper('form');
        $this->load->library('form_validation');
        $victory_group = $this->session->userdata('victory_group_no');
        $this->user_data = $this->session->userdata('userId');
	
    }
    
    public function add($member_id, $victory_group_id){
        $data['member_id'] = $member_id;
        $data['victory_group_id'] = $victory_group_id;        
        $campusData = $this->campus->getRows();
        //echo '<pre>';
        //print_r($campusData);
        //echo '</pre>';
        $data['campuses'] = $campusData;
        
        $users = $this->user->getRows(array('id'=>$this->session->userdata('userId')));
        $data['isAdmin']    = $users['name'];
        $data['user_data'] = $this->user_data;
        
        $this->load->view('template/header-main');
        $this->load->view('template/nav-top');
        $this->load->view('template/nav-left',$data);
        $this->load->view('interns/admin/add', $data);
        $this->load->view('template/footer-main');
        
        $data = array();
        $userData = array();
        if($this->input->post('memberSubmit')){
            $member_id = strip_tags($this->input->post('member_id'));
            $victory_group_id = strip_tags($this->input->post('victory_group_id'));
            $no_of_intern = strip_tags($this->input->post('no_of_intern'));
            
            $userData = array(        
                'member_id'                         =>  $member_id,        
                'victory_group_id'                  =>  strip_tags($this->input->post('victory_group_id')),                
                'intern_name'                         =>  strip_tags($this->input->post('full_name')),
                'contact_number'                    =>  strip_tags($this->input->post('contact_number')),
                'campus'                            =>  strip_tags($this->input->post('campus')),
                'year_level'                        =>  strip_tags($this->input->post('year_level')),
                'graduating'                        =>  strip_tags($this->input->post('graduating')),
                'one_2_one'                         =>  strip_tags($this->input->post('one_2_one')),
                'victory_weekend'                   =>  strip_tags($this->input->post('victory_weekend')),
                'water_baptism'                     =>  strip_tags($this->input->post('water_baptism')),
                'making_disciples'                  =>  strip_tags($this->input->post('making_disciples')),
                'church_community'                  =>  strip_tags($this->input->post('church_community')),
                'foundation_class'                  =>  strip_tags($this->input->post('foundation_class')),
                'empowering_leaders'                =>  strip_tags($this->input->post('empowering_leaders')),
                'do_you_have_another_intern'        =>  strip_tags($this->input->post('do_you_have_another_intern')),
                
            );
            //$no_of_intern = strip_tags($this->input->post('do_you_have_intern'));
            $insert = $this->intern->insert($userData);
            $another_intern = strip_tags($this->input->post('do_you_have_another_intern'));
            if($insert){
                $this->session->set_userdata('success_msg', 'Your registration was successfully. Please login to your account.');
                if($another_intern=="Yes"){                    
                    redirect(base_url('interns/add/'.$member_id."/".$victory_group_id));
                }else{                    
                    $victory_group = $this->session->userdata('victory_group_no');
                    if($victory_group!=1){
                        $victory_group = $victory_group - 1;
                        $this->session->set_userdata('victory_group_no', $victory_group);
                        redirect(base_url('victory_groups/add/'.$member_id));
                    }else{
                        $this->session->set_userdata('success_msg', 'Thank you for responding accurately to our database.');
                        redirect(base_url('members/view/'.$member_id));
                    }
                    
                }
                    
            }else{
                $data['error_msg'] = 'Some problems occured, please try again.';
            }
        }
        
    }
    
    public function edit($id){
        if($this->input->post('memberSubmit')){
            $member_id = strip_tags($this->input->post('member_id'));
            $victory_group_id = strip_tags($this->input->post('victory_group_id'));
            $no_of_intern = strip_tags($this->input->post('no_of_intern'));
            $intern_id = strip_tags($this->input->post('intern_id'));
            $userData = array(        
                'member_id'                         =>  $member_id,        
                'victory_group_id'                  =>  strip_tags($this->input->post('victory_group_id')),                
                'intern_name'                         =>  strip_tags($this->input->post('full_name')),
                'contact_number'                    =>  strip_tags($this->input->post('contact_number')),
                'campus'                            =>  strip_tags($this->input->post('campus')),
                'year_level'                        =>  strip_tags($this->input->post('year_level')),
                'graduating'                        =>  strip_tags($this->input->post('graduating')),
                'one_2_one'                         =>  strip_tags($this->input->post('one_2_one')),
                'victory_weekend'                   =>  strip_tags($this->input->post('victory_weekend')),
                'water_baptism'                     =>  strip_tags($this->input->post('water_baptism')),
                'making_disciples'                  =>  strip_tags($this->input->post('making_disciples')),
                'church_community'                  =>  strip_tags($this->input->post('church_community')),
                'foundation_class'                  =>  strip_tags($this->input->post('foundation_class')),
                'empowering_leaders'                =>  strip_tags($this->input->post('empowering_leaders')),
                'do_you_have_another_intern'        =>  strip_tags($this->input->post('do_you_have_another_intern')),
                
            );
            //$no_of_intern = strip_tags($this->input->post('do_you_have_intern'));
            $update = $this->intern->updateIntern($intern_id,$userData);
            
            $this->session->set_userdata('success_msg', 'You successfully updated intern profile.');
            redirect(base_url('members/view/'.$member_id));
        }
        $interns = $this->intern->getRows(array('intern_id'=>$id));
        $data['intern'] = $interns;
        $data['intern_id'] = $id;
        $data['member_id'] = $interns['member_id'];
        $data['victory_group_id'] = $interns['victory_group_id'];
        $users = $this->user->getRows(array('id'=>$this->session->userdata('userId')));
        $data['isAdmin']    = $users['name'];
        $data['user_data'] = $this->user_data;
        
        $this->load->view('template/header-main');
        $this->load->view('template/nav-top');
        $this->load->view('template/nav-left',$data);
        $this->load->view('interns/admin/edit', $data);
        $this->load->view('template/footer-main');
    }
}