<?php
include 'dbconnect.php';
?>
<!DOCTYPE html>
<html>
<head>
   <title>Dev Fellowship</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
</head>
<body style="background-color: gray">

   <div class="container-fluid">
      <div class="row">
         <div class="col-md-10 offset-md-1" style="background-color: white; margin-top:44px;">
         <div class="table-responsive">
         <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Firstname</th>
      <th scope="col">Lastname</th>
      <th scope="col">Username</th>
      <th scope="col">Gender</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">Address</th>
      <th scope="col">About Yourself</th>
    </tr>
  </thead>
  <tbody>
<?php
$select="SELECT * FROM formtable";
$result = mysqli_query($conn,$select);
if(mysqli_num_rows($result)>0){
    $i=1;
    while($row=mysqli_fetch_assoc($result)){
echo '<tr>
<th scope="row">'.$i.'</th>
<td>'.$row["firstname"]."</td>
<td>".$row['lastname']."</td>
<td>".$row['username']."</td>
<td>".$row['gender']."</td>
<td>".$row['email']."</td>
<td>".$row['phonenumber']."</td>
<td>".$row['address']."</td>
<td>".$row['about']."</td>
</tr>";
$i++;
    }
}else {
    echo "0 results";
}
mysqli_close($conn);
?>
  </tbody>
</table>
</div>
         </div>
      </div>
   </div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</body>
</html>