<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModMot extends CI_Model {
    function getAll() {
    return $this->db->get('tbl_motor')->result();
    }
}
/* End of file ModJur.php */
/* Location: ./application/models/ModJur.php */
?>