<!doctype html>

<html>

<head>
<title>Sign In</title>
<meta name="viewport" content="width=device-width">
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #eee;
}

.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin .checkbox {
	font-weight: normal;
}

.form-signin .form-control {
	position: relative;
	font-size: 16px;
	height: auto;
	padding: 10px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.form-signin .form-control:focus {
	z-index: 2;
}

.form-signin input[type="text"] {
	margin-bottom: -1px;
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>
</head>

<body background="crossword.png">
	<%@include file="header.jsp"%>
	<div class="container-fluid">
		<form class="form-signin" action="processSearch" method="post">
			<img src="profhuntlogo.png" class="img-responsive">
			<br><br>
			<input type="text" class="form-control input-lg" name="searchString">
			<br>
			<center>
				<input type="radio" name="optionRadio" value="prof" checked>Professor
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input type="radio"
					name="optionRadio" value="mod">Module <br> <br>
				<button class="btn btn-info" type="submit">Search</button>
			</center>
		</form>
	</div>
	<!-- /container -->
</body>

</html>