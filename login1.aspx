<%@ page language="VB" autoeventwireup="false" inherits="login, App_Web_wkrquhl1" masterpagefile="~/MasterPage2.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td rowspan="3">
                &nbsp;</td>
            <td class="style2">
                用户名<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                密码<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <asp:Button 
                    ID="Button1" runat="server" Height="27px" style="text-align: right" Text="登陆" 
                    Width="80px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Height="49px" Text="立即体验专属定制礼遇" 
                    Width="863px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
   </asp:Content>
