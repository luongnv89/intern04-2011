<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<s:head />
<link href="css/style.css" media="screen" rel="stylesheet" type="text/css" />

</head>

<body>
	<div id="mainWap">

		<div id="header">

			<h1>Header</h1>

		</div>

		<div id="left">
			<h1>Left</h1>
		</div>

		<div id="body">
			<table>

				<s:form action="login" method="post" >

					<br>
					<s:textfield name="account" label="Account"></s:textfield>

					<s:password name="password" label="Password"></s:password>

					<s:submit value="Submit"></s:submit>

					<s:reset value="Reset"></s:reset>
				</s:form>
			</table>

		</div>
		<div class="clr"></div>

		<div id="footer">
			<h1>Footer</h1>
		</div>

	</div>
</body>
</html>