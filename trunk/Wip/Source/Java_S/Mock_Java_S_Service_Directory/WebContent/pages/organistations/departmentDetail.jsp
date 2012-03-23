<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css/Organistation.css" rel="stylesheet" type="text/css" />
</head>

<body>
<a href="OrganisationDetail.html">Organisation</a> &gt; <a href="BuDirectorateDetail.html">Directorate</a> &gt;
<span class="title">Department Details </span>
<br />
<div id="bar">
<form>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="4%"><a href="#tab1">Detail</a></td>
    <td width="88%">&nbsp;</td>
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
        <td colspan="7" class="top">&nbsp;</td>
      </tr>
      <tr>
        <td width="1%" rowspan="13" class="left">&nbsp;</td>
        <td width="15%">Bu/Directorate Name <span class="title">*</span></td>
        <td colspan="2"><label>
          <input type="text" name="textfield" />
        </label></td>
        <td width="22%">Type of Business <span class="title">*</span></td>
        <td width="24%"><input type="text" name="textfield32" disabled="disabled" />
            <span class="number">Lookup</span> </td>
        <td width="3%" rowspan="13" class="right">&nbsp;</td>
      </tr>
      <tr>
        <td rowspan="2">Bu/Directorate Short Description <span class="title">*</span></td>
        <td colspan="2" rowspan="2"><label>
          <textarea name="textarea"></textarea>
        </label></td>
        <td>SIC code </td>
        <td><input type="text" name="textfield33" disabled="disabled" /></td>
      </tr>
      <tr>
        <td rowspan="2">Bu/Directorate full Description </td>
        <td rowspan="2"><label>
          <textarea name="textarea2"></textarea>
        </label></td>
      </tr>
      <tr>
        <td>Lead Contact </td>
        <td colspan="2"><input type="text" name="textfield3" disabled="disabled" />
            <span class="number">Lookup</span> </td>
      </tr>
      <tr>
        <td> Copy Address from </td>
        <td width="10%"><label>
          <input name="radiobutton" type="radio" value="radiobutton" />
          Organisation</label></td>
        <td width="25%"><label>
          <input name="radiobutton" type="radio" value="radiobutton" />
          Parent </label></td>
        <td>Phone Number <span class="title">*</span></td>
        <td><input type="text" name="textfield222" /></td>
      </tr>
      <tr>
        <td>Address Line 1 <span class="title">*</span></td>
        <td colspan="2"><input type="text" name="textfield22" /></td>
        <td>Fax</td>
        <td><input type="text" name="textfield223" /></td>
      </tr>
      <tr>
        <td>Address Line 2 </td>
        <td colspan="2"><input type="text" name="textfield23" /></td>
        <td>Email</td>
        <td><input type="text" name="textfield224" /></td>
      </tr>
      <tr>
        <td>Address Line 3 </td>
        <td colspan="2"><input type="text" name="textfield24" /></td>
        <td>Web Address </td>
        <td><input type="text" name="textfield225" /></td>
      </tr>
      <tr>
        <td>Postcode <span class="title">*</span></td>
        <td colspan="2"><input type="text" name="textfield25" />
            <span class="number">Lookup</span></td>
        <td>Charity Number </td>
        <td><input type="text" name="textfield226" /></td>
      </tr>
      <tr>
        <td>City/Town</td>
        <td colspan="2"><input type="text" name="textfield26" /></td>
        <td>Company Number</td>
        <td><input type="text" name="textfield227" /></td>
      </tr>
      <tr>
        <td>County</td>
        <td colspan="2"><input type="text" name="textfield27" /></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td rowspan="2">Nation Country </td>
        <td colspan="2" rowspan="2"><label>
          <select name="select">
            <option>Viet Nam</option>
          </select>
        </label></td>
        <td rowspan="2">&nbsp;</td>
        <td rowspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="7" class="bottom">&nbsp;</td>
      </tr>
    </table>
  </form>
</div>
</body>
</html>
