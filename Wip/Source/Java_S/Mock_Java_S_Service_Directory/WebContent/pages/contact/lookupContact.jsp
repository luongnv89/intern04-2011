<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/lookupContactStyle.css" type="text/css" media="all" title="" />
<script src='http://ajax.microsoft.com/ajax/jquery/jquery-1.4.2.min.js' type='text/javascript'></script>            
<script src="jquery/jquery-1.4.2.js"></script>
<script>

  onload = function() {
    if (!document.getElementsByTagName || !document.createTextNode) return;
    var rows = document.getElementById('demotable').getElementsByTagName('fbody')[0].getElementsByTagName('tr');
    
	for (i = 0; i < rows.length; i++) {
        rows[i].onclick = function() {
            
			// lay dc id cua Organisation la this.id 
			alert(this.id );
			
        }
    }
}

 $(document).ready(function() {
      $("#searchInput").keyup(function(){
 //hide all the rows
          $("#fbody").find("tr").hide();
 //split the current value of searchInput
          var data = this.value.split(" ");
 //create a jquery object of the rows
          var jo = $("#fbody").find("tr");
 //Recursively filter the jquery object to get results. 
          $.each(data, function(i, v){
              jo = jo.filter("*:contains('"+v+"')");
          });
 //show the rows that match.
          jo.show();
 //Removes the placeholder text 
      }).focus(function(){
          this.value="";
          $(this).css({"color":"black"});
          $(this).unbind('focus');
      }).css({"color":"#C0C0C0"});
  });
  

</script>
</head>

<style type="text/css" >
	td input {
	
		display :none;
	}
</style>

<body>
Quick Find: <input type='text' id='searchInput'/>
<table id="demotable">

			<thead>
				<tr>
					<th width="40%">Contact Name</th>
					<th width="15%">Mobile Phone</th>
					<th width="15%">Email</th>
					<th width="15%">Contact Type</th>
					<th width="15%">Is Active</th>
				</tr>
			</thead>
			<tbody id="fbody">
			
			<s:iterator value="listContact" var="contact">
				<tr id='<s:property value="contactID"/>'>
				
				<td><s:property value="mobilePhone"/></td>
				
					<%-- <td><s:property value="firstName"/> ,<s:property value="lastName"/>   </td>
					<td><s:property value="mobilePhone"/></td>
					<td><s:property value="email"/></td>
					<td><s:property value="contactType"/></td>
					<td><s:property value="statusActive"/></td> --%>
					
				</tr>
			</s:iterator>
			</tbody>	
</table>
			
</body>
</html>