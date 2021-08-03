<?php 
class Login extends CI_Controller{
    function __construct(){
    parent::__construct();
    $this->load->Model('M_Login');
    }
    function index(){
        $this->load->view('login');
    }
    function auth(){
        $username = htmlspecialchars($this->input->post('username', TRUE),ENT_QUOTES);
        $password = htmlspecialchars($this->input->post('password', TRUE),ENT_QUOTES);
    
    $cek_admin = $this->M_Login->auth_admin($username,$password);
    if ($cek_admin->num_rows() > 0) {
        $data = $cek_admin->row_array();
        $this->session->set_userdata('masuk', TRUE);
        if ($data['status']=='Administrator') {
            $this->session->set_userdata('akses','Administrator');
            $this->session->set_userdata('ses_id',$data['username']);
            $this->session->set_userdata('ses_nama',$data['nm_user']);
            redirect('Admin/Admin');
                }
            }else{
                $url=base_url();
                echo $this->session->set_flashdata('msg', '<div class="alert alert-warning alert-dismissible bg-warning tect-white border-0 fade show"
                        role="alert">
                        <button type="button" class="close" data-dismiss="alert"
                        aria-label="close">
                        <span aria-hidden="true">&times;</span></button> Username & Password Salah </div>');
                redirect($url);
        }
    }
    function logout(){
        $this->session->sess_destroy();
        $url=base_url('');
        redirect($url);
    }
}
?>