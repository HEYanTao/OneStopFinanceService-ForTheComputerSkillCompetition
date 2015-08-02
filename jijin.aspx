<%@ page language="VB" autoeventwireup="false" inherits="jijin, App_Web_wkrquhl1" masterpagefile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>基金</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    
        <br />
        <center>
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Checked="True" Text="货币型" />
        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Checked="True" Text="股票型" />
        <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" Checked="True" Text="混合型" />
        <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" Checked="True" Text="债券型" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="2" 
            DataKeyNames="ID" DataSourceID="AccessDataSource1" ForeColor="Black" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="jijinname" HeaderText="基金名字"  />
                <asp:BoundField DataField="field" HeaderText="基金种类" >
                <ItemStyle Width="70px" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="购买链接" >
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("lianjie") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" 
                            NavigateUrl='<%# eval("lianjie") %>' Target="_blank" Text='<%# "即刻购买" %>'></asp:HyperLink>
                    </ItemTemplate>
                    <ItemStyle Width="70px" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="fx" HeaderText="风险系数" SortExpression="fx" >
                <ItemStyle HorizontalAlign="Center" Width="70px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="近七日回报率" SortExpression="hb7d">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("hb7d") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# eval("hb7d")/100 %>'></asp:Label>
                        %
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="近一月回报率" SortExpression="hb1m">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("hb1m") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# eval("hb1m")/100 %>'></asp:Label>
                        %
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="近一年回报率" SortExpression="hb1y">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("hb1y") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# eval("hb1y")/100 %>'></asp:Label>
                        %
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" Width="100px" />
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
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Webdatabase.accdb" SelectCommand="SELECT * FROM [jijin]"></asp:AccessDataSource>
    </center>
    </div>
    </asp:Content>