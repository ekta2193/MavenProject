<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>

<html>
<head>

 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  .googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

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
								About Us				
							</h1>	
							<p class="text-white link-nav"><a href="${pageContext.request.contextPath }/">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="about.html"> About Us</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	


<div class="container">
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search Product names.." title="Type in a name">


<h2>Product List For Admin</h2>
<table class="table table-hover" id="myTable" class="display" border="2" width="80" align="center">
	<tr>
		<th>Sr. No.</th>
		<th>Product ID</th>
		<th>Product Name</th>
		<th>Product Category</th>
		<th>Description</th>
		<th>Stock</th>
		<th>Price</th>
		<th>Image</th>
		<th class="span2">Action</th>
	</tr>
	
	<c:if test="${empty productlist }">
		<tr>
			<td colspan="10" align="center">No Record Exists !!</td>
		</tr>
	</c:if>
	
	
	<c:forEach var="p" varStatus="st" items="${productlist }">
		<tr>
			<td><c:out value="${st.count }"></c:out></td>
			<td><c:out value="${p.pro_id }"></c:out></td>
			<td id="name"><c:out value="${p.pro_name }"></c:out></td>
			<td><c:out value="${p.pro_category.cat_name }"></c:out></td>
			<td><c:out value="${p.pro_description }"></c:out></td>
			<td><c:out value="${p.pro_stock }"></c:out></td>
			<td><i class="fas fa-pound-sign"></i> <c:out value="${p.pro_price }"></c:out></td>
			<td><img src="${pageContext.request.contextPath }/resources/${p.pro_imagename }" width="50px" height="50px"></td>
			<td class="span4">
				<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
					<a href="<c:url value="updateprod?pro_id=${p.pro_id}"/>" id="update" class="btn btn-success myBoldFont">Update</a>
					<a href="<c:url value="deleteProd?pro_id=${p.pro_id}"/>" id="delete" class="btn btn-danger myBoldFont">Delete</a>
				
			</td>
		</tr>
	</c:forEach>
	

</table>
</div>


<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
<jsp:include page="footer.jsp"/>
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