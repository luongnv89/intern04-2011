<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title></title>
<link href="css/Organistation.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<span class="title">Organisation List</span>
	<s:form id="form1" name="form1" method="post" action="">
		<table width="100%" border="0" cellspacing="0" cellpadding="0"
			bgcolor="#EFEFEF">

			<tr>
				<td colspan="7" class="top">&nbsp;</td>
			</tr>

			<tr>
				<td width="2%" rowspan="3" class="left">&nbsp;
				</td>
				<td colspan="3">
				<span class="filter"> 
				<a href="#">All</a>| 
				<a href="#">0-9</a> | 
				<a href="#">A B C D E</a> | 
				<a href="#">F G H I J</a> | 
				<a href="#">K L M N</a> | 
				<a href="#">O P R Q </a>| 
				<a href="#">S T U V</a> | 
				<a href="#">W X Y Z </a>
				</span>
				</td>
				<td colspan="2" align="right">
				
				<label> <!-- <input name="create" type="submit" id="create" value="Create" /> -->
						<s:submit id="create" value="Create" />
				</label>
				 
				<label> <!-- <input type="checkbox" name="checkbox" value="checkbox" /> -->
						<s:checkbox name="checkbox"/> Include In-active
				</label>
				
				</td>
				
				<td width="2%" rowspan="3" class="right">&nbsp;
				</td>
				
			</tr>
			<tr>
				<td width="19%" class="titleColumn"><strong>Organisation
						Name </strong></td>
				<td width="31%" class="titleColumn"><strong>Head
						Office Address Line 1 </strong></td>
				<td width="10%" class="titleColumn"><strong>Postcode</strong></td>
				<td width="26%" class="titleColumn"><strong>Contact</strong></td>
				<td width="10%" class="titleColumn"><strong>Is Active?
				</strong></td>
			</tr>
			<tr>
				<td class="border"><span class="number">1</span></td>
				<td class="border">10 Maurer Court Greenwich Line 1</td>
				<td class="border">SE10 0SS</td>
				<td class="border">Isax NewTon</td>
				<td class="border">Yes</td>
			</tr>
			<tr>
				<td colspan="7" class="bottom">&nbsp;</td>
			</tr>
		</table>
	</s:form>
</body>
</html>
