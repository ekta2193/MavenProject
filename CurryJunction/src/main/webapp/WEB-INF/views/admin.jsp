<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
  <title>Curry Junction</title>
  <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="resources/css/linearicons.css">
			<link rel="stylesheet" href="resources/css/font-awesome.min.css">
			<link rel="stylesheet" href="resources/css/bootstrap.css">
			<link rel="stylesheet" href="resources/css/magnific-popup.css">
			<link rel="stylesheet" href="resources/css/nice-select.css">							
			<link rel="stylesheet" href="resources/css/animate.min.css">
			<link rel="stylesheet" href="resources/css/jquery-ui.css">			
			<link rel="stylesheet" href="resources/css/owl.carousel.css">
			<link rel="stylesheet" href="resources/css/main.css">

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="resources/css1/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css1/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="resources/js1/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="resources/js1/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="resources/js1/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- timer -->
<link rel="stylesheet" href="resources/css1/jquery.countdown.css" />
<!-- //timer -->
<!-- animation-effect -->
<link href="resources/css1/animate.min.css" rel="stylesheet"> 
<script src="resources/js1/wow.min.js"></script>
<script>
 new WOW().init();
</script>
 <!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Curry Junction</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="resources/css/linearicons.css">
			<link rel="stylesheet" href="resources/css/font-awesome.min.css">
			<link rel="stylesheet" href="resources/css/bootstrap.css">
			<link rel="stylesheet" href="resources/css/magnific-popup.css">
			<link rel="stylesheet" href="resources/css/nice-select.css">							
			<link rel="stylesheet" href="resources/css/animate.min.css">
			<link rel="stylesheet" href="resources/css/jquery-ui.css">			
			<link rel="stylesheet" href="resources/css/owl.carousel.css">
			<link rel="stylesheet" href="resources/css/main.css">
		
</head>
<body>

<jsp:include page="header.jsp"/>
		<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								ADMIN			
							</h1>	
							<p class="text-white link-nav"><a href="${pageContext.request.contextPath }/">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="about.html"> About Us</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

<div class="container">
  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#category">Category</a></li>
    <li><a data-toggle="tab" href="#product">Product</a></li>
    
  </ul>

  <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="category">
        <form action="${pageContext.request.contextPath }/saveCategory" id="tab">
            <label>Name</label>
            <input name="cat_name" type="text" class="input-xlarge"/>
            <label>Description</label>
            <input name="cat_desc" type="text" class="input-xlarge"/>
            
           
          	<div>
        	    <button class="btn btn-primary" type="submit" >Update</button>
        	    <button class="btn btn-warning" type="reset" >Cancel</button>
        	</div>
        </form>
      </div>
     
    <div class="tab-pane fade" id="product">
    	<form action="${pageContext.request.contextPath }/saveProduct" id="tab3" enctype="multipart/form-data" method="post">
            <label>Name</label>
            <input name="pro_name" type="text" class="input-xlarge"/>
             <label>Description</label>
            <textarea name="pro_description" rows="3" class="input-xlarge"></textarea> 
            <label>Stock</label>
            <input name="pro_stock" type="number" class="input-xlarge"/>
            <label>Price</label>
            <input name="pro_price" type="text" class="input-xlarge"/>
            
            <table>
            	<tr>
            		<td>Select Category</td>
            		<td>
        				<select name="pro_category.cat_id" id="catName" class="form-control" required="required">
						<option value="" label="----------- Select Category -----------" disabled="true" selected/>
						<c:forEach items="${catlist }" var="cat">
							<option value="${cat.cat_id }">${cat.cat_name }</option>
						</c:forEach>
						</select>
    				</td>
    			</tr>
    		</table>
    		
    		
    		
    		<div class="fileinput fileinput-new" >
    			<table>
    				<tr>
    					<td>Product Image</td>
    					<td><input class="form-control" type="file" name="pro_image" /></td>
    				</tr>
    			</table>
    		</div>
    		
    		<div>
        	    <button class="btn btn-primary" type="submit" >Update</button>
        	    <button class="btn btn-warning" type="reset" >Cancel</button>
        	</div>
        </form>

      </div> 
      </div>
  </div>
  </div>

<script src="resources/js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="resources/js/vendor/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="resources/js/easing.min.js"></script>			
			<script src="resources/js/hoverIntent.js"></script>
			<script src="resources/js/superfish.min.js"></script>	
			<script src="resources/js/jquery.ajaxchimp.min.js"></script>
			<script src="resources/js/jquery.magnific-popup.min.js"></script>	
 			<script src="resources/js/jquery-ui.js"></script>			
			<script src="resources/js/owl.carousel.min.js"></script>						
			<script src="resources/js/jquery.nice-select.min.js"></script>							
			<script src="resources/js/mail-script.js"></script>	
			<script src="resources/js/main.js"></script>	
</body>
</html>
