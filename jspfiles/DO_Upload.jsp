<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style14 {color: #0e4369; font-size: 16px; font-weight: bold; }
.style16 {font-size: 12px}
.style17 {color: #FFFF00}
.style18 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("fileupload").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
            <li class="active"><a href="DO_Main.jsp">Data Owner </a></li>
			<li><a href="DO_Login.jsp">Logout</a></li>
      </ul>
    </div>
    <div class="clr"></div>
  </div>
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1>Secure and Efficient Data Deduplication in JointCloud Storage</h1>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style18">Select File To Upload </h2>
          <p>&nbsp;</p>
          <form id="form1" method="post" action="DO_Upload1.jsp">
            <table width="553" border="0" align="center"  style="border-collapse:collapse" cellpadding="0" cellspacing="0">
              <tr>
                <td width="286" height="32" bgcolor="#FF0000"><span class="odd style14 style28"><span class="odd style11 style16 style17"> Select File :</span></span></td>
                <td width="356"><input required="required" type="file" name="t42" id="fileupload" onchange="loadFileAsText();" /></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000" class="odd style14 style28"><span class="odd style11 style16 style17">Encrypt Key  :</span></td>
                <td><input required="required"  name="tt2" value="<%=application.getAttribute("enkey")%>" type="text" id="tt" size="49"/></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000" class="odd style14 style28"><span class="odd style11 style16 style17">File Name :</span> </td>
                <td><input required="required"  name="tt" type="text" id="t42" size="49"/></td>
              </tr>
              <tr>
                <td height="259">&nbsp;</td>
                <td><textarea name="text" id="textarea" cols="50" rows="15"></textarea></td>
              </tr>
              <tr>
                <td><div align="right"></div></td>
                <td><input type="submit" name="Submit" value="Encrypt" /></td>
              </tr>
            </table>
          </form>
          <p align="right"><a href="DO_Main.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search" type="text" />
            </span>
          </form>
          <div class="clr"></div>
        </div>
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <ul class="sb_menu">
            <li><a href="DO_Main.jsp">Home</a></li>
            <li><a href="DO_Login.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
