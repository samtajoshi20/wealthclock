<?php 

class MainModel extends CI_Model {

        public function __construct()
        {
                parent::__construct();
        }

        public function insert_entry($table, $postData)
        {
             //   $this->userEmail = $postData->userEmail; // please read the below note
             //  	$this->userPassword = $postData->userPassword; 
             //	$this->created  = time();
			 
        		//print_r($postData); exit;
                if($this->db->insert($table, $postData))
                return $this->db->insert_id();
            	else 
            	return $this->db->error();
                //echo $this->db->last_query();exit;
        }
		
		public function select_row($table, $select='*', $where='', $limit='')
        {            
            $this->db->select($select);
            $this->db->from($table);
            if(!empty($where))
            {
                foreach($where as $whereCol => $whereVal)
                {
                    $this->db->where($whereCol, $whereVal);
                }
            }
            
            if($limit)
            $this->db->limit($limit);
            $query = $this->db->get();
            return $query->row();
        }

        public function select_entry($table, $select='*', $where='', $limit='')
        {            
            $this->db->select($select);
            $this->db->from($table);
            if(!empty($where))
            {
                foreach($where as $whereCol => $whereVal)
                {
                    $this->db->where($whereCol, $whereVal);
                }
            }
            
            if($limit)
            $this->db->limit($limit);
            $query = $this->db->get();
            return $query->result();
        }
		
		

        

}

?>