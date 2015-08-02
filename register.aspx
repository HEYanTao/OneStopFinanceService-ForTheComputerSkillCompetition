<%@ page language="VB" autoeventwireup="false" inherits="login_register, App_Web_wkrquhl1" masterpagefile="~/MasterPage3.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>用户注册</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <center>
<table>
<tr>
<td style="width:70px;">用户名</td>
<td><asp:textbox id="name" runat="server" style="width:150px;border-style:inset;" 
        autopostback="true" CausesValidation="True" ValidationGroup="1" ></asp:textbox></td>
<td style="width:550px;">
<asp:RequiredFieldValidator ID="r1" runat="server" controltovalidate="name" ErrorMessage ="用户名不能为空！" Display ="dynamic" ForeColor="red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="regular1" runat="server" 
        ControlToValidate ="name"  ErrorMessage ="用户名必须由8-12位数字或字母组成" 
        ValidationExpression ="\w{8,12}" ForeColor="Red"></asp:RegularExpressionValidator>
<asp:Label ID="label1" runat="server" Text="" ForeColor="red"></asp:Label>
</td>
</tr>
<tr>
<td>密码</td>
<td><asp:textbox id="pwrd" runat="server" style="width:150px;border-style:inset;" 
        TextMode="Password"></asp:textbox></td>
<td class="style1">
<asp:RequiredFieldValidator ID="r2" runat="server" controltovalidate="pwrd" ErrorMessage ="密码不能为空！" Display ="dynamic" ForeColor="red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="Regular2" runat="server" ControlToValidate ="pwrd" ErrorMessage ="密码必须由8-12位数字或字母组成" ValidationExpression ="\w{8,12}" Display ="dynamic" ForeColor="red" ></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td>确认密码</td>
<td><asp:TextBox ID="queren" runat="server" style="width:150px;border-style:inset;" 
        TextMode="Password"></asp:TextBox></td>
<td class="style1">
<asp:CompareValidator ID="compare1" runat="server" ControlToValidate="queren" ControlToCompare="pwrd" ErrorMessage ="两次密码不一致" Display ="dynamic" ForeColor="red"></asp:CompareValidator>
</td>
</tr>
<tr>
<td>性别</td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="50px">
    <asp:ListItem Text="男"></asp:ListItem>
    <asp:ListItem Text="女"></asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr>
<td>邮箱地址</td>
<td>
    <asp:TextBox ID="youxiang" runat="server" style="width:150px;border-style:inset;" ></asp:TextBox></td>
 <td class="style1">
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="不能为空" ControlToValidate ="youxiang" ForeColor="red"></asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
         ErrorMessage="邮箱格式错误"  ControlToValidate ="youxiang" ForeColor="red" 
         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
</tr>
<tr>
<td>上传头像</td>
<td>
    <asp:FileUpload ID="sc" runat="server" /></td>
<td class="style1">
    <asp:Label ID="Label2" runat="server" Text="仅支持jpeg,jpg,png格式的图片" forecolor="red"></asp:Label></td>
</tr>
<tr>
<td>验证码</td>
<td valign="middle" >
    <asp:TextBox ID="yzm" runat="server" style="width:150px;border-style:inset;">区分大小写</asp:TextBox>
    <img id="Verify_code" src="Verify_Code.ashx?" alt="看不清？点击更换" onclick="this.src=this.src+'?'" width="80" height="24" /></td>
<td align="left" class="style1">
    <asp:Label ID="Label3" runat="server" Text="看不清？点击图片更换" ForeColor="blue"></asp:Label>
   <asp:Label ID="Label4" runat="server" Text="验证码不正确" ForeColor='red' Visible="false"></asp:Label></td>
</tr>
<tr>
<td colspan="2" align="center">
    <asp:ImageButton ID="register" runat="server" Height="30px" 
        ImageUrl="~/btn_Img/zc.PNG" Width="90px" />
</td>
</tr>
</table>
</center>
    </div>
  </asp:Content>