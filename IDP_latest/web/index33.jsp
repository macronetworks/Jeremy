<%-- 
    Document   : index
    Created on : Mar 1, 2014, 3:36:16 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

  </head>
  <body>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <script type="text/javascript" src="https://www.google.com/jsapi"></script>

        <script src="js/jquery.csv-0.71.min.js"></script>
    <br>
    <br>
        <div class="container">
            <div class="col-md-11">
                
                <div class="row">
                  <div class="col-md-1">Logo</div>
                  
                  <!-- Search Query Div -->  
                  <div class="col-md-4">

                    
                    <form class="form-inline" role="form">
                      <div class="form-group">
                        <label class="sr-only" for="search">Search Query</label>
                        <input type="text" class="form-control" id="search" placeholder="Search Query">
                      </div>
                      <button type="submit" class="btn btn-default">Search</button>
                    </form>     
                    
                    <form class="form-inline" role="form">  
                    <div class="radio">
                      <label>
                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                        Professor &nbsp;&nbsp;
                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                        Module
                      
                      </label>
                    </div>  
                    </form> 
                      
                  </div>
                  <div class="col-md-4"></div>
                  
                  <!-- Welcome User Div -->  
                  <div class="col-md-3">Welcome User
                      
                    <br>
                    <form class="form-inline" role="form"> 
                          
                        <div class="btn-group">
                          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            Bookmark <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Bookmark1</a></li>
                            <li><a href="#">Bookmark2</a></li>
                            <li><a href="#">Bookmark3</a></li>
                          </ul>
                        </div>                       

                        <button type="submit" class="btn btn-default">Logout</button>
                    </form>
                      
                  
                  </div>
                </div>                
                
                <!-- Start of module page -->
                
                <br>
                <br>
                <div class="row">
                    <div class="col-md-12">Graph</div>
                </div>
                <br>
                
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#">Professor</a></li>
                  <li><a href="#">Feedback</a></li>
                </ul>                
         
                
                <table class="table table-bordered" width="100%">
                    <tr>
                        <th width="25%"><center>Professor</center></th>
                        <th width="25%"><center>Ratings</center></th>
                        <th width="25%"><center>Grade Distribution</center></th>
                        <th width="25%"></th>
                    </tr>
                    <!-- Start of showcasing Professor Data -->
                    <tr>
                        <td valign="bottom"><br><br><font size="6"><center>Harry A</center></font></td>
                        <td>
                             <script type="text/javascript">
                                    google.load("visualization", "1", {packages: ["corechart"]});
                                    google.setOnLoadCallback(drawChart);
                                    function drawChart() {
                                        var data = google.visualization.arrayToDataTable([
                                            ['Type', 'Rating', {role: 'style'}],
                                            ['Help', 3, '#609FF7'], // RGB value
                                            ['Clarity', 4, '#F7607C'],
                                            ['Work', 3, '#FAA46B'],
                                            ['Overall', 4, '#5DDE70'],
                                        ]);

                                        var options = {
                                            title: 'Rating',
                                            legend: {position: "none"},
                                            'backgroundColor': 'transparent',
                                            hAxis: {title: 'Rating Type', textPosition: 'in', titeTextStyle: {color: 'black'}},
                                            vAxis: {minValue: 0, maxValue: 5, gridlines: {count: 6}}
                                        };

                                        var idnum2 = 'chart_professor_rating';

                                        var chart = new google.visualization.ColumnChart(document.getElementById(idnum2));
                                        chart.draw(data, options);
                                    }
                                </script>

                                <div id="chart_professor_rating" style="width: 250px; height: 150px;"></div> 
                        </td>
                        <td>Graph</td>
                        <td>
                            <center>
                                <br>
                            <button type="button" class="btn btn-default">Course Outline</button>
                            <br><br>
                            <button type="button" class="btn btn-default">Professor Profile</button>
                            <br>
                            <br>
                            </center>                            
                        </td>
                    </tr>
                    <!-- End of showcasing one Professor Data -->
                    <tr>
                        <td valign="bottom"><br><br><font size="6"><center>Harry B</center></font></td>
                        <td>
                            <table width="80%" align="center">
                                <br>
                                <tr>
                                    <th><u>Good Quality</u></th>
                                </tr>
                                <tr>
                                    <td>Helpfulness</td>
                                    <td>3.2</td>
                                </tr>
                                <tr>
                                    <td>Clarity</td>
                                    <td>4.3</td>                                    
                                </tr>
                                <tr>
                                    <td>Difficulty</td>
                                    <td>2.7</td>                                    
                                </tr>                                
                            </table>
                        </td>
                        <td>Graph</td>
                        <td>
                            <center>
                                <br>
                            <button type="button" class="btn btn-default">Course Outline</button>
                            <br><br>
                            <button type="button" class="btn btn-default">Professor Profile</button>
                            <br>
                            <br>
                            </center>                            
                        </td>
                    </tr>
                    <tr>
                        <td valign="bottom"><br><br><font size="6"><center>Harry C</center></font></td>
                        <td>
                            <table width="80%" align="center">
                                <br>
                                <tr>
                                    <th><u>Good Quality</u></th>
                                </tr>
                                <tr>
                                    <td>Helpfulness</td>
                                    <td>4.8</td>
                                </tr>
                                <tr>
                                    <td>Clarity</td>
                                    <td>3.7</td>                                    
                                </tr>
                                <tr>
                                    <td>Difficulty</td>
                                    <td>3.9</td>                                    
                                </tr>                                
                            </table>
                        </td>
                        <td>Graph</td>
                        <td>
                            <center>
                                <br>
                            <button type="button" class="btn btn-default">Course Outline</button>
                            <br><br>
                            <button type="button" class="btn btn-default">Professor Profile</button>
                            <br>
                            <br>
                            </center>                            
                        </td>
                    </tr>
                </table>      
                <!-- End of table -->    
                
                
                <ul class="pagination" align="right">
                  <li class="disabled"><a href="#">&laquo;</a></li>
                  <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">&raquo;</a></li>
                </ul>                
                </right>
                
                </div>
            </div>    
        </div>
  </body>
</html>
