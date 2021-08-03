<?php defined('BASEPATH') OR die('No direct script access allowed');

class ModExcel extends CI_Model {

     public function getAll()
     {
		  $tbl_kredit = $this->db->get('tbl_kredit')->result();
          return $tbl_kredit;
     }

}