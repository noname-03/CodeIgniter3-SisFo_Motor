<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModCus extends CI_Model {
    function getAll() {
    return $this->db->get('tbl_customer')->result();
    }
}
/* End of file ModJur.php */
/* Location: ./application/models/ModJur.php */
?>