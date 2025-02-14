<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

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
.style3 {color: #5f5f5f; }
.style21 {font-size: 14px}
.style23 {color: #666666; font-weight: bold;}
.style10 {color: #504b4b}
.style14 {color: #0e4369; font-size: 16px; font-weight: bold; }
.style16 {font-size: 12px}
-->
</style>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

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
          <h2>Update Files</h2>
          <%
		try {
		int uid = Integer.parseInt(request.getParameter("usid"));
      			String keys = "ef50a0ef2c3e3a5f";
				String filen=request.getParameter("fname");
			  %>
          <form action="DO_Update2.jsp?usid=<%=uid%>" method="post" id="leavereply">
            <span class="style10">
            <label for="name"><br />
            <%
		String quey1="select * from cloudserver  where id='"+uid+"' "; 
		Statement st1=connection.createStatement();
		ResultSet rs4=st1.executeQuery(quey1);
		while ( rs4.next())
		{	
			String ct=rs4.getString(3);
			String trapdoor=rs4.getString(4);
			
			byte[] keyValue1 = keys.getBytes();
				Key key1 = new SecretKeySpec(keyValue1,"AES");
				Cipher c1 = Cipher.getInstance("AES");
				c1.init(Cipher.DECRYPT_MODE, key1);
				String fn = new String(Base64.decode(ct.getBytes()));
				
		if(trapdoor.equalsIgnoreCase("Shared"))
		{
			String quey="select * from cloudserver  where fname='"+fn+"' "; 
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(quey);
			while ( rs.next())
			{
				String ct1=rs.getString(3);
				
				c1.init(Cipher.DECRYPT_MODE, key1);
				String decryptedValue1 = new String(Base64.decode(ct1.getBytes()));

			%>
            <br />
            </label>
            </span>
            <table width="553" border="2"  style="border-collapse:collapse" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="286"><span class="odd style14 style28"><span class="odd style11 style16"> Select File :</span></span></td>
                <td width="356"><input type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
              </tr>
              <tr>
                <td><span class="odd style14 style28"><span class="odd style11 style16"> File Name:</span></span></td>
                <td><label>
                  <input type="text" name="fname" value="<%=filen%>" />
                </label></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><textarea name="text" id="textarea" cols="50" rows="15"><%=decryptedValue1%></textarea></td>
              </tr>
              <tr>
                <td><div align="right"></div></td>
                <td><input type="submit" name="Submit" value="Update" /></td>
              </tr>
            </table>
            <%}
			
			}
			else
			{
	
				c1.init(Cipher.DECRYPT_MODE, key1);
				String decryptedValue = new String(Base64.decode(ct.getBytes()));

			%>
            <br />
            </label>
            </span>
            <table width="553" border="2"  style="border-collapse:collapse" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="286"><span class="odd style14 style28"><span class="odd style11 style16"> Select File :</span></span></td>
                <td width="356"><input type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
              </tr>
              <tr>
                <td><span class="odd style14 style28"><span class="odd style11 style16"> File Name:</span></span></td>
                <td><label>
                  <input type="text" name="fname" value="<%=filen%>" />
                </label></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><textarea name="text" id="textarea" cols="50" rows="15"><%=decryptedValue%></textarea></td>
              </tr>
              <tr>
                <td><div align="right"></div></td>
                <td><input type="submit" name="Submit" value="Update" /></td>
              </tr>
            </table>
            <%}
			}%>
          </form>
          <%
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
			  
			  %>
          <p align="justify">&nbsp;</p>
          <p align="right"><a href="DO_Main.jsp">Back</a></p>
          <div class="article"></div>
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
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
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
