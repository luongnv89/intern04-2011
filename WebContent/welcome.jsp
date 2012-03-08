<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
<link href="css/style.css" media="screen" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<s:if test="true">
		<font>
			<h1>
				Welcome,

				<s:property value="%{#session.USER}" />
			</h1>
		</font>
	</s:if>
</body>
</html>