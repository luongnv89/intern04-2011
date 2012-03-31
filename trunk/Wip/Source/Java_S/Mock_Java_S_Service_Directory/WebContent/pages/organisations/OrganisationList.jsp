<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<!--  --><link href="css/Organisation.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<span class="title">Organisation List</span>
	
	<s:form method="post" action="addOrganisation" id="form1" name="form1">

<div style="width: 100%;border: 0px;padding: 0px; background-color: #EFEFEF">

    <div style="width: 75%" ><a href="#" >All</a> | <a href="#">0-9</a> | <a href="#">A B C D E</a> | <a href="#">F G H I J</a> | <a href="#">K L M N</a> | <a href="#">O P R Q </a>| <a href="#">S T U V</a> | <a href="#">W X Y Z </a>
</div>

<div style="clear: both;padding-bottom: 10px;background-color: gray;">
</div>

    <div style="float: right;">
       <input type="checkbox" name="checkbox" style="right: 10px"/>Include In-Active
       <input type="submit" name="submit" value="Create" style="right: 25px"/>
       
    </div>
    
    
       <div style="clear: both;"></div>
   
      <div style="width: 100%">

		<div style="width: 19%;float: left;" class="titleColumn">Organisation Name </div>
		<div style="width: 31%;float: left;" class="titleColumn">Head Office Address Line 1 </div>

		<div style="width: 10% ;float: left;" class="titleColumn">Postcode </div>

		<div style="width: 26% ;float: left;" class="titleColumn">Contact </div>
		<div style="width: 10% ;float: left;" class="titleColumn">Is Active?</div>
	</div>

    <div style="clear: both;">
    </div>

	<s:iterator value="listOrgByActive" status="listOrgByActiveStatus">
			<div id='<s:property value="orgId" />' style="clear: true;width: 100%" >
					<div class="border" style="float: left;width: 19%"><span class="number"><s:property value="orgName" /></span></div>
					<div class="border" style="float: left;width: 31%" ><s:property value="addressVO.addressLine1" /></div>
					<div class="border" style="float: left;width: 10%" ><s:property value="addressVO.postCode" /></div>
					<div class="border" style="float: left;width: 26%" ><s:property value="contactVO.firstName" /></div>
					<div class="border" style="float: left;width: 10%" ><s:if test="statusActive==1">Yes</s:if>
					<s:else>
					No
					</s:else>
					</div>
			</div>
			</s:iterator>
		
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
				
			<div style="float: right;">
			
    		<s:a href="%{first}" >First</s:a>&nbsp;&nbsp;
    		<s:a href="%{back}" >Back</s:a>&nbsp;&nbsp;
    		<s:a href="%{next}" >Next</s:a>&nbsp;&nbsp;
    		<s:a href="%{end}" >End</s:a>
    		<s:hidden name="currentPageNumber" value="currentPageNumber"></s:hidden>
    		</div>
			</div>
	</s:form>
</body>
</html>
