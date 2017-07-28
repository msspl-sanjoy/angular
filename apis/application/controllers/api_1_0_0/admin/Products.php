<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
* --------------------------------------------------------------------------
* @ Controller Name          : All the Employee related api call from employee controller
* @ Added Date               : 28-05-2017
* @ Added By                 : Vishal
* -----------------------------------------------------------------
* @ Description              : This is the Employee index page
* -----------------------------------------------------------------
* @ return                   : array
* -----------------------------------------------------------------
* @ Modified Date            : 28-05-2017
* @ Modified By              : Vishal
* 
*/

//All the required library file for API has been included here 
/*require APPPATH . 'libraries/api/AppExtrasAPI.php';
require APPPATH . 'libraries/api/AppAndroidGCMPushAPI.php';
require APPPATH . 'libraries/api/AppApplePushAPI.php';*/

require_once('src/OAuth2/Autoloader.php');
require APPPATH . 'libraries/api/REST_Controller.php';


class Products extends REST_Controller{
    function __construct(){

        parent::__construct();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: authorization, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
        header('Access-Control-Allow-Credentials: true');
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        $method = $_SERVER['REQUEST_METHOD'];
        if($method == "OPTIONS") {
            die();
        }

        
        $this->load->config('rest');
        
        /*$this->load->config('serverconfig');
        $developer = 'www.massoftind.com';
        $this->app_path = "api_" . $this->config->item('test_api_ver');
        //publish app version
        $version = str_replace('_', '.', $this->config->item('test_api_ver'));

        $this->publish = array(
            'version' => $version,
            'developer' => $developer
        );*/
        
        //echo $_SERVER['SERVER_ADDR']; exit;
        $dsn = 'mysql:dbname='.$this->config->item('oauth_db_database').';host='.$this->config->item('oauth_db_host');
        $dbusername = $this->config->item('oauth_db_username');
        $dbpassword = $this->config->item('oauth_db_password');

        /*$sitemode= $this->config->item('site_mode');
        $this->path_detail=$this->config->item($sitemode);*/      
        $this->tables = $this->config->item('tables'); 
        $this->load->model('api_' . $this->config->item('test_api_ver') . '/admin/products_model', 'products');
        $this->load->library('form_validation');
        $this->load->library('email');
        $this->load->library('encrypt');

        //$this->load->library('calculation');

       $this->encryption->initialize(array(
            'cipher' => 'aes-256',
            'mode'   => 'ctr',
            'key'    => 'SAGLcHZ6nxEBnE4XlJ1nmcPTZaOXOGIX',
        ));


        $this->push_type = 'P';
        //$this->load->library('mpdf');

         OAuth2\Autoloader::register();

        // $dsn is the Data Source Name for your database, for exmaple "mysql:dbname=my_oauth2_db;host=localhost"
        $storage = new OAuth2\Storage\Pdo(array('dsn' => $dsn, 'username' => $dbusername, 'password' => $dbpassword));

        // Pass a storage object or array of storage objects to the OAuth2 server class
        $this->oauth_server = new OAuth2\Server($storage);

        // Add the "Client Credentials" grant type (it is the simplest of the grant types)
        $this->oauth_server->addGrantType(new OAuth2\GrantType\ClientCredentials($storage));

        // Add the "Authorization Code" grant type (this is where the oauth magic happens)
        $this->oauth_server->addGrantType(new OAuth2\GrantType\AuthorizationCode($storage));
    }


function getAllProducts_post(){
 
 $error_message = $success_message = $http_response = '';
 $result_arr = array();
if (!$this->oauth_server->verifyResourceRequest(OAuth2\Request::createFromGlobals())) 
        {
            $error_message = 'Invalid Token';
            $http_response = 'http_response_unauthorized';
        }
    else{

    $req_arr = $details_arr = array();
    //pre($this->input->post(),1);
    $flag = true;
    //echo $this->post('pass_key',true); exit();
    if(empty($this->post('pass_key',true))){
    $flag = false;
    $error_message = "pass key is required";
    }else{
      $req_arr['pass_key'] = $this->post('pass_key',true);

     }
    if(empty($this->post('admin_user_id',true))){
        $flag = false;
        $error_message = "admin user id is required";
    }else{
        $req_arr['admin_user_id'] = $this->post('admin_user_id',true);
    }

     if(empty($this->post('page',true))){
        $flag = false;
        $error_message = "page is required";
     }else{
         $req_arr['page'] = $this->post('page',true);

     }

        if($flag && empty($this->post('page_size', true)))
        {
            $flag           = false;
            $error_message  = "Page Size is required";
        }
        else
        {
            $req_arr['page_size']  = $this->post('page_size', true);
        }


        $req_arr['order']           = $this->input->post('order', true);
        $req_arr['order_by']        = $this->input->post('order_by', true);
        $req_arr['searchByName']    = $this->input->post('searchByName', true);

if($flag){

    $check_user = array(
    'pass_key'      => $this->encrypt->decode($req_arr['pass_key']),
    'admin_user_id' => $this->encrypt->decode($req_arr['admin_user_id']),
      );
   $checkloginstatus = $this->products->checkSessionExist($check_user);
   if(!empty($checkloginstatus) && count($checkloginstatus) > 0)
     {
       

       
       $details_arr     = $this->products->getAllProducts($req_arr);

       //pre($details_arr,1);


       foreach ($details_arr as $key => $value) {
           
           $details_arr[$key]['product_img_url'] = 'http://localhost/angular/assets/resources/' . 'product/thumb/'.$value['id'].'.'.$value['product_image_extension'];
       }


        $count   = $this->products->getAllProductsCount($req_arr);
                    $details_arr['count']       = $count['count_products'];
                    //pre($details_arr,1);

                    if(!empty($details_arr) && count($details_arr) > 0)
                    {
                        $result_arr['dataset']        = $details_arr;
                        //print_r($result_arr);die();
                        $http_response      = 'http_response_ok';
                        $success_message    = 'All Products';  
                    } 
                    else 
                    {
                        $http_response      = 'http_response_bad_request';
                        $error_message      = 'Something went wrong in API';  
                    }
                }

                else{
                    $http_response  = 'http_response_invalid_login';
                    $error_message  = 'User is invalid';

                }
            }else{
                $http_response = 'http_response_bad_request';
            }
  }
 

 json_response($result_arr, $http_response, $error_message, $success_message);
}
    

function addProducts_post(){
$error_message = $success_message = $http_response = '';
 $result_arr = array();
if (!$this->oauth_server->verifyResourceRequest(OAuth2\Request::createFromGlobals())) 
        {
            $error_message = 'Invalid Token';
            $http_response = 'http_response_unauthorized';
        }
    else{


    $req_arr = $details_arr = array();
    //pre($this->input->post(),1);
    $flag = true;
    //echo $this->post('pass_key',true); exit();
    if(empty($this->post('name',true))){
      $flag = false;
      $error_message = "Products Name is required";

    }else{
        $req_arr['product_name'] = $this->post('name',true);
    }
    if(empty($this->post('category_name',true))){

        $flag = false;
        $error_message = "Category is required";

    }else{
        $req_arr['fk_category_id'] = $this->post('category_name',true);

    }
    if(empty($this->post('price',true))){
        $flag = false;
        $error_message = "Product Price is required";
   }else{
    $req_arr['product_price'] = $this->post('price',true);
   }
   
   $req_arr['product_code']='PR'.rand(000,999);

   $result_arr['id'] = '1';
  
    //pre($req_arr,1);

       //print_r($_FILES['file']); exit();
            //print_r($_FILES['profile_image']['name']);
    
    
     if($flag){
    //$checkDuplicateEmployee = $this->employee->checkDuplicateEmployee($req_arr);
     if (isset($_FILES['file']['name']) && $_FILES['file']['size'] > 0) {
                 $array1     = explode('.', $_FILES['file']['name']);
                    $extension1 = end($array1);
                    //echo $extension1;die();
                    $file_ex    = array(
                        "png",
                        "jpg",
                        "jpeg"
                    );
            
                    $in_array = array(
                                'fk_category_id' => $req_arr['fk_category_id'],
                                'product_name' => $req_arr['product_name'],
                                'product_code' => $req_arr['product_code'],
                                'product_price' => $req_arr['product_price'],
                                'product_image_extension'=> $extension1
                                
                            );
                            
                         $last_id = $this->products->add_products($in_array);

                        $this->load->library('upload');
                        
                        $image_info              = getimagesize($_FILES['file']['tmp_name']);
                        $image_width             = $image_info[0];
                        $image_height            = $image_info[1];
                        $original_width          = $image_width;
                        $original_height         = $image_height;
                        $new_width               = 300;
                        $new_height              = 100;
                        $thumb_width             = $new_width;
                        $thumb_height            = $new_height;
                        $array                   = explode('.', $_FILES['file']['name']);
                        $extension               = end($array);
                        $file_name               = $last_id . "." . $extension;
                        $config['upload_path']   = $this->config->item('upload_file_url') . 'product/';
                        $config['allowed_types'] = 'png|jpg|jpeg';
                        $config['overwrite']     = true;
                        $config['file_name']     = $file_name;
                        
                        $this->upload->initialize($config);


                        
                        
                        if($this->upload->do_upload('file')) {
                          //pre($config,1);
                            $img_thumb = $this->config->item('upload_file_url') . 'product/thumb/' . $file_name;
                            $img       = $this->config->item('upload_file_url') . 'product/' . $file_name;
                            
                            $upload_data_details = $this->upload->data();
                            $image               = $file_name;
                            $this->load->library('image_lib');
                            $config['source_image']   = $img;
                            $config['new_image']      = $img;
                            $config['height']         = 400;
                            $config['width']          = 620;
                            $config['maintain_ratio'] = false;
                            $this->image_lib->initialize($config);
                            if ($this->image_lib->resize()) {
                                /**  Resize thumb **/
                                $config['image_library']  = 'gd2';
                                $config['source_image']   = $img;
                                $config['new_image']      = $img_thumb;
                                $config['create_thumb']   = true;
                                $config['maintain_ratio'] = true;
                                $config['width']          = $thumb_width;
                                $config['height']         = $thumb_height;
                                $this->image_lib->initialize($config);
                                $this->image_lib->resize();
                            }


                            
                            

                         if(!empty($last_id)){

                         $http_response = 'http_response_ok';
                         $success_message = 'Add Products successfully';

                         }else{
                         $http_response  = 'http_response_bad_request';
                         $error_message  = 'There is some problem, please try again';
                         }

                            
                            
                        }else{

                          $http_response  = 'http_response_bad_request';
                         $error_message  = 'Image not upload, please try again';


                        }


    
         


      /* }else{

        $http_response = 'http_response_bad_request';
        $error_message = 'File Type is not supported! Only GIF,JPG,PNG file can upoload';


       }*/

       }else{

        $http_response = 'http_response_bad_request';
        $error_message = 'Product Image required';


       }

   
    }else{
        $http_response = 'http_response_bad_request';
    }

    }
 //pre($result_arr,1);

json_response($result_arr, $http_response, $error_message, $success_message);
}


function getProductsDetail_post(){
$error_message = $success_message = $http_response = '';
$result_arr = array();
if (!$this->oauth_server->verifyResourceRequest(OAuth2\Request::createFromGlobals())) 
        {
            $error_message = 'Invalid Token';
            $http_response = 'http_response_unauthorized';
        }
else{

      $req_arr = $details_arr = array();
      $flag = true;

      if(empty($this->post('productsID')))
            {
                $flag = false;
                $error_message = "Products Id is required";
            }else{
              $req_arr['productsID'] = $this->post('productsID');
            }

           if($flag){
            $products_detail = $this->products->getProductsById($req_arr);
            $req_arr['dataset']= $products_detail;
            //print_r($req_arr);die();
            $http_response    = 'http_response_ok';

           }else{
                $http_response      = 'http_response_bad_request';
           }

    }

      json_response($req_arr,$http_response,$error_message,$success_message);
}

public function updateEmployeeDetail_post(){

 $error_message = $success_message = $http_response ='';
 $result_arr = array();

if(!$this->oauth_server->verifyResourceRequest(OAuth2\Request::createFromGlobals()))
  {
    $error_message = 'Invalid Token';
    $http_response = 'http_response_unauthorized';
 }else{

    $req_arr = $details_arr = array();
    $flag = true;

    if(empty($this->post('id',true))){

        $flag = false;
        $error_message = 'Employee Id is required';
    }else{
        $req_arr['employee_id'] = $this->post('id');
    }

    if(empty($this->post('name',true))){
      $flag = false;
      $error_message = "Employee Name is required";

    }else{
        $req_arr['name'] = $this->post('name',true);
    }
    if(empty($this->post('email',true))){

        $flag = false;
        $error_message = "Employee Email is required";

    }else{
        $req_arr['email'] = $this->post('email',true);

    }
    if(empty($this->post('mobile',true))){
        $flag = false;
        $error_message = "Employee Phone is required";
   }else{
    $req_arr['phone'] = $this->post('mobile',true);
   }
   

      
    $req_arr['address']= $this->post('address',true);
    $req_arr['detail']= '';

  
  
  if($flag){
    $checkEmployee = $this->employee->checkDuplicateEmployee($req_arr);
    if(empty($checkEmployee)){
        $degreeId = $this->employee->updateEmployee(array('id' => $req_arr['employee_id']), 
            array(
            'name' => $req_arr['name'],
            'email'=> $req_arr['email'],
            'mobile'=> $req_arr['phone'],
            'address'=> $req_arr['address'] ,
            ));

           $http_response      = 'http_response_ok';
           $success_message    = 'Updated user successfully';
   

    }else{
        $http_response = 'http_response_bad_request';
        $error_message = 'Employee Name already exists, please try another name';
    }


  }else{
    $http_response = 'http_response_bad_request';
  }

 
 }

 json_response($result_arr, $http_response, $error_message, $success_message);

}


function deleteEmployee_post(){

   $error_message = $success_message = $http_response = "";
   $req_arr = array();

   if(!$this->oauth_server->verifyResourceRequest(OAuth2\Request::createFromGlobals()))
  {
    $error_message = 'Invalid Token';
    $http_response = 'http_response_unauthorized';
 }else{
    $req_arr = $details_arr = array();
    $flag = true;

    if(empty($this->post('employeeID',true))){
        $flag = false;
        $error_message = 'employee id is required';
    }else{
       $req_arr['employeeID'] =  $this->post('employeeID'); 
    }
    if(empty($this->post('pass_key',true))){
    $flag = false;
    $error_message = "pass key is required";
    }else{
      $req_arr['pass_key'] = $this->post('pass_key',true);

     }
    if(empty($this->post('admin_user_id',true))){
        $flag = false;
        $error_message = "admin user id is required";
    }else{
        $req_arr['admin_user_id'] = $this->post('admin_user_id',true);
    }

    if($flag){

     $check_user = array(
    'pass_key'      => $this->encrypt->decode($req_arr['pass_key']),
    'admin_user_id' => $this->encrypt->decode($req_arr['admin_user_id']),
      );

  $checkloginstatus = $this->employee->checkSessionExist($check_user);
   if(!empty($checkloginstatus) && count($checkloginstatus) > 0)
     {

      $empId = $this->employee->getEmployeeById($req_arr);
      if(!empty($empId)){
          $this->employee->employeeDelete($req_arr);
          
           //$result_arr['dataset'] = $this->employee->getAllEmployee($req_arr);
           $count   = $this->employee->getAllEmployeeCount($req_arr);
           //print_r($count);die();
           $result_arr['count']   = $count['count_employee'];
           $result_arr = array();
           $http_response = 'http_response_ok';
           $success_message = 'User delete successfully';
           
      }else{
        $http_response = 'http_response_bad_request';
        $error_message = 'There is some problem, please try again';
      }

      
       
     }else{

      $http_response = 'http_response_invalid_login';
      $error_message = 'Invalid login';
     }

    }else{
        $error_message = 'http_response_unauthorized';

    }


 }

json_response($result_arr, $http_response, $error_message, $success_message);
}




/****************************end of admin controlller**********************/

}
