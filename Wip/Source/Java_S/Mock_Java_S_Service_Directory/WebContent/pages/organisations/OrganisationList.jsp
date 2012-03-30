<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<link href="css/Organisation.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<span class="title">Organisation List</span>
	<s:if test="%{#session.ACCOUNT ==null}">
	</s:if>
	<s:form method="post" action="addOrganistation">

		<table width="100%" border="0" cellspacing="0" cellpadding="0"
			bgcolor="#EFEFEF">
			<tr>
				<td colspan="7" class="top">&nbsp;</td>
			</tr>
			<tr>
				<td width="2%" rowspan="3" class="left">&nbsp;</td>
				<td colspan="3"><span class="filter"> <a href="#">All</a>
						| <a href="#">0-9</a> | <a href="#">A B C D E</a> | <a href="#">F
							G H I J</a> | <a href="#">K L M N</a> | <a href="#">O P R Q </a>| <a
						href="#">S T U V</a> | <a href="#">W X Y Z </a></span></td>
				<td colspan="2" align="right"><input type="submit"
					name="create" id="create" value="Create" /> <!--	<s:submit value="Create" />  -->
					<!-- <s:checkbox label="Include In-Active" name="checkbox" /> --> <input
					type="checkbox" name="checkbox" value="checkbox" /> Include
					In-active</td>

				<td width="2%" rowspan="3" class="right">&nbsp;</td>
			</tr>

			<tr>

				<td width="19%" class="titleColumn"><strong>Organisation Name </strong></td>
				<td width="31%" class="titleColumn"><strong>Head Office Address Line 1 </strong></td>
				<td width="7%" class="titleColumn"><strong>Postcode</strong></td>
				<td width="29%" class="titleColumn"><strong>Contact</strong></td>
				<td width="10%" class="titleColumn"><strong>Is Active?
				</strong></td>
			</tr>

			<s:iterator value="listOrgByActive" status="listOrgByActiveStatus">
				<tr>
					<td class="border" width="19%"><s:property value="orgName" /></td>
					<td class="border" width="31%"><s:property	value="#listOrgByActiveStatus.addressLine1" /></td>
					<td class="border" width="7%"></td>
					<td class="border" width="29%"></td>
					<td class="border" width="10%"></td>
				</tr>
			</s:iterator>

			</table>
	</s:form>
</body>
</html>
