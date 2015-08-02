<%@ page language="VB" autoeventwireup="false" inherits="mianze, App_Web_tm3jkjy4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript" >
    function closeMe() {

        event.returnValue = false;
        window.close();
    }
 </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        免责声明<br />
    
        <asp:TextBox ID="TextBox1" runat="server" Height="331px" TextMode="MultiLine" 
            Width="500px" ReadOnly="True"></asp:TextBox>
        <br />
        <input type ="button" value ="我已知晓" onclick ="window.closeMe()" />
    
    </div>
    </form>
</body>
</html>
