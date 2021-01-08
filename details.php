<?php 
	include 'include/header.php';
	include 'include/slider.php';
 ?>	
 <?php 
    if (!isset($_GET['proid']) || $_GET['proid']==NULL) {
        echo "<script>window.location = '404.php'</script>";
    } else {
        $id = $_GET['proid'];
    }
  ?>
 <div class="main">
    <div class="content">
    	<div class="section group">
    		<?php 
    			$get_product_details = $product->get_details($id);
    			if($get_product_details){
    				while ($result_details = $get_product_details->fetch_assoc()) {
    					
    			
    		 ?>
				
				<div class="desc span_3_of_2">
					<h2><?php echo $result_details['productName'] ?> </h2>
					<p><?php echo $fm->textShorten($result_details['product_desc'],30) ?></p>					
					<div class="price">
						<p>Price: <span><?php echo $result_details['price']." "."VNĐ" ?></span></p>
						<p>Category: <span><span><?php echo $result_details['catName'] ?></span></p>
						<p>Brand:<span><?php echo $result_details['brandName'] ?></span></p>
					</div>
				<div class="add-cart">
					<form action="cart.php" method="post">
						<input type="number" class="buyfield" name="" value="1"/>
						<input type="submit" class="buysubmit" name="submit" value="Buy Now"/>
					</form>				
				</div>
			</div>
			<div class="product-desc">
			<h2>Product Details</h2>
			<p><?php echo $fm->textShorten($result_details['product_desc'],30) ?></p>
	    </div>
				
	</div>
	<?php 
			}
		}
	 ?>
				<div class="rightsidebar span_3_of_1">
					<h2>CATEGORIES</h2>
					<ul>
				      <li><a href="productbycat.php">Mobile Phones</a></li>
				     
    				</ul>
    	
 				</div>
 		</div>
 	</div>
	<?php 
	include 'include/footer.php';
	
 ?>