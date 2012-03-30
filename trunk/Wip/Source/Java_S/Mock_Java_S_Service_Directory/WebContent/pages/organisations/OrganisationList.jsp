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
	<s:form method="post" action="addOrganisation" id="form1" name="form1">

<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#EFEFEF">

  <tr>

    <td colspan="7" class="top">&nbsp;</td>

  </tr>

  <tr>

    <td width="2%" rowspan="3" class="left">&nbsp;</td>

    <td colspan="3" ><span class="filter"><a href="#" >All</a> | <a href="#">0-9</a> | <a href="#">A B C D E</a> | <a href="#">F G H I J</a> | <a href="#">K L M N</a> | <a href="#">O P R Q </a>| <a href="#">S T U V</a> | <a href="#">W X Y Z </a></span></td>

    <td colspan="2" align="right"><label>

      <input name="create" type="submit" id="create" value="Create" />

    </label>      <label>

      <input type="checkbox" name="checkbox" value="checkbox" />

      Include In-active</label></td>

    <td width="2%" rowspan="3" class="right">&nbsp;</td>

  </tr>

  <tr>

    <td width="19%" class="titleColumn"><strong>Organisation Name </strong></td>

    <td width="31%" class="titleColumn"><strong>Head Office Address Line 1 </strong></td>

    <td width="10%" class="titleColumn"><strong>Postcode</strong></td>

    <td width="26%" class="titleColumn"><strong>Contact</strong></td>

    <td width="10%" class="titleColumn"><strong>Is Active? </strong></td>

  </tr>
			<s:iterator value="listOrgByActive" status="listOrgByActiveStatus">
				<tr id='<s:property value="orgId" />'>
					<td class="border" ><span class="number"><s:property value="orgName" /></span></td>
					<td class="border" ><s:property value="addressVO.addressLine1" /></td>
					<td class="border" ><s:property value="addressVO.postCode" /></td>
					<td class="border" ><s:property value="contactVO.firstName" /></td>
					<td class="border" ><s:if test="statusActive==1">Yes</s:if>
					<s:else>
					No
					</s:else>
					</td>
					</tr>
					
			</s:iterator>
			
			<tr>
			<s:url id="first" action="firstOrganistationList">
			<s:param name="paramFirst" value="1"></s:param>
			</s:url>
			
			<s:url id="back" action="backOrganistationList">
			<s:param name="paramBack" value="2"></s:param>
			</s:url>
			
			<s:url id="to" action="To"></s:url>
			
			<s:url id="next" action="nextOrganistationList">
			<s:param name="paramNext" value="4"></s:param>
			</s:url>
			
			<s:url id="end" action="endOrganistationList">
			<s:param name="paramEnd" value="5"></s:param>
			</s:url>
			
			<td class="titleColumn" colspan="4"><strong> </strong></td>
    		<td class="titleColumn" colspan="3">
    		
    		<s:a href="%{first}" >First</s:a>&nbsp;&nbsp;
    		<s:a href="%{back}" >Back</s:a>&nbsp;&nbsp;
    		<s:a href="%{next}" >Next</s:a>&nbsp;&nbsp;
    		<s:a href="%{end}" >End</s:a>
    		<s:hidden name="currentPageNumber" value="currentPageNumber"></s:hidden>
    		</td>
			</tr>

		</table>
	</s:form>
</body>
</html>
