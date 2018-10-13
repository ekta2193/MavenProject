

	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
			 

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
          <script src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
<c:if test="${empty prodList }">
		<tr>
			<td colspan="10" align="center">No Record Exists !!</td>
			<td>${catId }</td>
		</tr>
	</c:if>
	
	<c:forEach var="p" varStatus="st" items="${prodList }">
	
	
	<div class="col-lg-9">
	
									<a href="${pageContext.request.contextPath }/productDetails?pro_id=${p.pro_id }"><h4>${p.pro_name }</h4></a>
									<p>
										${p.pro_description }
											</p>
								</div>
								<div class="col-lg-3 flex-row d-flex price-size">
									<div class="s-price col">
										
										<span >${p.pro_price }</span>
										
									</div>
									
									<div class="s-price col">
									
									
									
									<form action="${pageContext.request.contextPath }/addToCart" method="post">
									<input type="hidden" value="${p.pro_id }" name="pro_id"/>
									<input type="hidden" value="${p.pro_price }" name="pro_price"/>
									<input type="hidden" value="${p.pro_imagename }" name="pro_imagename"/>
									<input type="hidden" value="${p.pro_stock }" name="pro_stock"/>
									<input type="hidden" value="${p.pro_name }" name="pro_name"/>
									<input type="hidden" value="${p.pro_category.cat_id }" name="cat_id"/>
									
									
										<span><button type="submit" class="fa fa-cart-plus">      </button></span>
										<!-- <input class="glyphicon glyphicon-plus" type="submit" value=/> -->
									
									</form>
									
									
									
										
										<!-- <span class="glyphicon glyphicon-plus"></span> -->
									</div>
																										
								</div>
				</c:forEach>				
								
		


<h4><a href="${pageContext.request.contextPath }/productDetails?pro_id=${pro.pro_id }">${pro.pro_name }</a></h4>
						


		