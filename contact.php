<?php 
    
    $active='Contact';
    include("includes/header.php");

?>
  
   <div id="content">
       <div class="container">
           
           <div class="col-md-3"><!-- col-md-3 Begin -->
   
   <?php 
    
    include("includes/sidebar.php");
    
    ?>
               
           </div>
           
           <div class="col-md-9">
               
               <div class="box">
                   
                   <div class="box-header">
                       
                       <center>
                           
                           <h2> Feel free to Contact Us</h2>
                           
                           <p class="text-muted">
                               
                               If you have any questions, feel free to contact us. Our Customer Service work <strong>24/7</strong>
                               
                           </p>
                           
                       </center>
                       
                       <form action="contact.php" method="post">
                           
                           <div class="form-group">
                               
                               <label>Name</label>
                               
                               <input type="text" class="form-control" name="name" required>
                               
                           </div>
                           
                           <div class="form-group">
                               
                               <label>Email</label>
                               
                               <input type="text" class="form-control" name="email" required>
                               
                           </div>
                           
                           <div class="form-group">
                               <label>Subject</label>
                               
                               <input type="text" class="form-control" name="subject" required>
                               
                           </div>
                           
                           <div class="form-group">
                               
                               <label>Message</label>
                               
                               <textarea name="message" class="form-control"></textarea>
                               
                           </div>
                           
                           <div class="text-center">
                               <button type="submit" name="submit" class="btn btn-primary">
                               
                               <i class="fa fa-user-md"></i> Send Message
                               
                               </button>
                               
                           </div>
                           
                       </form>
                       
                       <?php 
                       
                       if(isset($_POST['submit'])){
                           
                           
                           
							$sender_name = $_POST['name'];
                           
							$sender_email = $_POST['email'];
                           
							$sender_subject = $_POST['subject'];
                           
							$sender_message = $_POST['message'];
                           
							$insert_contact = "insert into contact_us (sender_name,sender_email,sender_subject,sender_message) values ('$sender_name','$sender_email','$sender_subject','$sender_message')";
    
							$run_contact = mysqli_query($con,$insert_contact);
                           
                           echo "<h2 align='center'> Your message has sent sucessfully </h2>";
                           
                       }
                       
                       ?>
                       
                   </div>
                   
               </div>
               
           </div>
           
       </div>
   </div>
   
   <?php 
    
    include("includes/footer.php");
    
    ?>
    
    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>
</body>
</html>