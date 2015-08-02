<%@ page language="VB" autoeventwireup="false" inherits="center_fb, App_Web_tm3jkjy4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
    <asp:Label ID="label1" runat="server" Visible="False"></asp:Label>
    <asp:multiview ID="mview1" runat="server">
    <asp:View ID="v1" runat="server">
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" allowpaging="true" CellPadding="4" 
            ForeColor="#333333" PageSize="5" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
    </asp:View>
    
    </asp:multiview>
    </center>
    </div>
    </form>
</body>
</html>
