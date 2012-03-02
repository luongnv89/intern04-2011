<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body>
	<s:actionerror />
	<s:form action="login" method="post">
		<s:textfield name="account" label="account"></s:textfield>

		<s:password name="password" label="password"></s:password>

		<s:submit value="Submit"></s:submit>

		<s:reset value="Reset"></s:reset>
	</s:form>
</body>
</html>