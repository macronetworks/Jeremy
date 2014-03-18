<!DOCTYPE html>


<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ProfHunt: Search Results</title>

    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <script src="js/jquery.csv-0.71.min.js"></script>
    
  </head>
  <body background="crossword.png">
      <%@include file="header2.jsp"%>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/bootstrap.min.js"></script>
    <br>
    <br>
        <div class="container">

                <!-- Start of module result-->
                <div class="row">
                    <div class="col-md-12"><h3><br><br>3 results found</h3></div>
                </div>
                <br>
                
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#">Module</a></li>
                </ul>                
         
                
                <table class="table table-bordered" width="100%">
                    <tr>
                        <th width="25%"><center>Course</center></th>
                        <th width="25%"><center>Rating</center></th>
                        <th width="25%"><center>Professors</center></th>
                    </tr>
                    
                    <!-- One example of search result -->
                    <tr>
	                    <td style="vertical-align:middle; text-align:center">
	                      <a style="font-size:150%" href="profile.jsp?moduleName=IS101">IS 101: Information Systems Management</a>
	                    </td>
                        <td style="vertical-align:middle; text-align:center">
                          <h3><span class="label label-default">Overall Rating: 4.5</span></h3>
                        </td>
                        
                        <td style="vertical-align:middle; text-align:center">
                          <h4>Current</h4>
                          <a href="profprofile.jsp?profName=richardDavis">Richard DAVIS</a>, <a href="#">Narayan RAMASUBBU</a>
                          <h4>Previous</h4>
                          <a href="#">Jason WOODARD</a>
                         </td>
                    </tr>
                    <!-- End of example of search result -->
                    
                    <tr>
                      <td style="vertical-align:middle; text-align:center">
                        <a style="font-size:150%" href="profile2.jsp?moduleName=IS102">IS 102: Computer as an Analysis Tool</a>
                      </td>
                        <td style="vertical-align:middle; text-align:center">
                          <h3><span class="label label-default">Overall Rating: 3.5</span></h3>
                        </td>
                        
                        <td style="vertical-align:middle; text-align:center">
                          <h4>Current</h4>
                          <a href="#">Professor # 1</a>, <a href="#">Professor # 2</a>
                          <h4>Previous</h4>
                          <a href="#">Professor # 3</a>
                         </td>
                     </tr>
                     
                     <tr>
                      <td style="vertical-align:middle; text-align:center">
                        <a style="font-size:150%" href="#">IS 103: Computational Thinking</a>
                      </td>
                        <td style="vertical-align:middle; text-align:center">
                          <h3><span class="label label-default">Overall Rating: 4.3</span></h3>
                        </td>
                        
                        <td style="vertical-align:middle; text-align:center">
                          <h4>Current</h4>
                          <a href="#">Professor # 1</a>, <a href="#">Professor # 2</a>
                          <h4>Previous</h4>
                          <a href="#">Professor # 3</a>
                         </td>
                     </tr>
                </table>      
</div>
  </body>
</html>
