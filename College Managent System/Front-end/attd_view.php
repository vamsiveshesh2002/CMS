<?php include('server.php') ?> 

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>VIT-AP</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
<body>
<div class="shadow p-3 mb-5 bg-white rounded">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="student_index.php">Vellore Institute of Technology-AP</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="university.php">University</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="student.php">Student</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="profile.php">Profile</a>
            </li>
          </ul>
        </div>
        <a class="navbar-brand"></a>
        <form method="post" action="login.php" class="form-inline">
            <button type="submit" name="log_out" class="btn btn-default btn-sm">

          <span class="glyphicon glyphicon-log-out"></span> Log out</button>
        </form>
      </nav>
<br>
      <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
            <div class="card-body">
                   <table class="table table-striped" style="margin: auto;">
                  <th scope="col">id</th>
                  <th scope="col">course</th>
                  <th scope="col">Attendance</th>
                  <th scope="col">Date</th> 

                  <?php 
                    $cur_email = $_SESSION['email'];
                    $query = "SELECT * FROM student WHERE email = '$cur_email'";
                    $results = mysqli_query($db, $query);

                    while($row = mysqli_fetch_array($results)){
                      $st_id =  $row['student_id'];   
                    
                    }

                    $query2 = "SELECT * FROM tbl_attendance WHERE roll = '$st_id'";
                    $results2 = mysqli_query($db, $query2); 
     
                    while($row = mysqli_fetch_array($results2))
                    { ?>

                      <tr> 
                        <td><?php echo $row['id']; ?></td>
                        <td><?php echo $row['roll']; ?></td>
                        <td><?php echo $row['attend']; ?></td>
                        <td><?php echo $row['att_time']; ?></td>
                        <?php } ?> 

                   
</table>
</div>
</div>