<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style5 {color: #FF0000}
.style6 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
        <li><a href="index.html">Home</a></li>
            <li><a href="DO_Login.jsp">Data Owner </a></li>
            <li><a href="EU_Login.jsp">End User </a></li>
			<li class="active"><a href="C_Login.jsp">Cloud</a></li>
        <li></li>
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
        <div class="article style6">
          <h2 class="style5">Cloud Login </h2>
          <p align="center"><img src="images/Alogin.png" width="256" height="130" /></p>
          <form action="C_Authentication.jsp" method="post" id="leavereply">
            <p class="style5"> Name (required)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                </label>
                <input name="userid" type="text" class="box" id="name" value="" />
            </p>
            <p><span class="style5"> Password (required)</span>&nbsp;&nbsp;&nbsp;
                </label>
                <input type="password" id="pass" name="pass" class="box" />
            </p>
            <p>&nbsp; </p>
            <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
            <input type="reset" name="imageField" id="imageField"  class="RESET" />
          </form>
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
            <li><a href="C_Login.jsp">Cloud</a></li>
            <li><a href="EU_Login.jsp">End User </a></li>
            <li><a href="DO_Login.jsp">Data Owner </a></li>
          </ul>
        </div>
        <div class="gadget">
          <ul class="ex_menu"><li></li>
          </ul>
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
