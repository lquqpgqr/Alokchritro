<center><!--  center Begin  -->
    
    <h1> My Orders </h1>
    
    <p class="lead"> Your orders on one place</p>
    
    <p class="text-muted">
        
        If you have any questions, feel free to <a href="../contact.php">Contact Us</a>. Our Customer Service work <strong>24/7</strong>
        
    </p>
    
</center><!--  center Finish  -->


<hr>


<div class="table-responsive">
    
    <table class="table table-bordered table-hover">
        
        <thead>
            
            <tr>
                
                <th> NO: </th>
                <th> Product Name:</th>
                <th> Invoice No: </th>
                <th> Qty: </th>
                <th> Amount: </th>
                <th> Order Date:</th>
                
                
            </tr>
            
        </thead>
        
        <tbody>
           
           <?php 
            
            $customer_session = $_SESSION['customer_email'];
            
            $get_customer = "select * from customers where customer_email='$customer_session'";
            
            $run_customer = mysqli_query($con,$get_customer);
            
            $row_customer = mysqli_fetch_array($run_customer);
            
            $customer_id = $row_customer['customer_id'];
            
            $get_orders = "select * from orders where customer_id='$customer_id'";
            
            $run_orders = mysqli_query($con,$get_orders);
            
            $i = 0;
            
            
            
            
            while($row_orders = mysqli_fetch_array($run_orders)){
                
                
                $order_id = $row_orders['order_id'];
                
                $invoice_no = $row_orders['invoice_no'];
                $product_id = $row_orders['product_id'];
                
                $qty = $row_orders['qty'];
                $s_total = $row_orders['s_total'];
                
                $order_date = substr($row_orders['o_date'],0,11);
                
                $i++;
                
                
            
            ?>
   
            <?php
            
                $get_products = "select * from products where product_id= $product_id";             
                $run_products = mysqli_query($con,$get_products);
                $finalp = mysqli_fetch_array($run_products);
                $pt = $finalp['product_title'];
            
            ?>
            
            <tr><!--  tr Begin  -->
                
                <th> <?php echo $i; ?> </th>
                
                <td> <a href="../details.php?pro_id=<?php echo $product_id; ?>"> <?php echo $pt; ?> </a> </td>
                <td> <?php echo $invoice_no; ?> </td>
                <td> <?php echo $qty; ?> </td>
                <td>  ৳ <?php echo $s_total; ?> </td>
                <td> <?php echo $order_date; ?> </td>
                
            </tr>
            
            <?php } ?>
            
        </tbody>
        
    </table>
    
</div>