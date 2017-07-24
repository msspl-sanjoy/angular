angular
	.module('mPokket')
	.controller('productsController', ["$scope", 'ajaxService', 'CONFIG', '$location', '$timeout', '$cookies', '$state', "helper", "$rootScope",'$window', function($scope, ajaxService, CONFIG, $location, $timeout, $cookies, $state, helper, $rootScope,$window)
	{
		//alert($state.$current.name);

		$scope.productsData 		= {};
	    $scope.pageno 				= 1; // initialize page no to 1
	    $scope.itemsPerPage 		= CONFIG.itemsPerPage; 
	    $scope.order_by 			= 'id';
	    $scope.order 				= 'desc';
	    $scope.searchByName 		= '';
		
		// Perform to getAllDegree action
		$scope.getAllProducts = function(pageno, order_by, order)
		{ 
	        //alert(CONFIG.ApiUrl);
	        $scope.pageno 	= pageno ? pageno : 1;
	       	$scope.order_by = order_by ? order_by : 'id';
	        $scope.order 	= order ? order : 'desc';

	        var getproductsParam = 
	        {
	        	'pass_key' 			: $cookies.get('pass_key'),
	        	'admin_user_id'		: $cookies.get('admin_user_id'),
	            'searchByName'		: $scope.searchByName,
	            'order_by'			: $scope.order_by,
	            'order'				: $scope.order,
	            'page'				: $scope.pageno,
	            'page_size'			: $scope.itemsPerPage
	        };

	        //alert(getDegreeParam.searchByName);
			ajaxService.ApiCall(getproductsParam, CONFIG.ApiUrl+'products/getAllProducts', $scope.getAllProductsSuccess, $scope.getAllProductsError, 'post');
		}

		//getAllDegree success function
		$scope.getAllProductsSuccess = function(result,status) 
		{
			//alert(status);
		    if(status == 200) 
		    {
                $scope.allProducts	= result.raws.data.dataset;
                $scope.total_count 	= result.raws.data.count;	        
		    }		       
		}

		//getAllDegree error function
		$scope.getAllProductsError = function(result) 
		{
            if(status == 403)
            {
                helper.unAuthenticate();
            }
            else
            {
                $scope.errorMessage = result.raws.error_message;
                $scope.clearMessage();
            }
		}

		//$scope.getAllProducts();

		/****************Search START******************/
		$scope.$watch('searchByName', function(tmpStr) 
		{
		    if (angular.isUndefined(tmpStr))
		    {		    	
		        return 0;
		    }
		    else if(tmpStr=='')
		    {
				$scope.getAllProducts($scope.pageno, $scope.order_by, $scope.order, $scope.searchByName);
		    }
		    else
		    {
		    	$timeout(function() 
		    	{ 
			        if (tmpStr === $scope.searchByName) 
			        {
						
						$scope.getAllProducts($scope.pageno, $scope.order_by, $scope.order, $scope.searchByName);
			        }
			    }, 1000);	
		    }		    
		});
		/**************** Search END ******************/
		
		// Perform the addEmployee action
		$scope.doaddproducts = function(productsData) 
		{ 
		 //alert("hii");
		 ajaxService.ApiCall(productsData, CONFIG.ApiUrl+'products/addProducts', $scope.addProductsSuccess, $scope.addProductsError, 'post');
		}

		//addDegree success function
		$scope.addProductsSuccess = function(result,status) 
		{
		    if(status == 200) 
		    {   $window.scrollTo(0, 100);
		    	$scope.successMessage = result.raws.success_message;
		    	$scope.clearMessage();
		    	$timeout(function() {
		        	$location.path('dashboard/products/list');
		        }, CONFIG.TimeOut);
		    }		       
		}

		//addDegree error function
		$scope.addProductsError = function(result) 
		{
			window.scrollTo(0, 100);
            $scope.errorMessage = result.raws.error_message;
            $scope.clearMessage();
		}

		

		$scope.deleteProducts = function(productsId,index)
		{
			
		    //alert(employeeeId);
		    $scope.productsIndex = index;
			var productsParam = {
				'productsID' 	: productsId,
			    'pass_key'		: $cookies.get('pass_key'),
	        	'admin_user_id' : $cookies.get('admin_user_id')
			};
			ajaxService.ApiCall(employeeParam, CONFIG.ApiUrl+'products/deleteProducts', $scope.deleteProductsSuccess, $scope.deleteProductsError, 'post');
		}

		$scope.deleteEmployeeSuccess = function(result, status)
		{
			if(status == 200)
			{   
				$scope.getAllProducts($scope.pageno, $scope.order_by, $scope.order, $scope.searchByName);
				//alert($scope.employeeIndex);
				$scope.successMessage = result.raws.success_message;
				$scope.clearMessage();
				$scope.getAllEmployee.splice($scope.productsIndex,1);
				//window.location.reload();
				
			}
		}

		$scope.deleteProductsError = function(result, status)
		{
			if(status == 403)
            {
                helper.unAuthenticate();
            } 
            else 
            {
	            $scope.errorMessage = result.raws.error_message;
	            $scope.clearMessage(); 
	        }
		}

		$scope.clearMessage = function()
		{
			$timeout(function() {
        		$scope.successMessage = '';
                $scope.errorMessage = '';
            }, CONFIG.TimeOut);
		}

	}])

.controller('editProductsController',["$scope", 'ajaxService', 'CONFIG', '$location', '$timeout', '$cookies', '$state', "helper", "$rootScope",'$stateParams','$window',function($scope,ajaxService,CONFIG,$location,$timeout,$cookies, $state, helper, $rootScope, $stateParams,$window){
	$scope.productsDetail 	= {};
	$scope.productsID 		= $stateParams.productsID;
	$scope.successMessage 	= '';
    $scope.errorMessage 	= '';
 // Perform to getDegreeDetail action
		$scope.getProductsDetail = function()
		{ 
			var productsParam = {'productsID' : $scope.productsID};
			ajaxService.ApiCall(productsParam, CONFIG.ApiUrl+'products/getProductsDetail', $scope.getDegreeDetailSuccess, $scope.getDegreeDetailError, 'post');
		}

 //getDegreeDetail success function
		$scope.getDegreeDetailSuccess = function(result,status) 
		{
		    if(status == 200) 
		    {
                $scope.employeeDetail = result.raws.data.dataset;
		    }
		}

		//getDegreeDetail error function
		$scope.getDegreeDetailError = function(result) 
		{
            $scope.errorMessage = result.raws.error_message;
            $scope.clearMessage();
		}

		if($state.$current.name == 'products.update-products')
		{
			$scope.getEmployeeDetail();
		}

        $scope.updateProductsDetail= function(employeeDetail){
 ajaxService.ApiCall(employeeDetail, CONFIG.ApiUrl+'products/updateEmployeeDetail',
 $scope.updateProductsDetailSuccess,$scope.updateProductsDetailError, 'post');
}

//updateDegreeDetail success function
		$scope.updateProductsDetailSuccess = function(result,status) 
		{
		    if(status == 200) 
		    {
		    	$window.scrollTo(0, 100);
                $scope.successMessage = result.raws.success_message;
                $scope.clearMessage();
                $timeout(function() {
		        $location.path('dashboard/products/list');
		        }, CONFIG.TimeOut);
		    }
		}

		//updateDegreeDetail error function
		$scope.updateProductsDetailError = function(result) 
		{
			window.scrollTo(0, 100);
            $scope.errorMessage = result.raws.error_message;
            $scope.clearMessage();
		}
		
		$scope.clearMessage = function()
		{
			$timeout(function() 
			{
        		$scope.successMessage = '';
                $scope.errorMessage = '';
            }, CONFIG.TimeOut);
		}

		$scope.myVar='PR'+rand(000,999)+time();

}])

