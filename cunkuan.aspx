
<%@ page title="" language="VB" masterpagefile="~/MasterPage.master" autoeventwireup="false" inherits="cunkuan, App_Web_igjpifzg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <div>
    
        <br />
        <center>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem Value="!">存款行</asp:ListItem>
            <asp:ListItem>工商银行</asp:ListItem>
            <asp:ListItem>农业银行</asp:ListItem>
            <asp:ListItem>建设银行</asp:ListItem>
            <asp:ListItem>光大银行</asp:ListItem>
            <asp:ListItem>中信银行</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
            <asp:ListItem Value="!">存款期限</asp:ListItem>
            <asp:ListItem Value="0">活期</asp:ListItem>
            <asp:ListItem Value="1">三个月</asp:ListItem>
            <asp:ListItem Value="2">半年</asp:ListItem>
            <asp:ListItem Value="3">一年</asp:ListItem>
            <asp:ListItem Value="4">两年</asp:ListItem>
            <asp:ListItem Value="5">三年</asp:ListItem>
            <asp:ListItem Value="6">五年</asp:ListItem>
        </asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="ID" DataSourceID="AccessDataSource1" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="bank" HeaderText="存款行" SortExpression="bank" />
                <asp:TemplateField HeaderText="存款期限" SortExpression="time">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("time") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# tz1(eval("time")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="回报率" SortExpression="return">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("return") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# eval("return")/100 %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Webdatabase.accdb" SelectCommand="SELECT * FROM [cunkuan]"></asp:AccessDataSource>
    </center>
    </div>
</asp:Content>