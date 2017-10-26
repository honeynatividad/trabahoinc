<?php  
defined('BASEPATH') OR exit('No direct script access allowed');  
  
class Reports extends CI_Controller {  
      
    public function __construct() {
        
        parent::__construct();
       $this->load->library(array('session'));
       $this->load->helper(array('url'));
        $this->load->model('report');
       $this->load->model('member');
        $this->load->model('campus');
        $this->load->model('user');
        $this->load->model('intern');
        $this->load->model('victory_group');
        $this->load->helper('form');
        $this->load->library('form_validation');
    $this->user_data = $this->session->userdata('userId');
        
    }
    
    public function index(){
        $data['user_data'] = $this->user_data;
        
        $users = $this->user->getRows(array('id'=>$this->session->userdata('userId')));
        $data['user'] = $users;
        
        $data['isAdmin']    = $users['name'];
        
        $members = $this->report->getMember();
        $victory_groups = $this->report->getVictoryGroup();
        $interns = $this->report->getIntern();
        $array_res = array();
        
        $data['members'] = $members;
        $data['victory_groups'] = $victory_groups;
        $data['interns'] = $interns;
        $data['count'] = $this->report->getHighestNo();
        
        $count = $this->report->getHighestNo();
        $maxVictoryGroup = $count[0]['total'];
        
        $countIntern = $this->report->getHighestInternNo();
        $maxIntern = $countIntern[0]['total'];
        
        $countMember = $this->report->getTotalMember();
        
        $totalMember = $countMember[0]['total'];
       
        $personal_information = 24;
        $vg = 15;
        $in = 14;
        
        $totalVg = $vg * $maxVictoryGroup;
        $totalIn = $in * $maxIntern;
        $maxCol = $personal_information + $totalVg + $totalIn;
        

        $users_data = $this->report->getUsersData();
        
        $array_member = array();
        
        $total_users = count($users_data);



        $limit = $maxCol;
        $value='sua mensagem';
        
        
        $this->load->library('excel');
        
        $myWorkSheet = new PHPExcel_Worksheet($this->excel, 'Personal Information');
        $this->excel->addSheet($myWorkSheet, 0);
        $myWorkSheet = new PHPExcel_Worksheet($this->excel, 'Victory Group');
        $this->excel->addSheet($myWorkSheet, 1);
        $myWorkSheet = new PHPExcel_Worksheet($this->excel, 'Interns');
        $this->excel->addSheet($myWorkSheet, 2);

        $this->excel->setActiveSheetIndex(0);
        $this->excel->getActiveSheet()->SetCellValue("A1", "member_id");
        $this->excel->getActiveSheet()->SetCellValue("B1", "gender");
        $this->excel->getActiveSheet()->SetCellValue("C1", "first_name");
        $this->excel->getActiveSheet()->SetCellValue("D1", "middle_name");
        $this->excel->getActiveSheet()->SetCellValue("E1", "last_name");
        $this->excel->getActiveSheet()->SetCellValue("F1", "contact_number");
        $this->excel->getActiveSheet()->SetCellValue("G1", "email_address");
        $this->excel->getActiveSheet()->SetCellValue("H1", "facebook_name");
        $this->excel->getActiveSheet()->SetCellValue("I1", "complete_home_address");
        $this->excel->getActiveSheet()->SetCellValue("J1", "campus");
        $this->excel->getActiveSheet()->SetCellValue("K1", "area");
        $this->excel->getActiveSheet()->SetCellValue("L1", "year_level");
        $this->excel->getActiveSheet()->SetCellValue("M1", "graduating");
        $this->excel->getActiveSheet()->SetCellValue("N1", "Youth Services You Attend");
        $this->excel->getActiveSheet()->SetCellValue("O1", "Ministry Involvement");                    
        $this->excel->getActiveSheet()->SetCellValue("P1", "Name of Leadership Group");                
        $this->excel->getActiveSheet()->SetCellValue("Q1", "One 2 One");
        $this->excel->getActiveSheet()->SetCellValue("R1", "Victory Weekend");
        $this->excel->getActiveSheet()->SetCellValue("S1", "Water Baptism");
        $this->excel->getActiveSheet()->SetCellValue("T1", "Making Disciples");
        $this->excel->getActiveSheet()->SetCellValue("U1", "Church Community");
        $this->excel->getActiveSheet()->SetCellValue("V1", "Foundation Class");
        $this->excel->getActiveSheet()->SetCellValue("W1", "Empowering Leaders");           
        $this->excel->getActiveSheet()->SetCellValue("X1", "Leadership 113");
        $this->excel->getActiveSheet()->SetCellValue("Y1", "How many victory groups");
                        
                
        for($a=0;$a<$total_users;$a++){
        
            $member_id = $users_data[$a]['member_id'];
            $members_data = $this->report->getMembersData($member_id);
            if(!$members_data){

            }else{
                $array_member[] = array(
                    array(
                        array("member_id"         =>  $members_data[0]['member_id']),
                        array("gender"            =>  $users_data[$a]['gender']),
                        array("first_name"        =>  $members_data[0]['first_name']),
                        array("middle_name"        =>  $members_data[0]['middle_name']),
                        array("last_name"        =>  $members_data[0]['last_name']),
                        array("contact_number"        =>  $members_data[0]['contact_number']),
                        array("email_address"        =>  $members_data[0]['email_address']),
                        array("facebook_name"        =>  $members_data[0]['facebook_name']),
                        array("complete_home_address"        =>  $members_data[0]['complete_home_address']),
                        array("campus"        =>  $members_data[0]['campus']),
                        array("area"        =>  $members_data[0]['area']),
                        array("year_level"        =>  $members_data[0]['year_level']),
                        array("graduating"        =>  $members_data[0]['graduating']),
                        array("youth_services_you_attend"        =>  $members_data[0]['youth_services_you_attend']),
                        array("ministry_involvement"        =>  $members_data[0]['ministry_involvement']),
                        array("name_of_your_leadership_group"        =>  $members_data[0]['name_of_your_leadership_group']),
                        array("one_2_one"        =>  $members_data[0]['one_2_one']),
                        array("victory_weekend"        =>  $members_data[0]['victory_weekend']),
                        array("water_baptism"        =>  $members_data[0]['water_baptism']),
                        array("making_disciples"        =>  $members_data[0]['making_disciples']),
                        array("church_community"        =>  $members_data[0]['church_community']),
                        array("foundation_class"        =>  $members_data[0]['foundation_class']),
                        array("empowering_leaders"        =>  $members_data[0]['empowering_leaders']),
                        array("leadership_113"        =>  $members_data[0]['leadership_113']),
                        array("how_many_victory_groups_you_are_leading"        =>  $members_data[0]['how_many_victory_groups_you_are_leading']),
                        )
                    );    
            }
            
            
        }
        //echo '<pre>';
           // print_r($array_member);
        //echo '</pre>';
        
        $user_count = count($array_member);
        $user_id_array = array();
        $end_array = end($array_member);
        foreach($end_array as $t){
            
            $last_member_id = $t[0]['member_id'];
            
        }
        //echo '<br>user count '.$user_count;
        //echo '<br>total user '.$total_users;
        //print_r($personal_information);
        for($x=2;$x<$user_count+2;$x++){
            $uid = $x-2;         
            $member_id = $array_member[$uid][0][0]['member_id'];
                $user_id_array[]=array(
                    array(
                        "member_id" =>  $member_id,
                        "row_id"    =>  $x
                        )
                );
            //echo '<pre>';
            //print_r($member_id);
            //echo '</pre>';
            for($i=0,$j='A';$i<25;$i++,$j++){
                
                
                foreach($array_member[$uid][0][$i] as $t){
                    $this->excel->getActiveSheet()->SetCellValue($j.$x, $t);
                               
                }
                
            }                        
            $uid++;
        }
        
   
        
        $user_id_array_count = count($user_id_array);
        $array_vg = array();
        //echo '<br>user id array '.$user_id_array_count;
        for($a = 0; $a<$user_id_array_count;$a++){
            $vg_data = $this->report->getVictoryData($user_id_array[$a][0]['member_id']);
           
           
            $count_vg = count($vg_data);
            $count_vg_array = array(
                $a =>  count($vg_data)
            );
            $max_array = max($count_vg_array);
            
            for($b = 0; $b<$max_array;$b++){
                $array_vg[] = array(
                    array(
                        array("member_id"         =>  $vg_data[$b]['member_id']),
                        array("victory_group_id"         =>  $vg_data[$b]['victory_group_id']),
                        array("campus"         =>  $vg_data[$b]['campus']),
                        array("when_jumpstart"         =>  $vg_data[$b]['when_jumpstart']),
                        array("how_many_times"         =>  $vg_data[$b]['how_many_times']),
                        array("demographic"         =>  $vg_data[$b]['demographic']),
                        array("number_of_victory_group_member"         =>  $vg_data[$b]['number_of_victory_group_member']),
                        array("member_from_outreach"         =>  $vg_data[$b]['member_from_outreach']),
                        array("schedule"         =>  $vg_data[$b]['schedule']),
                        array("one_2_one"         =>  $vg_data[$b]['one_2_one']),
                        array("victory_weekend"         =>  $vg_data[$b]['victory_weekend']),
                        array("water_baptism"         =>  $vg_data[$b]['water_baptism']),
                        array("making_disciples"         =>  $vg_data[$b]['making_disciples']),
                        array("church_community"         =>  $vg_data[$b]['church_community']),
                        array("foundation_class"         =>  $vg_data[$b]['foundation_class']),
                        array("empowering_leaders"         =>  $vg_data[$b]['empowering_leaders']),
                        array("leadership_113"         =>  $vg_data[$b]['leadership_113']),
                        array("do_you_have_intern"         =>  $vg_data[$b]['do_you_have_intern']),

                      
                    )
                );    
           
            }
              
        }
        $this->excel->setActiveSheetIndex(1);
        $this->excel->getActiveSheet(1)->SetCellValue("A1", "MemberId");
        $this->excel->getActiveSheet(1)->SetCellValue("B1", "victory group id");
        $this->excel->getActiveSheet(1)->SetCellValue("C1", "campus");
        $this->excel->getActiveSheet(1)->SetCellValue("D1", "Jumpstart");
        $this->excel->getActiveSheet(1)->SetCellValue("E1", "how many times");
        $this->excel->getActiveSheet(1)->SetCellValue("F1", "demographic");
        $this->excel->getActiveSheet(1)->SetCellValue("G1", "number of victory group member");
        $this->excel->getActiveSheet(1)->SetCellValue("H1", "member form outreach");
        $this->excel->getActiveSheet(1)->SetCellValue("I1", "schedule");
        $this->excel->getActiveSheet(1)->SetCellValue("J1", "one 2 one");
        $this->excel->getActiveSheet(1)->SetCellValue("K1", "victory weekend");
        $this->excel->getActiveSheet(1)->SetCellValue("L1", "water baptism");
        $this->excel->getActiveSheet(1)->SetCellValue("M1", "making disciples");
        $this->excel->getActiveSheet(1)->SetCellValue("N1", "church community");
        $this->excel->getActiveSheet(1)->SetCellValue("O1", "foundation class");
        $this->excel->getActiveSheet(1)->SetCellValue("P1", "empowering leaders");
        $this->excel->getActiveSheet(1)->SetCellValue("Q1", "leadership 113");
        $this->excel->getActiveSheet(1)->SetCellValue("R1", "do you have intern");

        
        $count_array_vg = count($array_vg);
        for($x=2;$x<$count_array_vg+2;$x++){
            $uid = $x-2;   
            for($i=0,$j='A';$i<$vg;$i++,$j++){
                foreach($array_vg[$uid][0][$i] as $t){
                    $this->excel->getActiveSheet(1)->SetCellValue($j.$x, $t);
                    //echo '<pre>';
                    //   print_r($j.$x." ".$t);
                    //echo '</pre>';        
                }
                
            }
            $uid++;
        }
        $this->excel->setActiveSheetIndex(2);
        

        $array_intern = array();
        //echo '<br>user id array '.$user_id_array_count;
        for($a = 0; $a<$user_id_array_count;$a++){
            $intern_data = $this->report->getInternData($user_id_array[$a][0]['member_id']);
           
           
            $count_intern = count($intern_data);
            $count_intern_array = array(
                $a =>  count($intern_data)
            );
            $max_array = max($count_intern_array);
           
            for($b = 0; $b<$max_array;$b++){
                $array_intern[] = array(
                    array(
                        array("member_id"         =>  $intern_data[$b]['member_id']),
                        array("victory_group_id"         =>  $intern_data[$b]['victory_group_id']),
                        array("intern_name"         =>  $intern_data[$b]['intern_name']),
                        array("contact_number"         =>  $intern_data[$b]['contact_number']),
                        array("campus"         =>  $intern_data[$b]['campus']),
                        array("year_level"         =>  $intern_data[$b]['year_level']),
                        array("graduating"         =>  $intern_data[$b]['graduating']),
                        array("one_2_one"         =>  $intern_data[$b]['one_2_one']),
                        array("victory_weekend"         =>  $intern_data[$b]['victory_weekend']),
                        array("water_baptism"         =>  $intern_data[$b]['water_baptism']),
                        array("making_disciples"         =>  $intern_data[$b]['making_disciples']),
                        array("church_community"         =>  $intern_data[$b]['church_community']),
                        array("foundation_class"         =>  $intern_data[$b]['foundation_class']),
                        array("empowering_leaders"         =>  $intern_data[$b]['empowering_leaders']),
                        array("leadership_113"         =>  $intern_data[$b]['leadership_113']),
                        array("do_you_have_another_intern"         =>  $intern_data[$b]['do_you_have_another_intern']),
                    )
                );
            }
        }
        
        $this->excel->getActiveSheet(2)->SetCellValue("A1", "MemberId");
        $this->excel->getActiveSheet(2)->SetCellValue("B1", "Victory Group Id");
        $this->excel->getActiveSheet(2)->SetCellValue("C1", "Intern Name");
        $this->excel->getActiveSheet(2)->SetCellValue("D1", "Contact Number");
        $this->excel->getActiveSheet(2)->SetCellValue("E1", "Campus");
        $this->excel->getActiveSheet(2)->SetCellValue("F1", "Year Level");
        $this->excel->getActiveSheet(2)->SetCellValue("G1", "Graduating");
        $this->excel->getActiveSheet(2)->SetCellValue("H1", "One 2 One");
        $this->excel->getActiveSheet(2)->SetCellValue("I1", "Victory Weekend");
        $this->excel->getActiveSheet(2)->SetCellValue("J1", "Water Baptism");
        $this->excel->getActiveSheet(2)->SetCellValue("K1", "Making Disciples");
        $this->excel->getActiveSheet(2)->SetCellValue("L1", "Church Community");
        $this->excel->getActiveSheet(2)->SetCellValue("M1", "Foundation Class");
        $this->excel->getActiveSheet(2)->SetCellValue("N1", "Empowering Leaders");
        $this->excel->getActiveSheet(2)->SetCellValue("O1", "Leadership 113");
        $this->excel->getActiveSheet(2)->SetCellValue("P1", "Do you have another intern");
                       
        $count_array_intern = count($array_intern);
        for($x=2;$x<$count_array_intern+2;$x++){
            $uid = $x-2;   
            for($i=0,$j='A';$i<$vg;$i++,$j++){
                foreach($array_intern[$uid][0][$i] as $t){
                    $this->excel->getActiveSheet(2)->SetCellValue($j.$x, $t);
                    //echo '<pre>';
                    //   print_r($j.$x." ".$t);
                    //echo '</pre>';        
                }
                
            }
            $uid++;
        }
        //$this->load->view('template/header-main');
        //$this->load->view('template/nav-top');
        //$this->load->view('template/nav-left',$data);
        //$this->load->view('reports/index', $data);
        //$this->load->view('template/footer-main');
        
        

        
        
        //echo '<pre>';
        //print_r($member);
        //echo '</pre>';
      
        
                
       
        
       
        $this->excel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
       
        $this->excel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
        
        
        $filename='encubelt.xls'; //save our workbook as this file name
        header('Content-Type: application/vnd.ms-excel'); //mime type
        header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
        header('Cache-Control: max-age=0'); //no cache

      
        $objWriter = PHPExcel_IOFactory::createWriter($this->excel, 'Excel5');  
       
        $objWriter->save('php://output');
        
    }
}