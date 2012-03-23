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
<h3 class="title">Supporting Materials  Details </h3>
<br />
<div id="bar">
<form>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="4%">Detail</td>
    <td width="94%">&nbsp;</td>
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

<div id="container" />
<div class="maintab" />

<form id="form1" name="form1" method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan="7" class="top">&nbsp;</td>
    </tr>
    <tr>
      <td width="3%" rowspan="4" class="left">&nbsp;</td>
      <td width="12%">Url<span class="title">*</span></td>
      <td colspan="2"><label>
        <input type="text" name="textfield" />
      </label></td>
      <td width="16%">Added By <span class="title">*</span></td>
      <td width="31%"><input name="textfield32" type="text"  value="Van Vu" /></td>
      <td width="2%" rowspan="4" class="right">&nbsp;</td>
    </tr>
    <tr>
      <td rowspan="2">Description <span class="title">*</span></td>
      <td colspan="2" rowspan="2"><label>
        <textarea name="textarea"></textarea>
      </label></td>
      <td height="36">Added Date </td>
      <td><input name="textfield33" type="text" disabled="disabled" value="14/03/2012" /></td>
    </tr>
    <tr> </tr>
    <tr>
      <td height="26">Type</td>
      <td colspan="2"><select name="select2">
          <option>pdf</option>
      </select></td>
    </tr>
    <tr> </tr>
    <tr>
      <td colspan="7" class="bottom">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>
