<%@ page language="VB" autoeventwireup="false" inherits="login, App_Web_hqekx5dh" masterpagefile="~/MasterPage3.master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>用户登陆</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >
    <center>
<table>
<tr>
<td>用户名</td>
<td class="style1"><asp:textbox id="name" runat="server" style="width:100px;border-style:inset;"></asp:textbox></td>
<td rowspan="2" style="width:200px;">
<asp:Label ID="label1" runat="server" Text="" ForeColor="red"></asp:Label>
</td>
</tr>
<tr>
<td>密码</td>
<td class="style1"><asp:textbox id="pwrd" runat="server" style="width:100px;border-style:inset;" 
        TextMode="Password"></asp:textbox></td>
</tr>
<tr>
<td></td>
<td align="center">
    <asp:ImageButton ID="login" runat="server" Height="26px" 
        ImageUrl="~/btn_Img/login.PNG" Width="73px" />
</td>
</tr>
<tr>
<td colspan="2" align="center"><font style="color:orange;">还没有账号？马上</font><a href="register.aspx" >注册>></a></td>
</tr>
</table>
</center>
    </div>
   </asp:Content>