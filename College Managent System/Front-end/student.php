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
     
      <div class="card" id="accordion">

        <div class="card-header" id="pastcourse">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
        Past Courses</button>    
</h5>
        <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col">Course Name</th>
                <th scope="col">Grade</th>
              </tr>
            </thead>

            <tbody>
              
                <?php
                $cur_email = $_SESSION['email'];
                $query = "SELECT * FROM student WHERE email = '$cur_email'";

                $results = mysqli_query($db, $query);
                $st_id=123;
                while($row = mysqli_fetch_array($results)){
                $st_id =  $row['student_id'];   
}

                $query2 = "SELECT * FROM student_past_courses WHERE student_id = '$st_id'";
                $results2 = mysqli_query($db, $query2); 
                  
                while($row = mysqli_fetch_array($results2))
                {?>
                  <tr>
                  <td scope="row"><?php echo $row['course_name'] ?></td>
                  <td scope="row"><?php echo $row['final_grade'] ?></td> 
                  </tr>
                <?php } ?>

                 
              
            </tbody>
          </table>
        </div>
    

        <div class="collapse show" id="collapseOne" aria-labelledby="headingOne" data-parent="#accordion">
        <div class="card-body">
        <h5 class="mb-0">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                Exams 
               </button>
                </h5>
          <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col">Exam Name</th>
                <th scope="col">Grade</th>
              </tr>
            </thead>
                </div>
            <tbody>
              
                <?php
               

                $cur_email = $_SESSION['email'];
                $query = "SELECT * FROM student WHERE email = '$cur_email'";

                $results = mysqli_query($db, $query);
           
                while($row = mysqli_fetch_array($results)){
                $st_id =  $row['student_id'];   
                }
                $query2 = "SELECT * FROM student_exam WHERE student_id = '$st_id'";
                $results2 = mysqli_query($db, $query2); 
                  
                while($row = mysqli_fetch_array($results2))
                {?>
                  <tr>
                  <td scope="row"><?php echo $row['exam_name'] ?></td>
                  <td scope="row"><?php echo $row['grade'] ?></td> 
                  </tr>
                <?php } ?>

                 
              
            </tbody>
          </table>
        </div>
                </div>  


        <div class="card">
          <div class="card-header" id="headingThree">
            <h5 class="mb-0">
              <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                Current Course 
              </button>
                </h5>
            <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col">Course Name</th>
                <th scope="col">Credits</th>
                <th scope="col">Lecturer</th>
                <th scope="col">Course Type</th>
              </tr>
            </thead>

            <tbody>
              
                <?php
                

                $cur_email = $_SESSION['email'];
                $query = "SELECT * FROM student WHERE email = '$cur_email'";

                $results = mysqli_query($db, $query);
                $st_id=123;

                while($row = mysqli_fetch_array($results)){
                                  $st_id =  $row['student_id'];   
                }
                $query2 = "SELECT * FROM student_current_course WHERE student_id = '$st_id'";
                $results2 = mysqli_query($db, $query2); 

                while($row = mysqli_fetch_array($results2))
                {
                  $course = $row['course_name'];
                  $query3 = "SELECT * FROM course WHERE course_name = '$course'";
                  $results3 = mysqli_query($db, $query3); 
                
                  $row2 = mysqli_fetch_array($results3); ?>

                  <tr>
                  <td scope="row"><?php echo $row2['course_name'] ?></td>
                  <td scope="row"><?php echo $row2['AKTS'] ?></td> 
                  <td scope="row"><?php echo $row2['lecturer'] ?></td> 
                  <td scope="row"><?php echo $row2['course_type'] ?></td> 

                  </tr>
                <?php }?>

                 
              
            </tbody>
          </table>
        </div>

        <div class="card">
            <div class="card-header" id="headingFour">
              <h5 class="mb-0">
                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                  Programs
                </button>
              </h5>
          <table class="table table-striped">
                  <thead>
                    <tr>
                      <th scope="col">Course Name</th>
                      <th scope="col">AKTS</th>
                      <th scope="col">Lecturer</th>
                      <th scope="col">Course Type</th>
                      <th scope="col">Status</th>
                    </tr>
                  </thead>
             <?php
                

                $past_course_names = array();
                $selectable = array();
                $current_course_names = array();
                $candidate_courses = array();
                $cur_email = $_SESSION['email'];
                $query = "SELECT * FROM student WHERE email = '$cur_email'";

                $results = mysqli_query($db, $query);
        
                while($row = mysqli_fetch_array($results)){
                $st_id =  $row['student_id'];   
                }
                

                $query = "SELECT * FROM student_past_courses WHERE student_id = '$st_id'";

                $results = mysqli_query($db, $query);

                while($past_courses = mysqli_fetch_array($results))
                {
                  array_push($past_course_names, $past_courses['course_name']);

                }

                $query = "SELECT * FROM student_current_course WHERE student_id = '$st_id'";

                $results = mysqli_query($db, $query);

                while($curr_courses = mysqli_fetch_array($results))
                {
                  array_push($current_course_names, $curr_courses['course_name']);            
                }


                /*
                $query = "SELECT * FROM course ";

                $results = mysqli_query($db, $query);

                while($course = mysqli_fetch_array($results))
                {
                  $not_in_past=True;
                  foreach($past_course_names as $pastcourse)
                  {
                    if($pastcourse == $course['course_name'])
                    {
                      $not_in_past = False;
                    }
                  }

                  if($not_in_past == True)
                  {
                    array_push($not_past_courses, $course['course_name']);

                  }


                  $not_in_current=True;
                  foreach($current_courses as $current_course)
                  {
                    if($current_course == $course['course_name'])
                    {
                      $not_in_current = False;
                    }
                  }

                  if($not_in_current == True)
                  {
                    array_push($not_current_courses, $course['course_name']);
                  }
                }
                */

                /*
                  foreach($not_current_courses as $not_current_course )
                  {
                      $not_in = True;
                      foreach($not_past_courses as $not_past_course)
                      {
                          if($not_past_course == $not_current_course)
                          {
                              $not_in = False;
                          }
                          array_push($candidate_courses, $not_past_course);
                      }
                      if($not_in == True)
                      {
                        array_push($candidate_courses, $not_current_course);                        
                      }

                  }
                */


                $query = "SELECT * FROM course ";

                $results = mysqli_query($db, $query);

                while($course = mysqli_fetch_array($results))
                {

                      if(in_array($course['course_name'], $current_course_names))
                      {
                         continue;
                      }

                      if(in_array($course['course_name'], $past_course_names))
                      {
                         continue;
                      }                      
                    
                      if(in_array($course['prerequisite'], $past_course_names))
                      { ?>
                        <tr>
                          <td> <?php echo $course['course_name']; ?></td>
                          <td> <?php echo $course['AKTS']; ?></td>
                          <td> <?php echo $course['lecturer']; ?></td>
                          <td> <?php echo $course['course_type']; ?></td>
                          <td> <?php echo "-"; ?></td>
                        </tr>
                        <?php  
                        continue;
                      }
                    
                    
                    if($course['prerequisite'] == 'NULL')
                    { ?>
                         <tr>
                          <td> <?php echo $course['course_name']; ?></td>
                          <td> <?php echo $course['AKTS']; ?></td>
                          <td> <?php echo $course['lecturer']; ?></td>
                          <td> <?php echo $course['course_type']; ?></td>
                          <td> <?php echo "-"; ?></td>
                        </tr>
                    <?php 
                    continue;
                    }

                    if($course['prerequisite'] != 'NULL')
                    { ?>

                      <tr>
                        <td> <?php echo $course['course_name']; ?></td>
                        <td> <?php echo $course['AKTS']; ?></td>
                        <td> <?php echo $course['lecturer']; ?></td>
                        <td> <?php echo $course['course_type']; ?></td>
                        <td> <?php echo $course['prerequisite']; ?></td>
                      </tr>
                    <?php 
                    continue;
                  }


              } ?>
                </table>
                
        </div>
      
      </div>
      
</body>
</html>