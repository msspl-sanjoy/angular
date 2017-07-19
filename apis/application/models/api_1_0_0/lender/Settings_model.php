<?php
/* * ******************************************************************
 * User model for Mobile Api 
  ---------------------------------------------------------------------
 * @ Added by                 : Mousumi Bakshi 
 * @ Framework                : CodeIgniter
 * @ Added Date               : 02-03-2016
  ---------------------------------------------------------------------
 * @ Details                  : It Cotains all the api related methods
  ---------------------------------------------------------------------
 ***********************************************************************/
class Settings_model extends CI_Model
{

     public $_cms_master = 'cms_master';
    
     
     
    function __construct()
    {
       
        //load the parent constructor
        parent::__construct();        
         
    }

    /*
     * --------------------------------------------------------------------------
     * @ Function Name            : getAboutdetail()
     * @ Added Date               : 25-06-2017
     * @ Added By                 : Vishal Gupta
     * -----------------------------------------------------------------
     * @ Description              : This function is used for about details
    */
    public function getPagedetail($page_name)
    {
        $this->db->select('*');
        $this->db->where('menu_page_name',$page_name);
        $result = $this->db->get($this->_cms_master)->row_array();
        return $result;

    }



}