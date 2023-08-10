<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

class Api extends RestController {


    public function index_get($id = 0)
    {
        $check_data = $this->db->get_where('users', ['id'=> $id])->row_array();
        if($id){
            if($check_data){
                $this->response($check_data, RestController::HTTP_OK);
            }else{
                $this->response([
                    'status' => false,
                    'message' => 'Data tidak ditemukan'
                ], RestController::HTTP_NOT_FOUND);
            }
        }else{
            $data = $this->db->get('users')->result_array();
    
            $this->response($data, RestController::HTTP_OK);
        }
    }
}