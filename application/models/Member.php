<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Member extends CI_Model{
    function __construct() {
        $this->load->database();
        $this->userTbl = 'members';
    }
    /*
     * get rows from the users table
     */
    function getRows($params = array()){
        $this->db->select('*');
        $this->db->from($this->userTbl);
        
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
    
    /*
     * Insert user information
     */
    public function insert($data = array()) {
        //add created and modified data if not included
        if(!array_key_exists("created", $data)){
            $data['created'] = date("Y-m-d H:i:s");
        }
        if(!array_key_exists("modified", $data)){
            $data['modified'] = date("Y-m-d H:i:s");
        }
        
        //insert user data to users table
        $insert = $this->db->insert($this->userTbl, $data);
        
        //return the status
        if($insert){
            return $this->db->insert_id();;
        }else{
            return false;
        }
    }
    
    function updateMember($id,$data){
        $this->load->database();
        //print_r($data);
        $this->db->update('members', $data, array('member_id' => $id));
        //$this->db->where('member_id', $id);
        //$this->db->update('members', $data);
        //$this->db->close();
        return true;
    }
    
    function getRowsMember($params = array()){
        $this->db->select('*');
        $this->db->from($this->userTbl);
        $this->db->order_by("campus","asc");
        $this->db->order_by("last_name","asc");
        
        //fetch data by conditions
        if(array_key_exists("conditions",$params)){
            foreach ($params['conditions'] as $key => $value) {
                $this->db->where($key,$value);
                $this->db->order_by("campus","asc");
                $this->db->order_by("last_name","asc");
            }
        }
        
        if(array_key_exists("member_id",$params)){
            $this->db->where('member_id',$params['member_id']);
            $this->db->order_by("campus","asc");
            $this->db->order_by("last_name","asc");
            $query = $this->db->get();
            $result = $query->row_array();
        }else{
            
            //set start and limit
            $this->db->where('area',$params['area']);
            $this->db->order_by("campus","asc");
            $this->db->order_by("last_name","asc");
            $query = $this->db->get();
            
            
            $result = ($query->num_rows() > 0)?$query->result_array():FALSE;
        }

        //return fetched data
        
        return $result;
    }
    
    public function campusSelect(){
        
    }
    
    public function delete($id){
               
        $tables = array('members', 'victory_groups', 'interns','users');
        $this->db->where('member_id', $id);
        $this->db->delete($tables);
        return true;
    }
}