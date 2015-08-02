<%@ page language="VB" autoeventwireup="false" inherits="zx, App_Web_stv03dot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <title>跳转界面</title>
    <script type="text/javascript"  language="javascript">
        setTimeout("window.location.href='index.aspx'", 3000)
</script>    <!--设置倒计时,然后自动跳转首页-->
</head>
<body>
<center>
<font style="color:red;font-weight:bold ;font-size:large;">注销成功！</font>
<br />
<font style="color:Purple;font-weight:bold ;font-size:medium;">如果页面不能自动跳转到首页，请点击</font><a href="index.aspx" >这里</a>
</center>
</body>
</html>
