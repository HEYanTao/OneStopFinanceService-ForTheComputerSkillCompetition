<%@ page language="VB" autoeventwireup="false" masterpagefile="~/MasterPage.master" inherits="cunkuan, App_Web_4s32yu4r" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>保险</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
    
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Text="寿险" />
        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Text="财产险" />
        <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" Text="养老险" />
        <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" Text="意外险" />
        <asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="True" Text="医疗险" />
    <div style ="margin-left :300px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="2" DataKeyNames="ID" 
            DataSourceID="AccessDataSource1" ForeColor="Black" GridLines="None" 
            AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" NextPageText="下一页" PreviousPageText="上一页" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="编号" InsertVisible="False" 
                    ReadOnly="True" >
                <ItemStyle Width="40px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="购买链接" >
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("lianjie") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" 
                            NavigateUrl='<%# eval("lianjie") %>' Target="_blank" Text='<%# "即刻购买" %>'></asp:HyperLink>
                    </ItemTemplate>
                    <ItemStyle Width="70px" />
                </asp:TemplateField>
                <asp:BoundField DataField="baoxianname" HeaderText="产品名称"  />
                <asp:BoundField DataField="type" HeaderText="险种"  >
                <ItemStyle Width="60px" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView></div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/Webdatabase.accdb" SelectCommand="SELECT * FROM [baoxian]">
        </asp:AccessDataSource>
    
    </div>
   </asp:Content>