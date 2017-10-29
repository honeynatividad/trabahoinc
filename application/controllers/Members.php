<?php  
defined('BASEPATH') OR exit('No direct script access allowed');  
  
class Members extends CI_Controller {  
      
    public function __construct() {
		
        parent::__construct();
        $this->load->library(array('session'));
        $this->load->helper(array('url'));
        $this->load->model('member');
        $this->load->model('campus');
        $this->load->model('user');
        $this->load->model('intern');
        $this->load->model('victory_group');
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->user_data = $this->session->userdata('userId');
        
    }
    
    public function index()  
    {  
        
        $this->load->view('template/header');         
        $this->load->view('member_index');  
        $this->load->view('template/footer'); 
    }  
    
    public function add(){
        $data = array();
        $userData = array();
        $data['success_msg'] = $this->session->userdata('success_msg');
        //$users = $this->user->getRows(array('id'=>$this->session->userdata('userId')));
        //$data['isAdmin']    = $users['name'];
        if($this->input->post('memberSubmit')){
            //echo '<pre>';
            //print_r("TEST");
            //echo '</pre>';
            $this->form_validation->set_rules('first_name', 'First Name', 'required');
            $this->form_validation->set_rules('last_name', 'Last Name', 'required');
            $this->form_validation->set_rules('middle_name', 'Middle Name', 'required');
            $this->form_validation->set_rules('contact_number', 'Contact Number', 'required');
            $this->form_validation->set_rules('birthday', 'Birthday', 'required');
            $this->form_validation->set_rules('email_address', 'Email Address', 'required');

            
            
            
            
            $userData = array(
                'member_type'                    => strip_tags($this->input->post('member_type')),
                'first_name'                    => strip_tags($this->input->post('first_name')),
                'middle_name'                   =>  strip_tags($this->input->post('middle_name')),
                'last_name'                     =>  strip_tags($this->input->post('last_name')),
                'contact_number'                =>  strip_tags($this->input->post('contact_number')),
                'birthday'                      =>  strip_tags($this->input->post('birthday')),
                'email_address'                 =>  strip_tags($this->input->post('email_address')),
                'facebook_name'                 =>  strip_tags($this->input->post('facebook_name')),
                'youtube_name'                  =>  strip_tags($this->input->post('youtube_name')),
                'nick_name'                     =>  strip_tags($this->input->post('nick_name')),
                'gender'                        =>  strip_tags($this->input->post('gender')),
                'nationality'                   =>  strip_tags($this->input->post('nationality')),
                'elementary'                    =>  strip_tags($this->input->post('elementary')),
                'highschool'                    =>  strip_tags($this->input->post('highschool')),
                'vocational'                    =>  strip_tags($this->input->post('vocational')),
                'college'                    =>  strip_tags($this->input->post('college')),
                'post_graduate'                    =>  strip_tags($this->input->post('post_graduate')),
                'company_name'                  =>  strip_tags($this->input->post('company_name')),
                'location'                      =>  strip_tags($this->input->post('location')),
                'length_of_stay'                =>  strip_tags($this->input->post('length_of_stay')),
                'position'                      =>  strip_tags($this->input->post('position')),
                'skills'                        =>  strip_tags($this->input->post('skills'))
                
                
            );
            //echo '<pre>';
            //print_r($userData);
            //echo '</pre>';
            //if($this->form_validation->run() == true){
            
            
                
                
                $insert = $this->member->insert($userData);
                if($insert){
                    /*$user = array(
                        'member_id' => $insert,
                        'name' => strip_tags($this->input->post('first_name')),
                        'email_address' => strip_tags($this->input->post('email_address')),
                        'password' => md5($this->input->post('password')),       
                        

                    );

                    $insertData = $this->user->insert($user);
                    $this->session->set_userdata('logged_in',TRUE);
                    $this->session->set_userdata('isUserLoggedIn',TRUE);
                    $this->session->set_userdata('userId',$insert);*/
                    $this->session->set_userdata('success_msg', 'Registration successful.');
                    
                    redirect(base_url('members/view/'.$insert));
                    
                    
                }else{
                    $data['error_msg'] = 'Some problems occured, please try again.';
                }
            //}
        }
        $data['user_data'] = $this->user_data;
        
       
        $this->load->view('template/header-main');
        $this->load->view('template/nav-top');
        $this->load->view('template/nav-left',$data);
        $this->load->view('member/admin/add', $data);
        $this->load->view('template/footer-main');
    }
    
    public function all(){
        
        $session_data = $this->session->userdata('logged_in');
        if(!$session_data){
            redirect(base_url("users/login"));
        }
        
        $users = $this->user->getRows(array('id'=>$this->session->userdata('userId')));
        $data['members'] = array();
        if($users['name']=="admin"){
            $memberData = $this->member->getRows();      
            if(!$memberData){
                $data['members'] = array();
            }else{
                $data['members'] = $memberData;
            }
            
        }elseif($users['name'] == 'stamesa'){
            $memberData = $this->member->getRowsMember(array('area'=>'Sta. Mesa'));                  
            $data['members'] = $memberData;            
        }elseif($users['name'] == 'espana'){           
            $memberData = $this->member->getRowsMember(array('area'=>'España'));                  
            $data['members'] = $memberData;            
        }elseif($users['name'] == 'intramuros'){
            $memberData = $this->member->getRowsMember(array('area'=>'Intramuros'));                  
            $data['members'] = $memberData;                        
        }elseif($users['name'] == 'mendiola'){
            $memberData = $this->member->getRowsMember(array('area'=>'Mendiola'));                  
            $data['members'] = $memberData;                        
        }else{
            $memberData = array($this->member->getRows(array('member_id'=>$users['member_id'])));
            
            $data['members'] = $memberData;
             
        }
        //echo '<pre>';
        //    print_r($memberData);
        //echo '</pre>';
        $users = $this->user->getRows(array('id'=>$this->session->userdata('userId')));
        $data['isAdmin']    = $users['name'];
        $data['user_data'] = $this->user_data;
        
        $this->load->view('template/header-main');
        $this->load->view('template/nav-top');
        $this->load->view('template/nav-left',$data);
        $this->load->view('member/admin/all', $data);
        $this->load->view('template/footer-main');
    }
    
    public function view($id){
        $member_id = $id;
        $userData = array(
            'member_id' =>  $id
        );
        
        $memberData = $this->member->getRows($userData);
        $data['user_data'] = $this->user_data;
        
        
        $data['members']    = $memberData;
        
        
        $data['member_id'] = $member_id;    
        
        
        $this->load->view('template/header-main');
        $this->load->view('template/nav-top');
        $this->load->view('template/nav-left',$data);
        $this->load->view('member/admin/view', $data);
        $this->load->view('template/footer-main');
    }
    
    public function checkNames(){
        if(isset($_POST['last_name'])){
        ?>
        
        <div class="form-group ">
            <label for="cname" class="control-label col-lg-2">Last Name <span class="required">*</span></label>
            <div class="col-lg-10">
                <input class="form-control" id="lname" name="last_name" minlength="3" type="text" required />
            </div>
        </div>
        <?php
        }
    }

    function edit($member_id){

        $users = $this->member->getRows(array('id'=>$member_id));
        $data['users'] = $users;
        if(isset($_POST['last_name'])){
            //$this->form_validation->set_rules('email', 'Email', 'required|valid_email|callback_email_check');
            $th_5pm = strip_tags($this->input->post('th_5pm'));
            $th_7pm = strip_tags($this->input->post('th_7pm'));
            $f_3pm = strip_tags($this->input->post('f_3pm'));
            $f_5pm = strip_tags($this->input->post('f_5pm'));
            $f_7pm = strip_tags($this->input->post('f_7pm'));
            $service_other = strip_tags($this->input->post('service_other'));
            
            $youth_services_you_attend = $th_5pm.",".$th_7pm.",".$f_3pm.",".$f_5pm.",".$f_7pm.",".$service_other;
            
            $ministry_admin = strip_tags($this->input->post('ministry_admin'));
            $ministry_communication = strip_tags($this->input->post('ministry_communication'));
            $ministry_kids = strip_tags($this->input->post('ministry_kids'));
            $ministry_music = strip_tags($this->input->post('ministry_music'));
            $ministry_prayer = strip_tags($this->input->post('ministry_prayer'));
            $ministry_production = strip_tags($this->input->post('ministry_production'));
            $ministry_technical = strip_tags($this->input->post('ministry_technical'));
            $ministry_ushering = strip_tags($this->input->post('ministry_ushering'));
            $ministry_none  = strip_tags($this->input->post('ministry_none'));
            
            $ministry_involvement = $ministry_admin.",".$ministry_communication.",".$ministry_kids.",".$ministry_music.",".$ministry_prayer.",".$ministry_production.",".$ministry_technical.",".$ministry_ushering.",".$ministry_none;
            //echo '<pre>';
            //print_r($ministry_involvement);
            //echo '</pre>';
            $number_of_victory_groups = strip_tags($this->input->post('number_victory_groups'));
            $data = array(
                'first_name'                    => strip_tags($this->input->post('first_name')),
                'middle_name'                   =>  strip_tags($this->input->post('middle_name')),
                'last_name'                     =>  strip_tags($this->input->post('last_name')),
                'contact_number'                =>  strip_tags($this->input->post('contact_number')),
                'birthday'                      =>  strip_tags($this->input->post('birthday')),
                'email_address'                 =>  strip_tags($this->input->post('email_address')),
                'facebook_name'                 =>  strip_tags($this->input->post('facebook_name')),
                'complete_home_address'         => strip_tags($this->input->post('complete_home_address')),
                'campus'                        => strip_tags($this->input->post('campus')),
                'area'                          =>  strip_tags($this->input->post('area')),
                'year_level'                    =>  strip_tags($this->input->post('year_level')),
                'graduating'                    =>  strip_tags($this->input->post('graduating')),                
                'youth_services_you_attend'     =>  $youth_services_you_attend,
                'ministry_involvement'          =>  $ministry_involvement,
                'name_of_your_leadership_group' =>  strip_tags($this->input->post('name_leader')),
                'one_2_one'                     => strip_tags($this->input->post('one_2_one')),
                'victory_weekend'               =>  strip_tags($this->input->post('victory_weekend')),
                'water_baptism'                 =>  strip_tags($this->input->post('water_baptism')),
                'making_disciples'              =>  strip_tags($this->input->post('making_disciples')),
                'church_community'             =>  strip_tags($this->input->post('church_community')),
                'foundation_class'              =>  strip_tags($this->input->post('foundation_class')),
                'empowering_leaders'            =>  strip_tags($this->input->post('empowering_leaders')),
                'leadership_113'                =>  strip_tags($this->input->post('leadership_113')),
                'how_many_victory_groups_you_are_leading' => strip_tags($this->input->post('number_victory_groups'))
                
            );
            $mid = strip_tags($this->input->post('member_id'));
            $update = $this->member->updateMember($mid,$data);
            //echo $mid;
            //redirect(base_url('members/view/'.$mid));
        }
       
            
        $id = array(
            'member_id' =>  $member_id
        );
            
        $users = $this->user->getRows(array('id'=>$member_id));
        $data['user'] = $users;

        $memberData = $this->member->getRows($id);
        $victory_groups = $this->member->getRows($id);
        $interns = $this->intern->getRows($id);
        $data['user_data'] = $this->user_data;
        $users = $this->user->getRows(array('id'=>$this->session->userdata('userId')));

        $data['isAdmin']    = $users['name'];
        //print_r($data['user_data']);
        $data['members']    = $memberData;
       
        $data['victory_groups'] = array($victory_groups);
        $data['interns']    = array($interns);
        $campusData = $this->campus->getRows();
        
        $data['campuses'] = $campusData;
        
        
        
        
        $data['member_id'] = $member_id;
        $this->load->view('template/header-main');
        $this->load->view('template/nav-top');
        $this->load->view('template/nav-left',$data);
        $this->load->view('member/admin/edit', $data);
        $this->load->view('template/footer-main');
        
    }
    
    function delete($id){
        $session_data = $this->session->userdata('logged_in');
        if(!$session_data){
            redirect(base_url("users/login"));
        }
        $delete = $this->member->delete($id);
        if($delete){
            $this->session->set_userdata('success_msg', 'You successfully deleted a member.');                
            redirect(base_url('members/all'));            
        }else{
            $this->session->set_userdata('success_msg', 'Error occur.');                
            redirect(base_url('members/all'));            
        }
            
    }
}