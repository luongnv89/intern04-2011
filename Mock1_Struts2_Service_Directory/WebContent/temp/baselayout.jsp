<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<link href="/css/style.css" media="screen" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="mainWap">

		<div id="header">

			<tiles:insertAttribute name="header" />

		</div>

		<div id="left">
			<tiles:insertAttribute name="menu" />
		</div>

		<div id="body">
			<tiles:insertAttribute name="body" />
		</div>
		<div class="clr"></div>

		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>

	</div>
</body>
</html>