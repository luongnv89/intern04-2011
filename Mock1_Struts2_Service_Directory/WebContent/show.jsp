<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<font color="red">Welcome,<s:property value="%{#session.USER}" />
	</font>
	<h1>List</h1>
	<s:property value="nameSearch" />
	<table border="1">
		<thead>
			<tr>
				<th>No.</th>
				<th>Account</th>
				<th>Email</th>
				<th>Password</th>
				<th>Role</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="list" status="listStatus">
				<tr>
					<td><s:property value="%{#listStatus.count}" /></td>
					<td><s:property value="account" /></td>
					<td><s:property value="email" /></td>
					<td><s:property value="password" /></td>
					<td><s:property value="role" /></td>

				</tr>
			</s:iterator>
		</tbody>
	</table>
</body>
</html>