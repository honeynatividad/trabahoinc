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
        //    print_r($array_member);
        //echo '</pre>';
        print_r(count($array_member[0][0]));
        $user_count = count($array_member[0][0]);

        for($x=1;$x<$total_users+1;$x++){
            $uid = $x-1;         
            for($i=0,$j='A';$i<$user_count;$i++,$j++){
                foreach($array_member[$uid][0][$i] as $t){
                    echo '<pre>';
                        print_r($j.$x."=".$t );
                    //print_r($t);
                    echo '</pre>';                
                }
                
            }                        
            $uid++;
        }
        
        
        /*
        foreach($members as $member){
            echo '<pre>';
            print_r($member);
            echo '</pre>';
            foreach($victory_groups as $victory_group){
                if($victory_group['member_id'] == $member['member_id']){
                    echo '<pre>';
                    print_r($victory_group);
                    echo '</pre>';
                }
                
                
            }
        }
        
        */
        
        //$this->load->view('template/header-main');
        //$this->load->view('template/nav-top');
        //$this->load->view('template/nav-left',$data);
        //$this->load->view('reports/index', $data);
        //$this->load->view('template/footer-main');
        
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
        
        $this->excel->getActiveSheet()->setTitle('Personal Information');
        
        //echo '<pre>';
        //print_r($member);
        //echo '</pre>';
        
        
        $limit_col      = $maxCol;
        
        $limit_row      = $totalMember;
        $current_col    = 'A';
        $current_row    = 2;

        // Create the row and column arrays starting at index 1
        $row_arr    = array(1 => $current_row);
        $column_arr = array(1 => $current_col);

        // Build the column array
        while(count($column_arr) < $limit_col) {
            $column_arr[] = ++$current_col;
        }

        // Build the row array
        while(count($row_arr) < $limit_row) {
            $row_arr[] = ++$current_row;
        }

        //echo "Row<pre>".print_r($row_arr, true)."</pre><br />";
        //echo "Column<pre>".print_r($column_arr, true)."</pre><br />";

        foreach($row_arr as $row_number) {
            $excel_matrix[$row_number] = $column_arr;
        }
        
        $test = array();
        
        $rowNumber = 1;
        
      
        $z=2;
        $y = 1;
		$g = 1;
       
        
        foreach($members as $member){
                //echo '<pre>';
				//		print_r("z".$z);
				//		echo '</pre>';
                
                    $this->excel->getActiveSheet()->SetCellValue('A'.$z, $member['first_name']);
                    
                    $this->excel->getActiveSheet()->SetCellValue('B'.$z, $member['middle_name']);
                    $this->excel->getActiveSheet()->SetCellValue('C'.$z, $member['last_name']);
                    $this->excel->getActiveSheet()->SetCellValue('D'.$z, $member['contact_number']);
                    $this->excel->getActiveSheet()->SetCellValue('E'.$z, $member['birthday']);
                    
                    $this->excel->getActiveSheet()->SetCellValue('F'.$z, $member['email_address']);
                    $this->excel->getActiveSheet()->SetCellValue('G'.$z, $member['facebook_name']);
                    $this->excel->getActiveSheet()->SetCellValue('H'.$z, $member['complete_home_address']);
                    $this->excel->getActiveSheet()->SetCellValue('I'.$z, $member['campus']);
                    $this->excel->getActiveSheet()->SetCellValue('J'.$z, $member['area']);
                    $this->excel->getActiveSheet()->SetCellValue('K'.$z, $member['year_level']);
                    $this->excel->getActiveSheet()->SetCellValue('L'.$z, $member['graduating']);
                    $this->excel->getActiveSheet()->SetCellValue('M'.$z, $member['youth_services_you_attend']);
                    $this->excel->getActiveSheet()->SetCellValue('N'.$z, $member['ministry_involvement']);
                    $this->excel->getActiveSheet()->SetCellValue('O'.$z, $member['name_of_your_leadership_group']);
                    $this->excel->getActiveSheet()->SetCellValue('P'.$z, $member['one_2_one']);
                    $this->excel->getActiveSheet()->SetCellValue('Q'.$z, $member['victory_weekend']);
                    $this->excel->getActiveSheet()->SetCellValue('R'.$z, $member['water_baptism']);
                    $this->excel->getActiveSheet()->SetCellValue('S'.$z, $member['making_disciples']);
                    $this->excel->getActiveSheet()->SetCellValue('T'.$z, $member['church_community']);
                    $this->excel->getActiveSheet()->SetCellValue('U'.$z, $member['foundation_class']);
                    $this->excel->getActiveSheet()->SetCellValue('V'.$z, $member['empowering_leaders']);
                    $this->excel->getActiveSheet()->SetCellValue('W'.$z, $member['leadership_113']);
                    $this->excel->getActiveSheet()->SetCellValue('X'.$z, $member['how_many_victory_groups_you_are_leading']);
                    
                    $this->excel->setActiveSheetIndex(1);
                    $worksheet = $this->excel->getActiveSheet();
                    $y =$z + 1;

                    $limit = $maxVictoryGroup;
                    $c =$z;
                    //$maxLimit = 15 * $limit;

                    $totalVG = count($victory_groups);
                       // print_r($totalVg);

                       

                        for($x=1;$x<$totalVG+1;$x++){
                           $uid = $x-1;         
                            for($i=0,$j='A';$i<$totalVg;$i++,$j++){
                                echo '<pre>';
                               // print_r($j.$x." - ".$victory_groups[$uid]['campus']);
                                echo '</pre>';                
                            }                        
                        }
                   
                    foreach($victory_groups as $group){
                        
                        
                            if($group['member_id']== $member['member_id']){
							
                                $this->excel->getActiveSheet()->getStyle('AA'.$y)->getFont()->setBold(true);
                                $this->excel->getActiveSheet()->setCellValue('AB'.$y, 'Victory Group Details');

                                $this->excel->getActiveSheet()->setCellValue('AC'.$y, $group['campus']);
                                $this->excel->getActiveSheet()->setCellValue('AD'.$y, $group['when_jumpstart']);
                                $this->excel->getActiveSheet()->setCellValue('AE'.$y, $group['how_many_times']);
                                $this->excel->getActiveSheet()->setCellValue('AF'.$y, $group['demographic']);
                                $this->excel->getActiveSheet()->setCellValue('AG'.$y, $group['number_of_victory_group_member']);
                                $this->excel->getActiveSheet()->setCellValue('AH'.$y, $group['member_from_outreach']);
                                $this->excel->getActiveSheet()->setCellValue('AI'.$y, $group['schedule']);
                                $this->excel->getActiveSheet()->setCellValue('AJ'.$y, $group['one_2_one']);
                                $this->excel->getActiveSheet()->setCellValue('AK'.$y, $group['victory_weekend']);
                                $this->excel->getActiveSheet()->setCellValue('AL'.$y, $group['water_baptism']);
                                $this->excel->getActiveSheet()->setCellValue('AM'.$y, $group['making_disciples']);
                                $this->excel->getActiveSheet()->setCellValue('AN'.$y, $group['church_community']);
                                $this->excel->getActiveSheet()->setCellValue('AO'.$y, $group['foundation_class']);
                                $this->excel->getActiveSheet()->setCellValue('AP'.$y, $group['empowering_leaders']);
                                $this->excel->getActiveSheet()->setCellValue('AQ'.$y, $group['leadership_113']);
                                $this->excel->getActiveSheet()->setCellValue('AR'.$y, $group['do_you_have_intern']);
                                $z++;
								$y++;
                            }
                       
					
                        
                    }
                    $this->excel->setActiveSheetIndex(2);
                    $worksheet = $this->excel->getActiveSheet();
                    $g = $y + 1;
                    foreach($interns as $intern){
                        
                        
                            if($intern['member_id']== $member['member_id']){
						
                                $this->excel->getActiveSheet()->getStyle('AT'.$g)->getFont()->setBold(true);
                                        
                                $this->excel->getActiveSheet()->setCellValue('AU'.$g, 'Intern Details');
                                
                                        
                                $this->excel->getActiveSheet()->setCellValue('AV'.$g, $intern['intern_name']);
                                $this->excel->getActiveSheet()->setCellValue('AW'.$g, $intern['contact_number']);
                                $this->excel->getActiveSheet()->setCellValue('AX'.$g, $intern['campus']);
                                $this->excel->getActiveSheet()->setCellValue('AY'.$g, $intern['year_level']);
                                $this->excel->getActiveSheet()->setCellValue('AZ'.$g, $intern['graduating']);
                                $this->excel->getActiveSheet()->setCellValue('BA'.$g, $intern['one_2_one']);
                                $this->excel->getActiveSheet()->setCellValue('BB'.$g, $intern['victory_weekend']);
                                $this->excel->getActiveSheet()->setCellValue('BC'.$g, $intern['water_baptism']);
                                $this->excel->getActiveSheet()->setCellValue('BD'.$g, $intern['making_disciples']);
                                $this->excel->getActiveSheet()->setCellValue('BE'.$g, $intern['church_community']);
                                $this->excel->getActiveSheet()->setCellValue('BF'.$g, $intern['foundation_class']);
                                $this->excel->getActiveSheet()->setCellValue('BG'.$g, $intern['empowering_leaders']);
                                $this->excel->getActiveSheet()->setCellValue('BH'.$g, $intern['do_you_have_another_intern']);
                                $z++;
								 $g++;
                            }
                       

                       
                    }
					$z =$z+2;
                    $z++;
                    
       }  
       
        
            
             
                
       
        
       
        $this->excel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
       
        $this->excel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
        /*
        $filename='encubelt.xls'; //save our workbook as this file name
        header('Content-Type: application/vnd.ms-excel'); //mime type
        header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
        header('Cache-Control: max-age=0'); //no cache

      
        $objWriter = PHPExcel_IOFactory::createWriter($this->excel, 'Excel5');  
       
        $objWriter->save('php://output');
        */
    }
}