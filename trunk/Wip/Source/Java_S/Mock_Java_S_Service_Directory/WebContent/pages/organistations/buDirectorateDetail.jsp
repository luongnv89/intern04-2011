<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css/Organistation.css" rel="stylesheet" type="text/css" />
</head>

<body>
<a href="OrganisationDetail.html">Organisation</a> &gt; 
<span class="title">Business Unit/Directorate Details </span>
<br />
<div id="bar">
<form>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><a href="#tab1">Detail</a><a href="#tab2">Department</a></td>
    <td width="6%">
	<label>
      <input type="submit" name="Submit" value="  In-active  " />
    </label></td>
    <td width="6%"><label>
      <input name="save" type="submit" id="save" value="  Save  " />
    </label></td>
    <td width="6%"><label>
      <input name="back" type="submit" id="back" value="  Back  " />
    </label></td>
  </tr>
</table>
</form>
</div>

<div id="container" >
<div class="maintab">

<div id="tab1">
  <form id="form1" name="form1" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="6"class="top">&nbsp;</td>
  </tr>
  <tr>
    <td width="1%" rowspan="13" class="left">&nbsp;</td>
    <td width="15%">Bu/Directorate Name <span class="title">*</span></td>
    <td width="35%"><label>
      <input type="text" name="textfield" />
    </label></td>
    <td>Type of Business <span class="title">*</span></td>
    <td><input type="text" name="textfield32" disabled="disabled" />
        <span class="number">Lookup</span> </td>
    <td width="1%" rowspan="13" class="right">&nbsp;</td>
  </tr>
  <tr>
    <td rowspan="2">Bu/Directorate Short Description <span class="title">*</span></td>
    <td rowspan="2"><label>
      <textarea name="textarea"></textarea>
    </label></td>
    <td>SIC code </td>
    <td><input type="text" name="textfield33" disabled="disabled"></td>
  </tr>
  <tr>
    <td rowspan="2">Bu/Directorate full Description </td>
    <td rowspan="2"><label>
      <textarea name="textarea2"></textarea>
    </label></td>
    </tr>
  <tr>
    <td>Lead Contact </td>
    <td><input type="text" name="textfield3" disabled="disabled" />
      <span class="number">Lookup</span> </td>
    </tr>
	<tr>
	<td colspan="2"><input type="checkbox" name="checkbox2" value="checkbox" />	   Copy Address from Organisation </td>
    <td>Phone Number <span class="title">*</span></td>
    <td><input type="text" name="textfield222" /></td>
	</tr>
  <tr>
    <td>Address Line 1 <span class="title">*</span></td>
    <td><input type="text" name="textfield22" /></td>
    <td>Fax</td>
    <td><input type="text" name="textfield223" /></td>
  </tr>
  <tr>
    <td>Address Line 2 </td>
    <td><input type="text" name="textfield23" /></td>
    <td>Email</td>
    <td><input type="text" name="textfield224" /></td>
  </tr>
  <tr>
    <td>Address Line 3 </td>
    <td><input type="text" name="textfield24" /></td>
    <td>Web Address </td>
    <td><input type="text" name="textfield225" /></td>
  </tr>
  <tr>
    <td>Postcode <span class="title">*</span></td>
    <td><input type="text" name="textfield25" />
      <span class="number">Lookup</span></td>
    <td>Charity Number </td>
    <td><input type="text" name="textfield226" /></td>
  </tr>
  <tr>
    <td>City/Town</td>
    <td><input type="text" name="textfield26" /></td>
    <td>Company Number</td>
    <td><input type="text" name="textfield227" /></td>
  </tr>
  <tr>
    <td>County</td>
    <td><input type="text" name="textfield27" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Nation Country </td>
    <td><label>
      <select name="select">
	  	<option>Viet Nam</option>
      </select>
    </label></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
	<td></td>
    <td>&nbsp;</td>   
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="6" class="bottom">&nbsp;</td>
  </tr>
</table>
</form>

</div>

<div id="tab2">
 <form id="form1" name="form1" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#EFEFEF">
  <tr>
    <td colspan="7" class="top">&nbsp;</td>
  </tr>
  <tr>
    <td width="2%" rowspan="3" class="left">&nbsp;</td>
    <td colspan="3"><span class="filter"><a href="#" >All</a> | <a href="#">0-9</a> | <a href="#">A B C D E</a> | <a href="#">F G H I J</a> | <a href="#">K L M N</a> | <a href="#">O P R Q </a>| <a href="#">S T U V</a> | <a href="#">W X Y Z </a></span></td>
    <td colspan="2" align="right"><label>
      <input name="create" type="submit" id="create" value="Create" />
    </label>      <label>
      <input type="checkbox" name="checkbox" value="checkbox" />
      Include In-active</label></td>
    <td width="2%" rowspan="3" class="right">&nbsp;</td>
  </tr>
  <tr>
    <td width="19%" class="titleColumn"><strong>Department Name </strong></td>
    <td width="31%" class="titleColumn"><strong>Address Line 1 </strong></td>
    <td width="10%" class="titleColumn"><strong>Postcode</strong></td>
    <td width="26%" class="titleColumn"><strong>Contact</strong></td>
    <td width="10%" class="titleColumn"><strong>Is Active? </strong></td>
  </tr>
  <tr >
    <td class="border"><span class="number">1</span></td>
    <td class="border">10 Maurer Court Greenwich Line 1 </td>
    <td class="border">SE10 0SS </td>
    <td class="border">Isax NewTon </td>
    <td class="border">Yes</td>
  </tr>
  <tr>
    <td colspan="7" class="bottom">&nbsp;</td>
  </tr>
</table>
</form>
</div>
</table>
</div>
</body>
</html>
