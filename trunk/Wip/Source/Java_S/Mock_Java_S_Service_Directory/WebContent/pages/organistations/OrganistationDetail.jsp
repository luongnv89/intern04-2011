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

<h3 class="title">Organisation Detail</h3>
<br />
<div id="bar">
<form>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><a href="#tab1">Detail 1</a><a href="#tab2">Detail 2</a><a href="#tab3">Detail 3</a><a href="#tab4">Detail 4</a><a href="#tab5">Detail 5</a><a href="#tab6">BU/Directorates</a></td>
    <td width="6%"><label>
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
    <td colspan="6" class="top">&nbsp;</td>
  </tr>
  <tr>
    <td width="1%" rowspan="12" class="left">&nbsp;</td>
    <td width="15%">Organisation Name <span class="title">*</span></td>
    <td width="35%"><label>
      <input type="text" name="textfield" />
    </label></td>
    <td width="15%">Preferred Organisation </td>
    <td width="33%"><label>
      <input type="checkbox" name="checkbox" value="checkbox" />
    </label></td>
    <td width="1%" rowspan="12" class="right">&nbsp;</td>
  </tr>
  <tr>
    <td rowspan="2">Organisation Short Description <span class="title">*</span></td>
    <td rowspan="2"><label>
      <textarea name="textarea"></textarea>
    </label></td>
    <td>Expression of Interest </td>
    <td><input type="checkbox" name="checkbox2" value="checkbox" /></td>
  </tr>
  <tr>
    <td>Type of Business <span class="title">*</span></td>
    <td><input type="text" name="textfield32" disabled="disabled" />
      <span class="number">Lookup</span> </td>
  </tr>
  <tr>
    <td>Lead Contact </td>
    <td><input type="text" name="textfield3" disabled="disabled" />
      <span class="number">Lookup</span> </td>
    <td>SIC code </td>
    <td><input type="text" name="textfield33" disabled="disabled"  /></td>
  </tr>
  <tr>
    <td>Address Line 1 <span class="title">*</span></td>
    <td><input type="text" name="textfield22" /></td>
    <td rowspan="2">Organisation full Description </td>
    <td rowspan="2"><label>
      <textarea name="textarea2"></textarea>
    </label></td>
  </tr>
  <tr>
    <td>Address Line 2 </td>
    <td><input type="text" name="textfield23" /></td>
  </tr>
  <tr>
    <td>Address Line 3 </td>
    <td><input type="text" name="textfield24" /></td>
    <td>Phone Number <span class="title">*</span></td>
    <td><input type="text" name="textfield222" /></td>
  </tr>
  <tr>
    <td>Postcode <span class="title">*</span></td>
    <td><input type="text" name="textfield25" />
      <span class="number">Lookup</span></td>
    <td>Fax</td>
    <td><input type="text" name="textfield223" /></td>
  </tr>
  <tr>
    <td>City/Town</td>
    <td><input type="text" name="textfield26" /></td>
    <td>Email</td>
    <td><input type="text" name="textfield224" /></td>
  </tr>
  <tr>
    <td>County</td>
    <td><input type="text" name="textfield27" /></td>
    <td>Web Address </td>
    <td><input type="text" name="textfield225" /></td>
  </tr>
  <tr>
    <td>Nation Country </td>
    <td><label>
      <select name="select">
	  	<option>Viet Nam</option>
		
      </select>
    </label></td>
    <td>Charity Number </td>
    <td><input type="text" name="textfield226" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Company Number</td>   
    <td><input type="text" name="textfield227" /></td>
  </tr>
  <tr>
    <td colspan="6" class="top">&nbsp;</td>
  </tr>
</table>
</form>

</div>

<div id="tab2">
 <form id="form1" name="form1" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="6" class="top">&nbsp;</td>
  </tr>
  <tr>
    <td width="1%" rowspan="4" class="left">&nbsp;</td>
    <td width="11%">Organisation Specicallism </td>
    <td width="39%"><div id="block">
      <label>
      <input type="checkbox" name="checkbox" value="checkbox" />
      Blind/Partially Sighted 
      </label><br />
        <label>
        <input type="checkbox" name="checkbox2" value="checkbox" />
        Deaf/Hard of Hearing<br />
        <input type="checkbox" name="checkbox3" value="checkbox" />Dyslexia
		<br />
		<input type="checkbox" name="checkbox4" value="checkbox" />Learning Disability<br />
		<input type="checkbox" name="checkbox5" value="checkbox" />Mental Health
</label>
    </div></td>
    <td width="15%">Service Personal Circumtances Capabilities </td>
    <td width="33%"> <div id="block">
      <label>
      <input type="checkbox" name="checkbox18" value="checkbox" />
      Carer Resboncibilities</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox19" value="checkbox" />
	  Lone Parent</label>
    </div> </td>
    <td width="1%" rowspan="4" class="right">&nbsp;</td>
  </tr>
  
  <tr>
    <td>Service Disabilities Capabilities</td>
    <td> <div id="block">
      <label>
      <input type="checkbox" name="checkbox6" value="checkbox" />
      Chest, Breathing problems</label>
      <br />
      <label>
      <input type="checkbox" name="checkbox7" value="checkbox" />
      Condition restricting mobility</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox8" value="checkbox" />
	  Diabetes</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox9" value="checkbox" />
	  Difficulty in hearing</label>
    </div> </td>
    <td>Service Ethnicity Capabilities </td>
    <td> <div id="block">
      <label>
      <input type="checkbox" name="checkbox20" value="checkbox" />
      White British</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox21" value="checkbox" />
	  White Irish</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox22" value="checkbox" />
	  Other White</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox23" value="checkbox" />
	  White &amp; Black Caribean</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox24" value="checkbox" />
	  White &amp; Black Africa</label>
    </div> </td>
  </tr>
  
  
  <tr>
    <td>Service Barriers Capabilities </td>
    <td> <div id="block">
      <label>
      <input type="checkbox" name="checkbox10" value="checkbox" />
      Lone Parent</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox11" value="checkbox" />
	  ESOL</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox12" value="checkbox" />
	  Refugee</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox13" value="checkbox" />
	  Basic Skills</label>
    </div> </td>
    <td>Accreditation</td>
    <td> <div id="block">
      <label>
      <input type="checkbox" name="checkbox25" value="checkbox" />
      Two Ticks</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox26" value="checkbox" />
	  Investion in people</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox27" value="checkbox" />
	  ISO 9001</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox28" value="checkbox" />
	  ISO 14001</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox29" value="checkbox" />
	  ISO 27001</label>
    </div> </td>
  </tr>
  
  <tr>
    <td>Service Benefits Capabilities </td>
    <td> <div id="block">
      <label>
      <input type="checkbox" name="checkbox14" value="checkbox" />
      Disability Living Allowance</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox15" value="checkbox" />
	  Employment and support allowance</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox16" value="checkbox" />
	  Impacacity Benefit</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox17" value="checkbox" />
	  Income Support</label>
    </div> </td>
    <td>&nbsp;</td>
    <td>  </td>
  </tr>
  
  <tr>
    <td colspan="6" class="bottom">&nbsp;</td>
  </tr>
</table>
</form>
</div>

<div id="tab3">
<form id="form1" name="form1" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="6" class="top">&nbsp;</td>
  </tr>
  <tr>
    <td width="1%" rowspan="2" class="left">&nbsp;</td>
    <td width="11%">EOI Programmes </td>
    <td width="39%"><div id="block">
      <label>
      <input type="checkbox" name="checkbox" value="checkbox" />
      Programme 1</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox2" value="checkbox" />
	  Programme 2</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox3" value="checkbox" />
	  Programme 3</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox4" value="checkbox" />
	  Programme 4</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox5" value="checkbox" />
	  Programme 5</label>
    </div></td>
    <td width="15%">&nbsp;</td>
    <td width="33%">&nbsp;</td>
    <td width="1%" rowspan="2" class="right">&nbsp;</td>
  </tr>
  

  
  <tr>
    <td>EOI Services </td>
    <td><div id="block">
      <label>
      <input type="checkbox" name="checkbox6" value="checkbox" />
      Service 1</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox7" value="checkbox" />
	  Service 2</label>
	  <br />
	  <label>
	  <input type="checkbox" name="checkbox8" value="checkbox" />
	  Service 3</label>
    </div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  

  <tr>
    <td colspan="6" class="bottom">&nbsp;</td>
  </tr>
</table>
</form>
</div>

<div id="tab4">
Tab 4 Content
</div>

<div id="tab5">
<form id="form1" name="form1" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#EFEFEF">
  <tr>
    <td colspan="8" class="top">&nbsp;</td>
  </tr>
  <tr>
    <td width="2%" rowspan="3" class="left">&nbsp;</td>
    <td colspan="3"><strong>Current List of Supporting Materials</strong></td>
    <td colspan="3" align="right"><label>
      <input name="create" type="submit" id="create" value="Create" />
    </label>      <label>
      <input type="checkbox" name="checkbox" value="checkbox" />
      Include In-active</label></td>
    <td width="2%" rowspan="3" class="right">&nbsp;</td>
  </tr>
  <tr>
    <td width="19%" class="titleColumn"><strong>URL</strong></td>
    <td width="31%" class="titleColumn"><strong>Description</strong></td>
    <td width="10%" class="titleColumn"><strong>Type</strong></td>
    <td width="26%" class="titleColumn"><strong>Added By </strong></td>
    <td width="10%" class="titleColumn"><strong>Added Date</strong></td>
    <td width="10%" class="titleColumn">&nbsp;</td>
  </tr>
  <tr >
    <td class="border">http://www.google.com.vn</td>
    <td class="border">Google corp. </td>
    <td class="border">Doc</td>
    <td class="border">Van Vu  </td>
    <td class="border">10/26/2009</td>
    <td class="border">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="8" class="bottom">&nbsp;</td>
  </tr>
</table>
</form>
</div>

<div id="tab6">
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
    <td width="19%" class="titleColumn"><strong>BU/Directorate Name </strong></td>
    <td width="31%" class="titleColumn"><strong>Office Address Line 1 </strong></td>
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
</div>
</div>
</body>
</html>
