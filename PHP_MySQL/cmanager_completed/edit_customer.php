<?php include('includes/database.php');?>
<?php
// Assign a get variable
$id = $_GET['id'];

// Create a customer query
$query = "SELECT * FROM customers
          INNER JOIN customer_addresses ON
          customer_addresses.customer = customers.id
          WHERE customers.id = $id";

$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

if($result = $mysqli->query($query)){
  // Retrieve the object array
  while ($row = $result->fetch_assoc()) {
    // Get variable info from database
    $first_name = $row['first_name'];
    $last_name = $row['last_name'];
    $email = $row['email'];
    $password = $row['password'];
    $address = $row['address'];
    $address2 = $row['address2'];
    $city = $row['city'];
    $state = $row['state'];
    $zipcode = $row['zipcode'];

  }

  // Free result set
  $result ->close();

}

 ?>
 <?php
 // Assign get variable
 $id = $_GET['id'];

 if ($_POST){
   // Get variables from post array
   $first_name = mysqli_real_escape_string($mysqli, $_POST['first_name']);
   $last_name =mysqli_real_escape_string($mysqli, $_POST['last_name']);
   $email = mysqli_real_escape_string($mysqli,$_POST['email']);
   $password = mysqli_real_escape_string($mysqli, md5($_POST['password']));
   $address = mysqli_real_escape_string($mysqli, $_POST['address']);
   $address2 = mysqli_real_escape_string($mysqli, $_POST['address2']);
   $city = mysqli_real_escape_string($mysqli, $_POST['city']);
   $state = mysqli_real_escape_string($mysqli, $_POST['state']);
   $zipcode = mysqli_real_escape_string($mysqli, $_POST['zipcode']);

   // Create customer Update
   $query = "UPDATE customers
            SET
            first_name  = '$first_name',
             last_name  = '$last_name',
            email =  '$email' ,
            password  = '$password'
            WHERE id = $id

            ";
        $mysqli->query($query) or die();

        // Create Address Update:
        $query = "UPDATE customer_addresses
                 SET

        address  = '$address',
        address2  = '$address2',
         city  = '$city',
         state = '$state',
          zipcode = '$zipcode',
          WHERE customer = $id
          ";
          $mysqli->query($query) or die();

          // Display update messgae
          $msg = "Customer Updated";
          header('Location: index.php?msg='.urlencode($msg).'');
          exit;
        }
  ?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <link rel="canonical" href="https://getbootstrap.com/docs/3.4/examples/jumbotron-narrow/">

    <title>Customer Store Manager| Edit Customer</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/jumbotron-narrow.css" rel="stylesheet">


    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" ><a href="index.php">Home</a></li>
            <li class="active" role="presentation"><a href="edit_customer.php">Edit Customer</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">Customer Store Manager </h3>
      </div>



      <div class="row marketing">
        <div class="col-lg-12">
        <h2>Edit Customer</h2>
        <form role="form" method="post" action="edit_customer.php?id=<?php echo $id; ?>">
          <div class="form-group">
            <label >First Name:</label>
            <input name="first_name" type="text" class="form-control" value="<?php echo $first_name; ?>"   placeholder="Enter First Name">
            </div>
            <div class="form-group">
              <label >Last Name:</label>
              <input name="last_name" type="text" class="form-control"  value="<?php echo $last_name; ?>" placeholder="Enter Last Name">
              </div>
          <div class="form-group">
            <label >Email Address: </label>
            <input name="email" type="email" class="form-control" value="<?php echo $email; ?>"  placeholder="Enter Email">
            </div>
            <div class="form-group">
            <label >Password:</label>
            <input name="password" type="password" class="form-control" value="<?php echo $password; ?>" placeholder="Enter Password">
            </div>

            <div class="form-group">
              <label >Address:</label>
              <input name="address" type="text" class="form-control" value="<?php echo $address; ?>"  placeholder="Enter Address">
              </div>

              <div class="form-group">
                <label >Address 2:</label>
                <input name="address2" type="text" class="form-control"  value="<?php echo $address2; ?>" placeholder="Enter Address 2">
                </div>

                <div class="form-group">
                  <label >City:</label>
                  <input name="city" type="text" class="form-control" value="<?php echo $city; ?>"   placeholder="Enter City">
                  </div>

                  <div class="form-group">
                    <label >State:</label>
                    <input name="state" type="text" class="form-control" value="<?php echo $state; ?>"  placeholder="Enter State">
                    </div>

                    <div class="form-group">
                      <label >Zip Code:</label>
                      <input name="zipcode" type="text" class="form-control" value="<?php echo $zipcode; ?>"  placeholder="Enter Zip Code">
                      </div>

            <input type="submit" class="btn btn-primary" value="Update Customer" />
            </form>
        </div>
      </div>

      <footer class="footer">
        <p>&copy; 2021 BornRiot, Inc.</p>
      </footer>
    </div> <!-- /container -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
