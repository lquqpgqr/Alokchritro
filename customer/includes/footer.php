<div id="footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-3">
               
               <h4>Pages</h4>
                
                <ul><!-- ul Begin -->
                    <li><a href="cart.php">Shopping Cart</a></li>
                    <li><a href="contact.php">Contact Us</a></li>
                    <li><a href="shop.php">Shop</a></li>
                    <li><a href="customer/my_account.php">My Account</a></li>
                </ul><!-- ul Finish -->
                
               
                
                
                
            </div>
            
            <div class="com-sm-6 col-md-3">
                
                <h4>Top Products Categories</h4>
                
                <ul><!-- ul Begin -->
                
                    <?php 
                    
                        $get_p_cats = "select * from product_categories";
                    
                        $run_p_cats = mysqli_query($con,$get_p_cats);
                    
                        while($row_p_cats=mysqli_fetch_array($run_p_cats)){
                            
                            $p_cat_id = $row_p_cats['p_cat_id'];
                            
                            $p_cat_title = $row_p_cats['p_cat_title'];
                            
                            echo "
                            
                                <li>
                                
                                    <a href='shop.php?p_cat=$p_cat_id'>
                                    
                                        $p_cat_title
                                    
                                    </a>
                                
                                </li>
                            
                            ";
                            
                        }
                    
                    ?>
                
                </ul>
                
                <hr class="hidden-md hidden-lg">
                
            </div>
            
            <div class="col-sm-6 col-md-3">
                
                <h4>Find Us</h4>
                
                <p>
                    
                    <strong>Alokchritho.com</strong>
                    <br/>Developers
					<br/><a href="https://www.facebook.com/shahedsunny17"><strong>Sunny</strong></a>
                    <br/><a href="https://www.facebook.com/mehedi.sarder.5"><strong>Mehedi</strong></a>
                    <br/><a href="https://www.facebook.com/lquqpgqr2"><strong>Abir</strong></a>
                    
                    
                </p>
                
            
                
                
                
            </div>
            
            <div class="col-sm-6 col-md-3">
                
                
                
                <h4>Keep In Touch</h4>
                
                <p class="social">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-instagram"></a>
                    <a href="#" class="fa fa-google-plus"></a>
                    <a href="#" class="fa fa-envelope"></a>
                </p>
                <a href="contact.php">Check Our Contact Page</a>
                
            </div>
        </div>
    </div>
</div>


<div id="copyright">
    <div class="container">
        <div class="col-md-6">
            
            <p class="pull-left">&copy; Alokchritro.com All Rights Reserve</p>
            
        </div>
        <div class="col-md-6">
            
            <p class="pull-right">Project: <a href="#">Software 3100</a></p>
            
        </div>
    </div>
</div>