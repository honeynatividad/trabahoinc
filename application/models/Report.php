<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Report extends CI_Model{
    function __construct() {
        $this->load->database();
        $this->userTbl = 'members';
    }
    
    function getMember($params = array()){
        
        $this->db->select('*');
        $this->db->from("members");
        
        //fetch data by conditions
        if(array_key_exists("conditions",$params)){
            foreach ($params['conditions'] as $key => $value) {
                $this->db->where($key,$value);
            }
        }
        
        if(array_key_exists("member_id",$params)){
            $this->db->where('member_id',$params['member_id']);
            $query = $this->db->get();
            $result = $query->row_array();
        }else{
            
            //set start and limit
            if(array_key_exists("start",$params) && array_key_exists("limit",$params)){
                $this->db->limit($params['limit'],$params['start']);
            }elseif(!array_key_exists("start",$params) && array_key_exists("limit",$params)){
                $this->db->limit($params['limit']);
            }
            $query = $this->db->get();
            if(array_key_exists("returnType",$params) && $params['returnType'] == 'count'){
                $result = $query->num_rows();
            }elseif(array_key_exists("returnType",$params) && $params['returnType'] == 'single'){
                $result = ($query->num_rows() > 0)?$query->row_array():FALSE;
            }else{
                $result = ($query->num_rows() > 0)?$query->result_array():FALSE;
            }
        }

        //return fetched data
        
        return $result;
    }
    
    function getVictoryGroup($params = array()){
        $this->db->select('*');
        $this->db->from("victory_groups");
        
        //fetch data by conditions
        if(array_key_exists("conditions",$params)){
            foreach ($params['conditions'] as $key => $value) {
                $this->db->where($key,$value);
            }
        }
        
        if(array_key_exists("member_id",$params)){
            $this->db->where('member_id',$params['member_id']);
            $query = $this->db->get();
            $result = $query->row_array();
        }else{
            
            if(array_key_exists("start",$params) && array_key_exists("limit",$params)){
                $this->db->limit($params['limit'],$params['start']);
            }elseif(!array_key_exists("start",$params) && array_key_exists("limit",$params)){
                $this->db->limit($params['limit']);
            }
            $query = $this->db->get();
            if(array_key_exists("returnType",$params) && $params['returnType'] == 'count'){
                $result = $query->num_rows();
            }elseif(array_key_exists("returnType",$params) && $params['returnType'] == 'single'){
                $result = ($query->num_rows() > 0)?$query->row_array():FALSE;
            }else{
                $result = ($query->num_rows() > 0)?$query->result_array():FALSE;
            }
        }

        //return fetched data
        
        return $result;
    }
    
    function getUsersData(){
        $q = $this->db->query("SELECT * FROM users");
        $this->db->close();
        return $q->result_array();  
    }

    function getMembersData($id){
        $q = $this->db->query("SELECT * FROM members WHERE member_id='$id'");
        $this->db->close();
        return $q->result_array();  
    }

    function getVictoryData($id){
        $q = $this->db->query("SELECT * FROM victory_groups WHERE member_id='$id'");
        $this->db->close();
        return $q->result_array();  
    }

    function getInternData($id){
        $q = $this->db->query("SELECT * FROM interns WHERE member_id='$id'");
        $this->db->close();
        return $q->result_array();  
    }


    function getIntern($params = array()){
        $this->db->select('*');
        $this->db->from("interns");
        
        //fetch data by conditions
        if(array_key_exists("conditions",$params)){
            foreach ($params['conditions'] as $key => $value) {
                $this->db->where($key,$value);
            }
        }
        
        if(array_key_exists("victory_group_id",$params)){
            $this->db->where('victory_group_id',$params['victory_group_id']);
            $query = $this->db->get();
            $result = $query->row_array();
        }else{
            
            if(array_key_exists("start",$params) && array_key_exists("limit",$params)){
                $this->db->limit($params['limit'],$params['start']);
            }elseif(!array_key_exists("start",$params) && array_key_exists("limit",$params)){
                $this->db->limit($params['limit']);
            }
            $query = $this->db->get();
            if(array_key_exists("returnType",$params) && $params['returnType'] == 'count'){
                $result = $query->num_rows();
            }elseif(array_key_exists("returnType",$params) && $params['returnType'] == 'single'){
                $result = ($query->num_rows() > 0)?$query->row_array():FALSE;
            }else{
                $result = ($query->num_rows() > 0)?$query->result_array():FALSE;
            }
        }

        //return fetched data
        
        return $result;
    }
    
    function getHighestNo(){
        $query = "SELECT member_id, COUNT(*)  FROM 'victory_groups' GROUP BY member_id ORDER BY COUNT(*) DESC";
        $q = $this->db->query("SELECT COUNT(*) as total FROM victory_groups GROUP BY member_id ORDER BY COUNT(*) DESC LIMIT 1");
        $this->db->close();
        return $q->result_array();  
    }
    
    function getHighestInternNo(){
        //$query = "SELECT member_id, COUNT(*)  FROM 'victory_groups' GROUP BY member_id ORDER BY COUNT(*) DESC";
        $q = $this->db->query("SELECT COUNT(*) as total FROM interns GROUP BY member_id ORDER BY COUNT(*) DESC LIMIT 1");
        $this->db->close();
        return $q->result_array();  
    }
    
    function getTotalMember(){
        $q = $this->db->query("SELECT COUNT(*) as total FROM members");
        $this->db->close();
        return $q->result_array();  
    }
}