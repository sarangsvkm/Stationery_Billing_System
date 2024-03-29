<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Bean.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/Admin_view.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Merienda+One">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<title>Bill</title>
<script>
    function multiplyBy()
{
        num1 = document.getElementById("pqty").value;
        num2 = document.getElementById("price").value;
        document.getElementById("result").innerHTML = num1 * num2;
}

    </script>
<style>

/*---------------------------------------*/
/* Font */
/*---------------------------------------*/
@import url('https://fonts.googleapis.com/css?family=Roboto');

/*---------------------------------------*/
/* Register Form */
/*---------------------------------------*/
body {
	background: linear-gradient(to right, #78a7ba 0%, #385D6C 50%, #78a7ba 99%);
}

.signup-form {
	font-family: "Roboto", sans-serif;
	width: auto;
	margin: 30px auto;
	background: linear-gradient(to right, #ffffff 0%, #fafafa 50%, #ffffff 99%);
	border-radius: 10px;
}

/*---------------------------------------*/
/* Form Header */
/*---------------------------------------*/
.form-header {
	background-color: #EFF0F1;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.form-header h1 {
	font-size: 30px;
	text-align: center;
	color: #666;
	padding: 20px 0;
	border-bottom: 1px solid #cccccc;
}

/*---------------------------------------*/
/* Form Body */
/*---------------------------------------*/
.form-body {
	padding: 10px 40px;
	color: #666;
}

.form-group {
	margin-bottom: 20px;
}

.form-body .label-title {
	color: #1BBA93;
	font-size: 17px;
	font-weight: bold;
}

.form-body .form-input {
	font-size: 17px;
	box-sizing: border-box;
	width: 100%;
	height: 34px;
	padding-left: 10px;
	padding-right: 10px;
	color: #333333;
	text-align: left;
	border: 1px solid #d6d6d6;
	border-radius: 4px;
	background: white;
	outline: none;
}

.horizontal-group .left {
	float: left;
	width: 49%;
}

.horizontal-group .right {
	float: right;
	width: 49%;
}

input[type="file"] {
	outline: none;
	cursor: pointer;
	font-size: 17px;
}

#range-label {
	width: 15%;
	padding: 5px;
	background-color: #1BBA93;
	color: white;
	border-radius: 5px;
	font-size: 17px;
	position: relative;
	top: -8px;
}

::-webkit-input-placeholder {
	color: #d9d9d9;
}

/*---------------------------------------*/
/* Form Footer */
/*---------------------------------------*/
.signup-form .form-footer {
	background-color: #EFF0F1;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	padding: 10px 40px;
	text-align: right;
	border-top: 1px solid #cccccc;
	clear: both;
}

.form-footer span {
	float: left;
	margin-top: 10px;
	color: #999;
	font-style: italic;
	font-weight: thin;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	background-color: #1BBA93;
	font-size: 17px;
	border: none;
	border-radius: 5px;
	color: #bcf5e7;
	cursor: pointer;
}

.btn:hover {
	background-color: #169c7b;
	color: white;
}

.table-fill {
	background: white;
	border-radius: 3px;
	border-collapse: collapse;
	/*  height: 320px;*/
	margin: auto;
	max-width: auto;
	padding: 5px;
	width: 100%;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
	animation: float 5s infinite;
}

th {
	color: white;
	background: Black;
	border-bottom: 4px solid #9ea7af;
	border-right: 1px solid #343a45;
	font-size: 23px;
	font-weight: 100;
	padding: 24px;
	text-align: left;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	vertical-align: middle;
}

tr {
	border-top: 1px solid #C1C3D1;
	border-bottom-: 1px solid #C1C3D1;
	color: black;
	font-size: 16px;
	font-weight: normal;
	text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}

td {
	background: #FFFFFF;
	padding: 20px;
	text-align: left;
	vertical-align: middle;
	font-weight: 300;
	font-size: 18px;
	text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
	border-right: 1px solid #C1C3D1;
}

td:last-child {
	border-right: 0px;
}

th.text-left {
	text-align: left;
}

th.text-center {
	text-align: center;
}

th.text-right {
	text-align: right;
}

td.text-left {
	text-align: left;
}

td.text-center {
	text-align: center;
}

td.text-right {
	text-align: right;
}
</style>
<script>
	var dt = new Date();
	document.getElementById('date-time').innerHTML=dt;
</script>
</head>
<body onload="SetDate();">
	<nav class="navbar navbar-expand-xl navbar-light bg-light">
		<a href="#" class="navbar-brand"><i class="fa fa-cube"></i>SRG<b>Shop</b></a>
		<a href="Cashier_view.jsp" style="position: relative; left: 1050px;"><button
				type="button" class="btn btn-outline-danger">Logout</button></a>
	</nav>

	<form class="signup-form" action="Controller" method="post">

		<!-- form header -->
		<div class="form-header">
			<h1>BILL CREATION</h1>
		</div>

		<!-- form body -->
		<div class="form-body">

			<!-- Firstname and Lastname -->
			<div class="horizontal-group">
				<div class="form-group left">
					<%
					ArrayList<Register> cashlist = (ArrayList<Register>) session.getAttribute("list2");
					for (Register robj : cashlist) {
					%>
					<label for="firstname" class="label-title">CASHIER NAME</label> <input
						type="text" id="firstname" class="form-input" name="bcashname"
						value="<%=robj.getName()%>" readonly>
					<%
					}
					%>
				</div>
				<div class="form-group right">
					<%
					String bill = (String) session.getAttribute("billno");
					int billno1;
					if (bill == null) {
						billno1 = 1000;
					} else {
						billno1 = Integer.parseInt(bill);
					}
					%>
					<label for="lastname" class="label-title">BILL NO *</label> <input
						type="text" id="firstname" class="form-input" name="bbillno"
						value="<%=billno1 + 1%>" readonly>
				</div>
			</div>
			<div class="horizontal-group">
				<div class="form-group left">
					<label for="bcustname" class="label-title">CUSTOMER NAME *</label>
					<input type="text" id="bcustname" class="form-input"
						name="bcustname" placeholder="enter your customer name"
						required="required">
				</div>
				<div class="form-group right">
					<label for="bdate" class="label-title">DATE</label> <input
						type="text" class="bdate" id="myDate" name="bdate" readonly>
				</div>
			</div>
			<div class="horizontal-group">
				<div class="form-group left">
					<label for="bphno" class="label-title">PHONE NUMBER *</label> <input
						type="text" id="phno" class="form-input" name="bphno"
						placeholder="enter your phno" required="required">
				</div>
			</div>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br>
			<table align="center" class="table-fill">

				<thead>
					<tr>

						<th class="text-left">ITEM NAME</th>
						<th class="text-left">AVAILABLE QUANTITY</th>
						<th class="text-left">PRICE</th>
						<th class="text-left">PURCHASE QUANTITY</th>
					</tr>

					<%
					int i = 0;
					ArrayList<Register> ulist = (ArrayList<Register>) session.getAttribute("list1");
					for (Register robj : ulist) {
						i = i + 1;
					%>
				</thead>
				<tbody class="table-hover">
					<tr>
						<td class="text-left"><input type="text" id="itemname"
							name="itemname<%=i%>" class="form-input"
							value="<%=robj.getItem_Name()%>" readonly></td>
						<td class="text-left"><input type="number" id="qty"
							name="qty<%=i%>" class="form-input"
							value="<%=robj.getQuantity()%>" readonly></td>
						<td class="text-left"><input type="text" id="price"
							name="price<%=i%>" class="form-input"
							value="<%=robj.getPrice()%>" readonly></td>
						<td class="text-left"><input id="pqty" type="number"
							name="pqty<%=i%>" class="form-input" value="0"></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<br>
		</div>
		<!-- form-footer -->
		<div class="form-footer">
			<%
			i = 0;
			for (Register robj : ulist) {
				i = i + 1;
			%>
			<input type="hidden" name="pid<%=i%>" value="<%=robj.getId()%>">
			<%
			}
			%>
			<%
			ArrayList<Register> cas = (ArrayList<Register>) session.getAttribute("list2");
			for (Register robj : cas) {
			%>
			<input type="hidden" id="firstname" class="form-input"
				name="cashname" value="<%=robj.getName()%>" readonly>
			<%
			}
			%>
			<input type="hidden" name="ulistsize" value="<%=ulist.size()%>">
			<input type="hidden" name="action" value="createbill">
			<button type="submit" class="btn">Create</button>
		</div>
	</form>
	<script type="text/javascript">
	function SetDate()
	{
	var date = new Date();
	var day = date.getDate();
	var month = date.getMonth() + 1;
	var year = date.getFullYear();
	if (month < 10) month = "0" + month;
	if (day < 10) day = "0" + day;
	var today = year + "-" + month + "-" + day;
	document.getElementById('myDate').value = today;
	}
</script>
	<script>
if(somecondition is true){
    document.getElementById("profile").required = false;
}
</script>

</body>
</html>


