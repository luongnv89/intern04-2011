<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/css/style.css" media="screen" rel="stylesheet"
	type="text/css" />

<style type="text/css">
<!--
.style1 {
	color: #009900;
	font-weight: bold;
	font-size: 24px;
}

.style2 {
	color: #33CCFF
}

.style3 {
	font-size: 14px;
	font-weight: bold;
	color: #0066FF;
}
-->
</style>
</head>
<body>
	<span class="style1">Organisation List</span>
	<form id="form1" name="form1" method="post" action="">
		<table width="100%" border="0" cellspacing="0" cellpadding="0"
			bgcolor="#EFEFEF">
			<tr>
				<td colspan="7"
					style="border-left: 1px solid #999999; border-right: 1px solid #999999; border-top: 1px solid #999999;">&nbsp;</td>
			</tr>
			<tr>
				<td width="2%" rowspan="3" style="border-left: 1px solid #999999;">&nbsp;</td>
				<td colspan="3" style="padding-bottom: 10px"><span class="style3"><a href="#">All</a></t>
						| <a href="#">0-9</a> | <a href="#">A B C D E</a> | <a href="#">F
							G H I J</a> | <a href="#">K L M N</a> | <a href="#">O P R Q </a>| <a
						href="#">S T U V</a> | <a href="#">W X Y Z </a></span></td>
				<td colspan="2" align="right"><label> <input
						name="create" type="submit" id="create" value="Create" />
				</label> <label> <input type="checkbox" name="checkbox"
						value="checkbox" /> Include In-active
				</label></td>
				<td width="2%" rowspan="3" style="border-right: 1px solid #999999;">&nbsp;</td>
			</tr>
			<tr>
				<td width="19%" style="border: 1px solid #999999;"
					background="picture/tab.jpg"><strong>Organisation
						Name </strong></td>
				<td width="31%" style="border: 1px solid #999999;"
					background="picture/tab.jpg"><strong>Head Office
						Address Line 1 </strong></td>
				<td width="10%" style="border: 1px solid #999999;"
					background="picture/tab.jpg"><strong>Postcode</strong></td>
				<td width="26%" style="border: 1px solid #999999;"
					background="picture/tab.jpg"><strong>Contact</strong></td>
				<td width="10%" style="border: 1px solid #999999;"
					background="picture/tab.jpg"><strong>Is Active? </strong></td>
			</tr>
			<tr>
				<td style="border: 1px solid #999999;"><span class="style2">1</span></td>
				<td style="border: 1px solid #999999;">10 Maurer Court
					Greenwich Line 1</td>
				<td style="border: 1px solid #999999;">SE10 0SS</td>
				<td style="border: 1px solid #999999;">Isax NewTon</td>
				<td style="border: 1px solid #999999;">Yes</td>
			</tr>
			<tr>
				<td colspan="7"
					style="border-bottom: 1px solid #999999; border-left: 1px solid #999999; border-right: 1px solid #999999;">&nbsp;</td>
			</tr>
		</table>
	</form>
</body>

</html>