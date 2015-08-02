<%@ page language="VB" autoeventwireup="false" inherits="ly, App_Web_hqekx5dh" masterpagefile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>留言栏</title>
    <style type="text/css">
        #id1{width:900px;height:40%;margin:0 auto;border-bottom:solid purple;}
         #id2{width:900px;height:60%;margin:0 auto;}
         h2{color:red;}
         h3{color:Orange;}
        #id3{width:900px;}
    </style>
</asp:Content>
<asp:Content ID="id3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div id="id1">
    <center>
    <h2>欢迎大家留言！</h2>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:GridView ID="xianshi" runat="server" AllowPaging="True" PageSize="4" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
     </center> 
    </div>
    <div id="id2">
    <center>
    <table >
    <tr>
    <td colspan="2" align ="center" ><h3>请在此发表留言</h3></td>
    </tr>
    <tr>
    <td style="width:70px;">作者</td>
    <td style="width:322px;">
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
            Width="322px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>主题<font style="color:Red;">*</font></td>
    <td>
        <asp:TextBox ID="TextBox2" runat="server" Width="322px"></asp:TextBox></td>
     <td  style="width:80px;">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="不能为空" ControlToValidate ="textbox2" ForeColor="red"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>内容<font style="color:Red;">*</font></td>
    <td>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="multiline" Height="238px" 
            Width="322px"></asp:TextBox></td>
    <td  style="width:80px;">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="不能为空" ControlToValidate ="textbox3" ForeColor="red"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td align="center" colspan="2">
        <asp:Button ID="fb" runat="server" Text="发表" />
        <asp:Button ID="cz" runat="server" Text="清空" />
            </td>
    </tr>
    </table>
    </center>
    </div>
   </asp:Content>
