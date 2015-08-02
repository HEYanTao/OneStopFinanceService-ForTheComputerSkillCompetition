<%@ page language="VB" autoeventwireup="false" inherits="individual_center, App_Web_tm3jkjy4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>个人中心</title>
    <link href="StyleSheet2.css" type="text/css" rel="Stylesheet" />
</head>
<body id="id1">
    <form id="form1" runat="server">
    <center>
    <div id="top">
        <br />
        <br />
        <br />
        <table>
        <tr>
        <td><asp:Image ID="Image1" runat="server" Width="100px" Height="100px" /></td>
        <td valign="middle"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br /></td>
        </tr>
        </table>
        <ul>
        <li>
        <a href="center_fb.aspx" target="frame2">我的发表</a>
        </li>
        <li>
        <a href="center_xg.aspx" target="_self">修改资料</a>
        </li>
        </ul>
    </div>
    <div>
    <iframe id="frame1" name="frame2" style="width:1024px; height: 420px;" 
            frameborder="0"> </iframe>
    </div>
    </center>
    </form>
</body>
</html>
