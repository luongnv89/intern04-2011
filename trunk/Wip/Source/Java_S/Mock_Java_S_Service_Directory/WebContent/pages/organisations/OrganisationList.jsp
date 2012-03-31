<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<!--  --><link href="css/Organisation.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="javascript/Organisation.js"></script>
</head>

<body>
	<span class="title">Organisation List</span>
	
	

<div style="width: 100%;border: 0px;padding: 0px; background-color: #EFEFEF">

    <div style="width: 75%;float: left;" ><a href="#" >All</a> | <a href="#">0-9</a> | <a href="#">A B C D E</a> | <a href="#">F G H I J</a> | <a href="#">K L M N</a> | <a href="#">O P R Q </a>| <a href="#">S T U V</a> | <a href="#">W X Y Z </a> 
	</div>
	
	<div>
	
	<s:form method="post" action="addOrganisation" id="form1" name="formOrganisationListByActive" value="createOrganisation" >
	<input type="submit" name="submit" value="Create" style="right: 25px"/>
	</s:form>
	
	<s:form method="post" action="getAllOrganisations" id="form2" name="formOrganisationListCheckBoxIsChecked" value="checkBoxIsChecked">
    <input type="checkbox" name="checkbox" style="right: 10px" onclick="doCheckBoxSubmit();" />Include In-Active
	<s:hidden name="nameCheckBox" id="checkBoxInActive" value="0"/>
	</s:form>
	
	</div>

	<div style="clear: both;padding-bottom: 10px">
	</div>

       <div style="clear: both;border-width: 1px"></div>
      <div style="border-color: blue;border-width: 1px" class="borderwidth">

		<div style="width: 23%;float: left;border-width: 1px" class="borderwidth">Organisation Name </div>
		<div style="width: 31%;float: left;border-width: 1px " class="borderwidth">Head Office Address Line 1 </div>

		<div style="width: 10% ;float: left;border-width: 1px " class="borderwidth">Postcode </div>

		<div style="width: 26% ;float: left ;border-width: 1px " class="borderwidth">Contact </div>
		<div style="width: 10% ;float: left ;border-width: 1px" class="borderwidth">Is Active?</div>
	</div>

    <div style="clear: both;">
    </div>
    
    
    <s:set name="check" value="statusCheckBoxIncludeInActive"/> 
    
    
    	<s:if test="%{#check==0}">
	
		<s:iterator value="listOrgByActive" status="listOrgByActiveStatus">
			<div id='<s:property value="orgId" />' style="clear: true;width: 100%;border-width: 1px" >
					<div  style="float: left;width: 23%" ><span class="number"><s:property value="orgName" /></span></div>
					<div style="float: left;width: 31%" ><s:property value="addressVO.addressLine1" /></div>
					<div  style="float: left;width: 10%" ><s:property value="addressVO.postCode" /></div>
					<div style="float: left;width: 26%" ><s:property value="contactVO.firstName" /></div>
					<div  style="float: left;width: 10%" ><s:if test="statusActive==1">Yes</s:if>
					<s:else>
					No
					</s:else>
					</div>
			</div>
			</s:iterator>
			
			<s:url id="first" action="firstOrganistationList">
				<s:param name="firstPage" value="1"></s:param>
			</s:url>
			
			<s:url id="back" action="backOrganistationList">
				<s:param name="backPage" value="2"></s:param>
			</s:url>
			
			<s:url id="to" action="To"></s:url>
			
			<s:url id="next" action="nextOrganistationList">
				<s:param name="nextPage" value="4" ></s:param>
			</s:url>
			
			<s:url id="end" action="endOrganistationList">
				<s:param name="endPage" value="5"></s:param>
			</s:url>
				
			<div style="float: right;">
			
    		<s:a href="%{first}" >First</s:a>&nbsp;&nbsp;
    		<s:a href="%{back}" >Back</s:a>&nbsp;&nbsp;
    		<s:a href="%{next}" >Next</s:a>&nbsp;&nbsp;
    		<s:a href="%{end}" >End</s:a>
    		<s:hidden name="currentPageNumber" value="currentPageNumber"></s:hidden>
    		</div>
	</s:if>
	
	
	<s:elseif test="%{#check==1}">
	<s:iterator value="listOrgAll" status="listOrgAllStatus">
			<div id='<s:property value="orgId" />' style="clear: true;width: 100%;border-width: 1px" class='<s:if test="statusActive==0">InActive</s:if>' >
					<div  style="float: left;width: 23%" ><span class="number"><s:property value="orgName" /></span></div>
					<div style="float: left;width: 31%" ><s:property value="addressVO.addressLine1" /></div>
					<div  style="float: left;width: 10%" ><s:property value="addressVO.postCode" /></div>
					<div style="float: left;width: 26%" ><s:property value="contactVO.firstName" /></div>
					<div  style="float: left;width: 10%" ><s:if test="statusActive==1">Yes</s:if>
					<s:else>
					No
					</s:else>
					</div>
			</div>
			</s:iterator>
			
			<s:url id="first" action="firstOrganistationList2">
				<s:param name="firstPage" value="1"></s:param>
			</s:url>
			
			<s:url id="back" action="backOrganistationList2">
				<s:param name="backPage" value="2"></s:param>
			</s:url>
			
			<s:url id="to" action="To"></s:url>
			
			<s:url id="next" action="nextOrganistationList2">
				<s:param name="nextPage" value="4" ></s:param>
			</s:url>
			
			<s:url id="end" action="endOrganistationList2">
				<s:param name="endPage" value="5"></s:param>
			</s:url>
				
			<div style="float: right;">
			
    		<s:a href="%{first}" >First</s:a>&nbsp;&nbsp;
    		<s:a href="%{back}" >Back</s:a>&nbsp;&nbsp;
    		<s:a href="%{next}" >Next</s:a>&nbsp;&nbsp;
    		<s:a href="%{end}" >End</s:a>
    		<s:hidden name="currentPageNumber" value="currentPageNumber"></s:hidden>
    		</div>
	</s:elseif>  
	
		

			</div>
</body>
</html>
