<%@page import="src.model.AveProfRating"%>
<%@page import="src.model.ProfessorModule"%>
<%@page import="src.model.ModuleFeedback"%>
<%@page import="model.DataManager"%>
<%@page import="model.Module"%>
<%@page import="model.Professor"%>
<%@page import="java.util.*"%>
<!doctype html>


<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap 101 Template</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <script type="text/javascript" src="https://www.google.com/jsapi"></script>

        <script src="js/jquery.csv-0.71.min.js"></script>

        <!-- Obtaining Attributes-->

        <%    ArrayList<Professor> profList = (ArrayList<Professor>) session.getAttribute("profList");
            ArrayList<Module> modList = (ArrayList<Module>) session.getAttribute("modList");

            // Need implement in. Obtain from http request.
            String moduleName = (String) request.getParameter("moduleName");

            ModuleFeedback f1 = new ModuleFeedback("superman", "1/1/2014", "IS102", 2011, 2012, 1, "This mod is crazy ttm!.", 1.7, 2.4, 3.8, 4.3);
            ModuleFeedback f2 = new ModuleFeedback("batman", "3/1/2014", "IS102", 2011, 2012, 2, "Super time consuming! One of the most tedious mod so far", 2.8, 2.9, 3.4, 4.4);
            ModuleFeedback f3 = new ModuleFeedback("invisible woman", "5/1/2014", "IS102", 2011, 2012, 1, "The exams was so easy man. wahaha", 3.8, 2.5, 3.8, 1.4);
            ModuleFeedback f4 = new ModuleFeedback("iron man", "7/1/2014", "IS102", 2012, 2013, 2, "ok la", 4.7, 2.7, 3.2, 4.6);
            ModuleFeedback f5 = new ModuleFeedback("spiderman", "8/1/2014", "IS102", 2012, 2013, 1, "sigh", 3.2, 4.2, 3.9, 4.4);
            ModuleFeedback f6 = new ModuleFeedback("hulk", "10/1/2014", "IS102", 2011, 2012, 2, "what the", 2.4, 4.4, 3.2, 4.8);
            //Module module = (Module)DataManager.searchMod(moduleName, modList);
            //ArrayList<Professor> selectedProfList

            //*** IMPORTANT
            // moduleFeedbackList contains only the SPECIFIC feedback belonging to that specific module
            ArrayList<ModuleFeedback> moduleFeedbackList = new ArrayList<ModuleFeedback>();
            moduleFeedbackList.add(f1);
            moduleFeedbackList.add(f2);
            moduleFeedbackList.add(f3);
            moduleFeedbackList.add(f4);
            moduleFeedbackList.add(f5);
            moduleFeedbackList.add(f6);

            ProfessorModule p1 = new ProfessorModule("Professor 1", "IS102", "Computer as an Analysis Tool", 2011, 2012, 1);
            ProfessorModule p2 = new ProfessorModule("Professor 2", "IS102", "Computer as an Analysis Tool", 2011, 2012, 1);
            ProfessorModule p3 = new ProfessorModule("Professor 3", "IS102", "Computer as an Analysis Tool", 2011, 2012, 1);

            ArrayList<ProfessorModule> profModuleList = new ArrayList<ProfessorModule>();
            profModuleList.add(p1);
            profModuleList.add(p2);
            profModuleList.add(p3);

            AveProfRating a1 = new AveProfRating("IS102", "Professor 1", 3.5, 3.2, 2.7, 3.1, 3, 7, 7, 10, 11, 6, 2, 1, 0, 0, 0, 0);
            AveProfRating a2 = new AveProfRating("IS102", "Professor 2", 4.0, 4.4, 3.8, 4.8, 6, 10, 2, 5, 14, 1, 2, 0, 0, 0, 0, 0);
            AveProfRating a3 = new AveProfRating("IS102", "Professor 3", 3.7, 4.6, 4.2, 4.4, 2, 8, 5, 9, 12, 4, 3, 2, 0, 0, 0, 0);

            ArrayList<AveProfRating> rateList = new ArrayList<AveProfRating>();
            rateList.add(a1);
            rateList.add(a2);
            rateList.add(a3);
        %>



        <script type="text/javascript">
            // Load the Visualization API and the controls package.
            google.load('visualization', '1.0', {
                'packages': ['controls', 'corechart']
            });

            // Set a callback to run when the Google Visualization API is loaded.
            google.setOnLoadCallback(drawDashboard);

            // Callback that creates and populates a data table,
            // instantiates a dashboard, a range slider and a pie chart,
            // passes in the data and draws it.
            function drawDashboard() {
                $(function() {
                    // grab the CSV
                    $.get("data3.csv", function(csvString) {
                        // display the contents of the CSV
                        var arrayData = $.csv.toArrays(csvString, {
                            onParseValue: $.csv.hooks.castToScalar
                        });
                        var data = new google.visualization.DataTable();
                        data.addColumn('date', 'Year');
                        data.addColumn('number', 'Usefulness');
                        data.addColumn('number', 'Difficulty');
                        data.addColumn('number', 'Relevance');
                        data.addColumn('number', 'Overall');
                        var view = new google.visualization.DataView(data);
                        console.log(arrayData);
                        var dateArray = [];
                        for (var i = 1; i < arrayData.length; i++) {
                            var iArr = arrayData[i];
                            data.addRow([new Date(iArr[0], 1, 1), iArr[1], iArr[2],
                                iArr[3], iArr[4]]);
                            dateArray.push(new Date(iArr[0], 1, 1));
                        }
                        var formatter = new google.visualization.DateFormat({
                            pattern: 'yyyy'
                        });
                        formatter.format(data, 0);
                        /*			
                         // Create our data table.
                         var data = google.visualization.arrayToDataTable([
                         ['Name', 'Semester','Test Value'],
                         ['Michael' , 5,3],
                         ['Elisa', 7,4],
                         ['Robert', 3,5],
                         ['John', 2,7],
                         ['Jessica', 6,9],
                         ['Aaron', 1,2],
                         ['Margareth', 8,7]
                         ]); 
                         */

                        // Create a dashboard.
                        var dashboard = new google.visualization.Dashboard(document
                                .getElementById('dashboard_div'));

                        // Create a range slider, passing some options
                        var donutRangeSlider = new google.visualization.ControlWrapper(
                                {
                                    'controlType': 'DateRangeFilter',
                                    'containerId': 'filter_div',
                                    'options': {
                                        'filterColumnLabel': 'Year',
                                        'ui': {
                                            format: {
                                                pattern: "yyyy"
                                            }
                                        }
                                    }
                                });
                        console.log("HELLO");
                        // Create a pie chart, passing some options
                        var barChart = new google.visualization.ChartWrapper({
                            'chartType': 'ComboChart',
                            'containerId': 'chart_div',
                            'options': {
                                'width': '100%',
                                'height': '100%',
                                'legend': 'right',
                                'vAxis': {minValue: 0, maxValue: 5, gridlines: {count: 6}},
                                'backgroundColor': 'transparent',
                                'seriesType': "bars",
                                'series': {
                                    5: {
                                        type: "line"
                                    }
                                }
                            },
                            'hAxis': {
                                title: "Year",
                                minValue: data.getColumnRange(0).min,
                                maxValue: data.getColumnRange(0).max,
                                format: 'yyyy',
                                ticks: dateArray
                            },
                            'vAxis': {minValue: 0, maxValue: 5}

                        });

                        // Establish dependencies, declaring that 'filter' drives 'pieChart',
                        // so that the pie chart will only display entries that are let through
                        // given the chosen slider range.
                        dashboard.bind(donutRangeSlider, barChart);

                        // Draw the dashboard.
                        dashboard.draw(data);
                    });
                });
            }
        </script>

    </head>
    <body background="crossword.png">
        <%@include file="header2.jsp"%>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- Include all compiled plugins (below), or include individual files as needed -->

        <div class="container">
            <div class="col-md-12">
                <!-- Start of module page -->
                <br>
                <br>
                <br> 
                <br>
                <div class="col-md-12">

                    <h1><center><%=moduleName%></center></h1>

                </div>


                <!-- Chart -->
                <div class="row">
                    <div id="dashboard_div" class="col-md-7">
                        <br>
                        <!--Divs that will hold each control and chart-->
                        <div style="vertical-align:middle; text-align:center" id="filter_div"></div>
                        <div id="chart_div"></div>
                    </div>
                    <div class="col-md-1"></div>   
                    <!-- Right side of chart-->    
                    <div class="col-md-4">
                        <br>
                        <br>
                        <!-- Button trigger modal -->
                        <button class="btn btn-success btn-sm" data-toggle="modal" data-target="#ratingPolicy">
                            Rating Policy
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="ratingPolicy" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title" id="myModalLabel">Rating Policy</h4>
                                    </div>
                                    <div class="modal-body">
                                        blah blah blah
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>                                

                        <!-- After Rating Policy-->  
                        <br>
                        <br>
                        <b>Number of Ratings:   </b> 435
                        <br>
                        <br>
                        <b>Average Grade:   </b> B+
                        <br>
                        <br>

                        <!-- Rate Function -->

                        <!-- Button trigger modal -->
                        <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#rate">
                            Rate
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="rate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title" id="myModalLabel">Rate <%out.print(moduleName); %></h4>
                                    </div>
                                    <div class="modal-body">

                                        <form>


                                            <b>Term Taken: </b>AY2013-2014 T2 <br>
                                            <br>
                                            <table class="table table-bordered" style="table-layout: fixed">
                                                <tr>
                                                    <td><b>Usefulness:</b></td>
                                                    <td><input type="radio" name="usefulness" value="1">
                                                        1<br>Not useful at all</td>
                                                    <td><input type="radio" name="usefulness" value="2">
                                                        2</td>
                                                    <td><input type="radio" name="usefulness" value="3">
                                                        3</td>
                                                    <td><input type="radio" name="usefulness" value="4">
                                                        4</td>
                                                    <td><input type="radio" name="usefulness" value="5">
                                                        5<br>Very useful</td>
                                                </tr>
                                                <tr>
                                                    <td><b>Difficulty:</b></td>
                                                    <td><input type="radio" name="easiness" value="1"> 1<br>Hard</td>
                                                    <td><input type="radio" name="easiness" value="2"> 2</td>
                                                    <td><input type="radio" name="easiness" value="3"> 3</td>
                                                    <td><input type="radio" name="easiness" value="4"> 4</td>
                                                    <td><input type="radio" name="easiness" value="5"> 5<br>Easy</td>
                                                </tr>
                                                <tr>
                                                    <td><b>Relevance:</b></td>
                                                    <td><input type="radio" name="easiness" value="1"> 1<br>Not Relevant</td>
                                                    <td><input type="radio" name="easiness" value="2"> 2</td>
                                                    <td><input type="radio" name="easiness" value="3"> 3</td>
                                                    <td><input type="radio" name="easiness" value="4"> 4</td>
                                                    <td><input type="radio" name="easiness" value="5"> 5<br>Relevant</td>
                                                </tr>                                                

                                            </table>
                                            <b>Grades obtained:</b> A <br><br> <b>Comments:</b><br><textarea rows="4" cols="90" name="comment" maxlength="500" required>
                                            </textarea> <br> 
                                        </form>                            

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Submit</button>  
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div>
                                    
<button class="btn btn-default btn-sm" data-toggle="modal" data-target="#shoutout">
    <img src="loudhailer.png" alt="Smiley face" width="25" height="25">
                        </button> 
                        
                        <!-- Modal -->
                        <div class="modal fade" id="shoutout" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                          <div class="modal-dialog">
                            <div class="modal-content">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Shoutout</h4>
                              </div>
                              <div class="modal-body">
                               
				An email has been broadcasted to the school.                     
                                  
                              </div>
                              <div class="modal-footer">
                                 
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                
                              </div>
                            </div>
                          </div>
                        </div>                                      
                                    

                    </div>
                </div>

                <br>

                <!-- Tabs-->

                <!-- Nav tabs -->
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#professor" data-toggle="tab">Professor</a></li>
                    <li><a href="#feedback" data-toggle="tab">Feedback</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">

                    <!-- Information for Professor tab-->  
                    <div class="tab-pane active" id="professor">


                        <table class="table table-bordered" width="100%">
                            <tr>
                                <th width="25%"><center>Professor</center></th>
                            <th width="25%"><center>Ratings</center></th>
                            <th width="25%"><center>Grade Distribution</center></th>
                            <th width="25%"></th>
                            </tr>

                            <%
                                if (profModuleList.isEmpty() == true || profModuleList.size() == 0) {
                                    out.println("There are no professor currently taking this module. Information has not been uploaded");
                                } else {
                                    int size = profModuleList.size();

                                    for (int i = 0; i < size; i++) {
                                        ProfessorModule temp1 = profModuleList.get(i);
                                        String tempName = temp1.getProfessorName();
                            %>

                            <tr>
                                <td><br> <br> <font size="4"><center><% out.println(temp1.getProfessorName()); %></center></td>
                            <td>

                                <%

                                    int number = i;
                                    double score1 = 0;
                                    double score2 = 0;
                                    double score3 = 0;
                                    double score4 = 0;
                                    int grade1 = 0;
                                    int grade2 = 0;
                                    int grade3 = 0;
                                    int grade4 = 0;
                                    int grade5 = 0;
                                    int grade6 = 0;
                                    int grade7 = 0;
                                    int grade8 = 0;
                                    int grade9 = 0;
                                    int grade10 = 0;
                                    int grade11 = 0;
                                    int grade12 = 0;

                                    for (int y = 0; y < rateList.size(); y++) {
                                        AveProfRating temp2 = rateList.get(y);
                                        if (temp2.getProfName().equals(temp1.getProfessorName()) && temp2.getCourseID().equals(temp1.getModuleID())) {
                                            score1 = temp2.getProfRating1();
                                            score2 = temp2.getProfRating2();
                                            score3 = temp2.getProfRating3();
                                            score4 = temp2.getProfRating4();
                                            grade1 = temp2.getaPlusRating();
                                            grade2 = temp2.getaRating();
                                            grade3 = temp2.getaMinusRating();
                                            grade4 = temp2.getbPlusRating();
                                            grade5 = temp2.getbRating();
                                            grade6 = temp2.getbMinusRating();
                                            grade7 = temp2.getcPlusRating();
                                            grade8 = temp2.getcRating();
                                            grade9 = temp2.getcMinusRating();
                                            grade10 = temp2.getdPlusRating();
                                            grade11 = temp2.getdRating();
                                            grade12 = temp2.getfRating();
                                        }
                                    }
                                %>

                                <!-- for Professor tab -- Rating -->

                                <script type="text/javascript">
                                    google.load("visualization", "1", {packages: ["corechart"]});
                                    google.setOnLoadCallback(drawChart);
                                    function drawChart() {
                                        var data = google.visualization.arrayToDataTable([
                                            ['Type', 'Rating', {role: 'style'}],
                                            ['Help', <%=score1%>, '#609FF7'], // RGB value
                                            ['Clarity', <%=score2%>, '#F7607C'],
                                            ['Work', <%=score3%>, '#FAA46B'],
                                            ['Overall', <%=score4%>, '#5DDE70'],
                                        ]);

                                        var options = {
                                            title: 'Rating',
                                            legend: {position: "none"},
                                            'backgroundColor': 'transparent',
                                            hAxis: {title: 'Rating Type', textPosition: 'in', titeTextStyle: {color: 'black'}},
                                            vAxis: {minValue: 0, maxValue: 5, gridlines: {count: 6}}
                                        };

                                        var idnum2 = 'chart_professor_rating' + <%=number%>;

                                        var chart = new google.visualization.ColumnChart(document.getElementById(idnum2));
                                        chart.draw(data, options);
                                    }
                                </script>

                                <div id="chart_professor_rating<%=i%>" style="width: 250px; height: 150px;"></div>                         
                            </td>
                            <td>

                                <!-- For Professor Tab -- Grade Distribution -->
                                <script type="text/javascript">
                                    google.load("visualization", "1", {packages: ["corechart"]});
                                    google.setOnLoadCallback(drawChart);
                                    function drawChart() {
                                        var data = google.visualization.arrayToDataTable([
                                            ['Grade', 'Count', {role: 'style'}],
                                            ['A+', <%=grade1%>, 'stroke-color: #000000; stroke-width: 0.7; fill-color: #F7E681'],
                                            ['A', <%=grade2%>, 'stroke-color: #000000; stroke-width: 0.7; fill-color: #F7E681'],
                                            ['A-', <%=grade3%>, 'stroke-color: #000000; stroke-width: 0.7; fill-color: #F7E681'],
                                            ['B+', <%=grade4%>, 'stroke-color: #000000; stroke-width: 0.7; fill-color: #F7E681'],
                                            ['B', <%=grade5%>, 'stroke-color: #000000; stroke-width: 0.7; fill-color: #F7E681'],
                                            ['B-', <%=grade6%>, 'stroke-color: #000000; stroke-width: 0.7; fill-color: #F7E681'],
                                            ['C+', <%=grade7%>, 'stroke-color: #000000; stroke-width: 0.7; fill-color: #F7E681'],
                                            ['C', <%=grade8%>, 'stroke-color: #000000; stroke-width: 0.7; fill-color: #F7E681'],
                                            ['C-', <%=grade9%>, 'stroke-color: #000000; stroke-width: 0.7; fill-color: #F7E681'],
                                            ['D+', <%=grade10%>, 'stroke-color: #000000; stroke-width: 0.7; fill-color: #F7E681'],
                                            ['D', <%=grade11%>, 'stroke-color: #000000; stroke-width: 0.7; fill-color: #F7E681'],
                                            ['F', <%=grade12%>, 'stroke-color: #000000; stroke-width: 0.7; fill-color: #F7E681']
                                        ]);

                                        var options = {
                                            legend: {position: "none"},
                                            'backgroundColor': 'transparent',
                                            bar: {groupWidth: '100%'},
                                            chartArea: {top: '5%', height: '80%'},
                                            vAxis: {title: 'Grade', showTextEvery: 2, titleTextStyle: {color: 'black'}}
                                        };

                                        var idnum3 = 'chart_professor_grade' + <%=number%>;

                                        var chart = new google.visualization.BarChart(document.getElementById(idnum3));
                                        chart.draw(data, options);
                                    }
                                </script>                            

                                <div id="chart_professor_grade<%=i%>" style="width: 250px; height: 150px;"></div>                         
                            </td>
                            <td>
                            <center>
                                <br>

                                <!-- Course Outline TAB-->
                                <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
                                    Course Outline
                                </button>

                                <!-- Modal -->
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">Course Outline</h4>
                                            </div>
                                            <div class="modal-body">
                                                Overflowing text to show scroll behavior

                                                Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.

                                                Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.

                                                Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.

                                                Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.

                                                Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.

                                                Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.

                                                Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.

                                                Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.

                                                Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <br> <br>
                                
                                    <button type="button" onClick="location.href='profprofile.jsp?profName=richardDavis'" class="btn btn-default">Professor
                                        Profile</button>
                                
                                <br> <br>
                            </center>                            

                            </td>

                            <%

                                    }
                                }

                            %>


                        </table>
                        <!-- End of table -->

                        <!--
                        <div class="row">
                                <div class="col-md-4 col-md-offset-9">
                                        <ul class="pagination" align="right">
                                                <li class="disabled"><a href="#">&laquo;</a></li>
                                                <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">3</a></li>
                                                <li><a href="#">4</a></li>
                                                <li><a href="#">5</a></li>
                                                <li><a href="#">&raquo;</a></li>
                                        </ul>
                                </div>
                        </div>        -->                      

                    </div>

                    <!-- Information for feedback tab-->
                    <div class="tab-pane" id="feedback">

                        <table class="table table-bordered" width="100%">
                            <tr>
                                <th width="12.5%"><center>Date</center></th>
                            <th width="12.5"><center>Class</center></th>
                            <th width="18%"><center>User</center></th>
                            <th width="25%"><center>Rating</center></th>
                            <th width="32%"><center>Comment</center></th>
                            </tr>
                            <%                                    if (moduleFeedbackList.isEmpty() == true || moduleFeedbackList.size() == 0) {
                                    out.println("There are no feedback available yet");
                                } else {
                                    int size = moduleFeedbackList.size();

                                    for (int i = 0; i < moduleFeedbackList.size(); i++) {
                                        ModuleFeedback temp1 = moduleFeedbackList.get(i);

                            %>
                            <tr>
                                <td height="167" valign="bottom"><center><% out.println(temp1.getDate()); %></center></td>
                            <td height="167" valign="middle"><center><% out.println(temp1.getYearTaken1() + " - " + temp1.getYearTaken2()); %></center>

                            <center><% out.println("T" + temp1.getSem()); %></center>
                            </td>
                            <td height="167" valign="middle"><center><% out.println(temp1.getUsername()); %></center></td>
                            <td height="167" valign="middle"><%

                                int number = i;
                                double score1 = temp1.getHelpRating();
                                double score2 = temp1.getEasyRating();

                                double score3 = temp1.getWorkLoadRating();
                                double score4 = temp1.getOverallRating();
                                %>

                                <script type="text/javascript">
                                    google.load("visualization", "1", {packages: ["corechart"]});
                                    google.setOnLoadCallback(drawChart);
                                    function drawChart() {
                                        var data = google.visualization.arrayToDataTable([
                                            ['Type', 'Rating', {role: 'style'}],
                                            ['Useful', <%=score1%>, '#609FF7'], // RGB value
                                            ['Diffic..', <%=score2%>, '#F7607C'],
                                            ['Releva..', <%=score3%>, '#FAA46B'],
                                            ['Overall', <%=score4%>, '#5DDE70'],
                                        ]);

                                        var options = {
                                            title: 'Rating',
                                            legend: {position: "none"},
                                            'backgroundColor': 'transparent',
                                            hAxis: {title: 'Rating Type', textPosition: 'in', titleTextStyle: {color: 'black'}},
                                            width: 250,
                                            height: 150,
                                            vAxis: {minValue: 0, maxValue: 5, gridlines: {count: 6}}
                                        };

                                        var idnum = 'chart_feedback_rating' + <%=number%>;


                                        var chart = new google.visualization.ColumnChart(document.getElementById(idnum));
                                        chart.draw(data, options);
                                    }
                                </script>                                         

                                <div id="chart_feedback_rating<%=i%>" style="width: 200px; height: 150px;"> </div>
                            </td>
                            <td><center><% out.println(temp1.getComment()); %></center>
                        
                            <script type="text/javascript">
	var clicks = 0;
	function linkClick(){
		document.getElementById('clicked').value = ++clicks;
		document.getElementById("plus").onclick = function() {
			//disable
			this.disabled = true;
		}
		document.getElementById("minus").onclick = function() {
			//disable
			this.disabled = true;
		}
		$("#plus").hide();
		$("#minus").hide();
	}
	function minusClick(){
		document.getElementById('clicked').value = --clicks;
		document.getElementById("minus").onclick = function() {
			//disable
			this.disabled = true;
		}
		document.getElementById("plus").onclick = function() {
			//disable
			this.disabled = true;
		}
		$("#plus").hide();
		$("#minus").hide();
	}
	</script>
        <br>
	<a id="plus" href="#" onclick="linkClick()">Click Me +1!</a>
	<a id="minus" href="#" onclick="minusClick()">Click Me -1!</a>
	Comment Score: <input id="clicked" size="3" onfocus="this.blur();" value="0" >
                        
        </center>
                        
                        
                        </td>
                            </tr>

                            <%
                                    }
                                }
                            %>
                        </table>                              



                    </div>
                </div>

            </div>
        </div>

    </body>
</html>
