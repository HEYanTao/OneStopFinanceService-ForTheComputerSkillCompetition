<%@ page language="VB" autoeventwireup="false" inherits="submit_passage, App_Web_tm3jkjy4" theme="submit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>提交文章</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
    加<font style="color:red;">*</font>的是必填内容<br />
        <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
&nbsp;<table>
       <tr>
          <td style="width:40px;"><font style="color:red;">*</font>标题</td>
          <td style="width:400px;"><asp:TextBox ID="title" runat="server"  textmode="MultiLine" ></asp:TextBox></td>
          <td style="width:200px;"><asp:Label ID="label1" runat="server" Text="" ForeColor="red"></asp:Label></td>
          <td style="width:100px;">
          <asp:RequiredFieldValidator ID="r1" runat="server" ControlToValidate ="title" ErrorMessage="不能为空" ForeColor="red"></asp:RequiredFieldValidator>
          </td>
       </tr>
       <tr>
          <td><font style="color:red;">*</font>类型</td>
          <td><asp:TextBox ID="type" runat="server"  textmode="MultiLine" ></asp:TextBox></td>
          <td><asp:Label ID="label2" runat="server" Text="" ForeColor="red"></asp:Label></td>
          <td>
          <asp:RequiredFieldValidator ID="r2" runat="server" ControlToValidate ="type" ErrorMessage="不能为空" ForeColor="red"></asp:RequiredFieldValidator>
          </td>
       </tr>
       <tr>
          <td colspan="4"><font style="color:red;">*</font>文章:
             <asp:RequiredFieldValidator ID="r3" runat="server" ControlToValidate ="content" ErrorMessage="不能为空" ForeColor="red"></asp:RequiredFieldValidator>
          </td>
       </tr>
       <tr>
          <td colspan="4" style="width:740px;">
             <asp:TextBox ID="content" runat="server"  textmode="MultiLine" 
                  style="width:740px;height:350px;" BorderStyle="None" EnableTheming="True"></asp:TextBox>
          </td>
       </tr>
       <tr>
          <td colspan="4">
          <asp:Button ID="ok" runat="server" Text="提交" 
                  onclientclick="return confirm('确定提交吗？')" />
          <asp:Button ID="cancel" runat="server" Text="清空" CausesValidation="False" 
                  onclientclick="return confirm('确定清空吗？')" />
          </td>
       </tr>
    </table>
    </center>
    </div>
    </form>
</body>
</html>
