
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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
<br><br>
        <div class="container">

                <!-- Start of module result-->
                <div class="row">
                    <div class="col-md-12"><h3><br><br>2 results found</h3></div>
                </div>
                <br>
                
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#">Professor</a></li>
                </ul>              
         
                
                <table class="table table-bordered" width="100%">
                    <tr>
                        <th width="25%"><center>Photo</center></th>
                        <th width="25%"><center>Professor</center></th>
                        <th width="25%"><center>Courses</center></th>
                        <th width="25%"><center>Faculty</center></th>
                    </tr>
                    
                    <!-- One example of search result -->
                    <tr>
	                    <td>
	                      <div style="vertical-align:middle; text-align:center">
	                       <img src="http://www.mysmu.edu/faculty/rcdavis/images/2011-RCDavis-mugshot.jpg" width="120">
	                      </div>
	                    </td>
                        <td style="vertical-align:middle; text-align:center">
                          <a style="font-size:200%" href=profprofile.jsp?profName=richardDavis>Richard C. Davis</a>
                          <h3><span class="label label-default">Overall Rating: 4.5</span></h3>
                        </td>
                        
                        <td style="vertical-align:middle; text-align:center">
                          <h4>Current</h4>
                          <a href=profile.jsp?moduleName=IS101>IS 101</a>, <a href="#">IS 202</a>, <a href="#">IS 305</a>
                          <h4>Previous</h4>
                          <a href="#">IS 102</a>, <a href="#">IS 200</a>
                         </td>
                        <td style="vertical-align:middle; text-align:center">
                            <div style="font-size:180%">School of Information Systems</div>                        
                        </td>
                    </tr>
                    <!-- End of example of search result -->
                    
                    <tr>
                      <td>
                        <div style="vertical-align:middle; text-align:center">
                         <img src="http://www.smu.edu.sg/sites/default/files/styles/faculty_thumb/public/business/ricksmith.jpeg?itok=xRnU4_vX" width="120">
                        </div>
                      </td>
                        <td style="vertical-align:middle; text-align:center">
                          <a style="font-size:200%" href="#">Richard Raymond SMITH</a>
                          <h3><span class="label label-default">Overall Rating: 3.9</span></h3>
                        </td>
                        
                        <td style="vertical-align:middle; text-align:center">
                          <h4>Current</h4>
                          <a href="#">Course # 1</a>, <a href="#">Course # 2</a>
                          <h4>Previous</h4>
                          <a href="#">Course # 3</a>
                        </td>
                        <td style="vertical-align:middle; text-align:center">
                            <div style="font-size:180%">Lee Kong Chian School of Business</div>                        
                        </td>
                    </tr>

                </table>      
                </div>
            </div>    
        </div>
</body>
</html>
