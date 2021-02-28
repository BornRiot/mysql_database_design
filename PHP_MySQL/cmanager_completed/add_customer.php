<?php include('includes/database.php');?>
<?php
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


    // Create customer query
    $query = "INSERT INTO customers (first_name, last_name, email, password)
    VALUES('$first_name', '$last_name', '$email', '$password')";

    // Run querry
    $mysqli->query($query);

    // Create address query

    $query = "INSERT INTO customer_addresses (customer, address,address2, city,
      state, zipcode) VALUES('$mysqli->insert_id', '$address', '$address2',
        '$city', '$state', '$zipcode')";


    // Run querry
    $mysqli->query($query);
    $msg = 'Customer Added';
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

    <title>Customer Store Manager| Add Customer</title>

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
            <li class="active" role="presentation"><a href="add_customer.php">Add Customer</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">Customer Store Manager </h3>
      </div>



      <div class="row marketing">
        <div class="col-lg-12">
        <h2>Add Customer</h2>
        <form role="form" method="post" action="add_customer.php">
          <div class="form-group">
            <label >First Name:</label>
            <input name="first_name" type="text" class="form-control"   placeholder="Enter First Name">
            </div>
            <div class="form-group">
              <label >Last Name:</label>
              <input name="last_name" type="text" class="form-control"   placeholder="Enter Last Name">
              </div>
          <div class="form-group">
            <label >Email Address: </label>
            <input name="email" type="email" class="form-control"   placeholder="Enter Email">
            </div>
            <div class="form-group">
            <label >Password:</label>
            <input name="password" type="password" class="form-control"  placeholder="Enter Password">
            </div>

            <div class="form-group">
              <label >Address:</label>
              <input name="address" type="text" class="form-control"   placeholder="Enter Address">
              </div>

              <div class="form-group">
                <label >Address 2:</label>
                <input name="address2" type="text" class="form-control"   placeholder="Enter Address 2">
                </div>

                <div class="form-group">
                  <label >City:</label>
                  <input name="city" type="text" class="form-control"   placeholder="Enter City">
                  </div>

                  <div class="form-group">
                    <label >State:</label>
                    <input name="state" type="text" class="form-control"   placeholder="Enter State">
                    </div>

                    <div class="form-group">
                      <label >Zip Code:</label>
                      <input name="zipcode" type="text" class="form-control"   placeholder="Enter Zip Code">
                      </div>

            <input type="submit" class="btn btn-primary" value="Add Customer" />
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
