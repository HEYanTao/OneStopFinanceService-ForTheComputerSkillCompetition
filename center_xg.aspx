<%@ page language="VB" autoeventwireup="false" inherits="center_xg, App_Web_tm3jkjy4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>修改信息</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
    <table>
<tr>
<td>旧密码</td>
<td><asp:textbox id="old_pwrd" runat="server" style="width:100px;border-style:inset;" 
        TextMode="Password"></asp:textbox></td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="" ForeColor="red"></asp:Label></td>
</tr>
<tr>
<td>新密码</td>
<td><asp:textbox id="new_pwrd" runat="server" style="width:100px;border-style:inset;" 
        TextMode="Password"></asp:textbox></td>
<td><asp:RegularExpressionValidator ID="Regular2" runat="server" ControlToValidate ="new_pwrd" ErrorMessage ="密码必须由8-12位数字或字母组成" ValidationExpression ="\w{8,12}" Display ="dynamic" ForeColor="red" ></asp:RegularExpressionValidator></td>
</tr>
<tr>
<td>确认新密码</td>
<td><asp:TextBox ID="queren" runat="server" style="width:100px;border-style:inset;" 
        TextMode="Password"></asp:TextBox></td>
<td>
<asp:CompareValidator ID="compare1" runat="server" ControlToValidate="queren" ControlToCompare="new_pwrd" ErrorMessage ="两次密码不一致" Display ="dynamic" ForeColor="red"></asp:CompareValidator>
</td>
</tr>
<tr>
<td>上传头像</td>
<td>
    <asp:FileUpload ID="sc" runat="server" /></td>
<td>
    <asp:Label ID="Label2" runat="server" Text="可选.仅支持jpeg,jpg,png格式的图片" 
        forecolor="Red"></asp:Label></td>
</tr>
<tr>
<td colspan="2" align="center">
<asp:Button ID="change" runat="server" Text="修改" 
        onclientclick="return confirm('确定修改？')" />
<asp:Button ID="clear" runat="server" Text="清空" CausesValidation="False" />
</td>
</tr>
</table>
    </center>
    </div>
    </form>
</body>
</html>
