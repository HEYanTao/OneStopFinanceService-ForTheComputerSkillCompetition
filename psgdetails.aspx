<%@ page language="VB" autoeventwireup="false" inherits="psgdetails, App_Web_tm3jkjy4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>文章详情</title>
</head>
<body>
<center>
   <form id="f1" runat="server" style="height:650px;width:1084px;">
    
        <asp:Label ID="theme" runat="server" ForeColor="#009900"></asp:Label>
        <br />
        <asp:TextBox ID="content" runat="server" Height="600px" ReadOnly="True" 
            TextMode="MultiLine" Width="86%"></asp:TextBox>
            <br />
      <font style="font-weight:bold;">更改字体大小</font><asp:DropDownList ID="fsize" runat="server" AutoPostBack ="true">
      <asp:listitem Text="10" ></asp:listitem>
      <asp:listitem Text="12" ></asp:listitem>
        <asp:listitem Text="16" ></asp:listitem>
        <asp:listitem Text="18" ></asp:listitem>
   </asp:DropDownList>
    </form>
    </center>
</body>
</html>
