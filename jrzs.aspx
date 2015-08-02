<%@ page title="" language="VB" masterpagefile="~/MasterPage3.master" autoeventwireup="false" inherits="jinrongzhishi, App_Web_u3og2ilh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table width="900px"> 
 <tr>
 <td width="300px" align="center"valign="top" >
     股票<br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="AccessDataSource1" CellPadding="4" 
            ForeColor="#333333" GridLines="None" PageSize="7">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="id" 
                DataNavigateUrlFormatString="~/html/0.aspx?id={0}" DataTextField="title" 
                HeaderText="标题" Target="_blank" />
            <asp:BoundField DataField="times" HeaderText="浏览次数" SortExpression="times" >
            <ItemStyle HorizontalAlign="Center" Width="70px" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/Webdatabase.accdb" 
        SelectCommand="SELECT * FROM [article] WHERE ([n] = 1)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="n" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource></td>
    <td width="300px" align="center" valign="top" >
    
    
    
        基金<br />
    
    
    
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="ID" DataSourceID="AccessDataSource2" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="~/html/0.aspx?id={0}" DataTextField="title" 
                    HeaderText="标题" Target="_blank" />
                <asp:BoundField DataField="times" HeaderText="浏览次数" SortExpression="times" >
                <ItemStyle HorizontalAlign="Center" Width="70px" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/Webdatabase.accdb" 
            SelectCommand="SELECT * FROM [article] WHERE ([n] = 2)">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="n" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
    
    
    
    </td>
     <td width="300px" align="center" valign="top">
    
    
    
         保险<br />
    
    
    
         <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
             CellPadding="4" DataKeyNames="ID" DataSourceID="AccessDataSource3" 
             ForeColor="#333333" GridLines="None">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:HyperLinkField DataNavigateUrlFields="id" 
                     DataNavigateUrlFormatString="~/html/0.aspx?id={0}" DataTextField="title" 
                     HeaderText="标题" Target="_blank" />
                 <asp:BoundField DataField="times" HeaderText="浏览次数" SortExpression="times" >
                 <ItemStyle HorizontalAlign="Center" Width="70px" />
                 </asp:BoundField>
             </Columns>
             <EditRowStyle BackColor="#999999" />
             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#E9E7E2" />
             <SortedAscendingHeaderStyle BackColor="#506C8C" />
             <SortedDescendingCellStyle BackColor="#FFFDF8" />
             <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
         </asp:GridView>
         <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
             DataFile="~/App_Data/Webdatabase.accdb" 
             SelectCommand="SELECT * FROM [article] WHERE ([n] = 3)">
             <SelectParameters>
                 <asp:Parameter DefaultValue="3" Name="n" Type="Int32" />
             </SelectParameters>
         </asp:AccessDataSource>
    
    
    
    </td>


   </tr>
 </table>
</asp:Content>

