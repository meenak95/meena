
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Product Details</title>
</head>
<body>

 <div class="row">
  <center>
  <h1>${selectedProduct.name}</h1>
 <img src="../resources/images/${selectedProduct.id}.jpg"  alt="image name ${selectedProduct.id}"><br/>
</div>
 </center>

 <div>
 <br/>
 <div class="row">
 <div class="col-sm-2">
 </div>
  <div class="col-sm-4">
  
		 <c:if test="${!empty selectedProduct.name}">
		 <h2>PRODUCT DETAILS</h2>
			 <table>
				<tr>
					<th align="left" width="80">Product ID</th>
					<td align="left" >${selectedProduct.id}</td>
					
					</tr>
					<tr>
					<th align="left" width="120">Product Name</th>
					<td align="left" >${selectedProduct.name}</td>
					</tr>
					
					<tr>
					<th align="left" width="200">Product Description</th>
					<td align="left" >${selectedProduct.description}</td>
					</tr>
					
					<tr>
					<th align="left" width="80">Price</th>
					<td align="left" >${selectedProduct.price}</td>
					</tr>
					</table>
			</div>
			
			 <div class="col-sm-6">
			    <h2>CATEGORY DETAILS</h2> 
	        <table>
				<tr>
					<th align="left" width="80">Category ID</th>
					<td align="left" >${selectedProduct.category.id}</td>
					
					</tr>
					<tr>
					<th align="left" width="120">Category Name</th>
					<td align="left" >${selectedProduct.category.name}</td>
					</tr>
					
					<tr>
					<th align="left" width="200">CategoryDescription</th>
					<td align="left" >${selectedProduct.category.description}</td>
					</tr>
					
					
					
			</table>
			</div>
			</div>
		</c:if>
	</div>
</body>
</html>