<%@ page language="VB" autoeventwireup="false" inherits="g, App_Web_qdml2mv2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript" >
        function closeMe() {

            event.returnValue = false;
            window.close();
        }
 </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width:700px;" align="center" >
        <tr><td><asp:DropDownList ID="DropDownList1" runat="server" style="width:100px">
            <asp:ListItem Value="1">股票</asp:ListItem>
            <asp:ListItem Value="2">基金</asp:ListItem>
            <asp:ListItem Value="3">保险</asp:ListItem>
        </asp:DropDownList></td>
       
        <td> 标题 
        <asp:TextBox ID="TextBox1" runat="server" Width="400px"></asp:TextBox></td></tr>
       
        <tr >
       <td colspan="2">
        <textarea id="TextArea1" name="S1"style="width:700px;margin:auto;height:500px "></textarea></td></tr>
        <tr><td colspan="2" align="center" >
        <asp:Button ID="Button1" runat="server" Text="确认" OnClientClick="return(confirm('确认添加'))" />
       <input type ="button" value ="结束添加" onclick ="window.closeMe()" /></td></tr>
       </table>
       
       
        </div>
        
    </form>
</body>
</html>
