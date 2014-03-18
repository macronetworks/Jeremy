<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>
	<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">ProfHunt</a>
			</div>
			<div class="collapse navbar-collapse">
				<form class="navbar-form navbar-left" action="processSearch" method="post">
					<div class="form-group">
						<input type="text" class="form-control" name="searchString">
					</div>
					<button class="btn btn-primary" type="submit">
						<span class="glyphicon glyphicon-search"></span>
					</button>
					<br> <input type="radio" name="optionRadio" value="prof"
                                                    checked><font color="white">Professor &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</font> <input
                                            type="radio" name="optionRadio" value="mod"><font color="white">Module</font>
				</form>
				<%
					String username = (String) session.getAttribute("username");
					if (username != null) {
				%>
				<form class="navbar-form navbar-right" action="login" method="get">
					<div class="form-group">
						<input type="text" placeholder="Username" class="form-control"
							name="username">
					</div>
					<div class="form-group">
						<input type="password" placeholder="Password" class="form-control">
					</div>
					<button type="submit" class="btn btn-primary">Sign in</button>
				</form>
				<%
					} else {
				%>

                                <form class="navbar-form navbar-right" action="logout" method="get"> <font color="white"><h7>Welcome Annoymous!</h7></font>
					<button type="submit" class="btn btn-primary">Logout</button>
				</form>
				<%
					}
				%>
			</div>
			<!-- /.nav-collapse -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.navbar -->
</body>
</html>