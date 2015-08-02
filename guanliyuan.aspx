<%@ page title="" language="VB" masterpagefile="~/MasterPage2.master" autoeventwireup="false" inherits="guanliyuan2, App_Web_aj2clbvh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <div>
    
        管理员<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="20px" Width="159px">
            <asp:ListItem Value="0">用户管理</asp:ListItem>
            <asp:ListItem Value="1">存款信息管理</asp:ListItem>
            <asp:ListItem Value="2">保险信息管理</asp:ListItem>
            <asp:ListItem Value="3">基金信息管理</asp:ListItem>
            <asp:ListItem Value="4">科普知识页管理</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button5" runat="server" Text="退出登录" />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="uname" DataSourceID="AccessDataSource1" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" EditText="设置管理员" HeaderText="操作" 
                             ShowEditButton="True" />
                         <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" onclientclick="return confirm('确定要删除吗?');" 
                                    Text="删除" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="uname" HeaderText="用户名" ReadOnly="True" 
                            SortExpression="uname" />
                        <asp:BoundField DataField="sex" HeaderText="性别" SortExpression="sex" 
                            ReadOnly="True" />
                        <asp:BoundField DataField="email" HeaderText="邮箱" ReadOnly="True" 
                            SortExpression="email" />
                        <asp:BoundField DataField="hastaketest" HeaderText="是否完成问卷" ReadOnly="True" 
                            SortExpression="hastaketest" />
                        <asp:CheckBoxField DataField="guanliyuan" HeaderText="是否是管理员" 
                            SortExpression="guanliyuan" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="ID" DataSourceID="AccessDataSource2" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" CancelText="取消" DeleteText="删除" EditText="编辑" HeaderText="操作" InsertText="插入" NewText="新建" SelectText="选择"  ShowEditButton="True" ShowHeader="True" ShowSelectButton="True" UpdateText="更新" />
                         <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" onclientclick="return confirm('确定要删除吗?');" 
                                    Text="删除" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="bank" HeaderText="存款银行" SortExpression="bank" />
                        <asp:BoundField DataField="time" HeaderText="存款时限" SortExpression="time" />
                        <asp:BoundField DataField="return" HeaderText="收益率" SortExpression="return" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                    DataFile="~/App_Data/Webdatabase.accdb" 
                    DeleteCommand="DELETE FROM [cunkuan] WHERE [ID] = ?" 
                    InsertCommand="INSERT INTO [cunkuan] ([ID], [bank], [time], [return]) VALUES (?, ?, ?, ?)" 
                    SelectCommand="SELECT * FROM [cunkuan]" 
                    UpdateCommand="UPDATE [cunkuan] SET [bank] = ?, [time] = ?, [return] = ? WHERE [ID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="bank" Type="String" />
                        <asp:Parameter Name="time" Type="Int32" />
                        <asp:Parameter Name="return" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="bank" Type="String" />
                        <asp:Parameter Name="time" Type="Int32" />
                        <asp:Parameter Name="return" Type="Int32" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:AccessDataSource>
                <asp:Button ID="Button2" runat="server" Text="添加存款" />
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="ID" DataSourceID="AccessDataSource2" 
                    ForeColor="#333333" GridLines="None" Height="50px" Visible="False" 
                    Width="125px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="bank" HeaderText="存款行" SortExpression="bank" />
                        <asp:BoundField DataField="time" HeaderText="存款时限" SortExpression="time" />
                        <asp:BoundField DataField="return" HeaderText="回报率" SortExpression="return" />
                        <asp:CommandField ButtonType="Button" CancelText="取消" EditText="编辑" InsertText="插入" NewText="添加" SelectText="选择" ShowInsertButton="True" UpdateText="更新" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="ID" DataSourceID="AccessDataSource4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" CancelText="取消" DeleteText="删除" 
                            EditText="编辑" InsertText="插入" NewText="新建" SelectText="选择"  
                            ShowEditButton="True" UpdateText="更新" />
                         <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" onclientclick="return confirm('确定要删除吗?');" 
                                    Text="删除" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="baoxianname" HeaderText="保险名" SortExpression="baoxianname" />
                        <asp:BoundField DataField="type" HeaderText="险种" SortExpression="type" />
                        <asp:HyperLinkField DataNavigateUrlFields="lianjie" DataTextField="lianjie" 
                            HeaderText="购买链接" Target="_blank" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource4" runat="server" 
                    DataFile="~/App_Data/Webdatabase.accdb" 
                    DeleteCommand="DELETE FROM [baoxian] WHERE [ID] = ?" 
                    InsertCommand="INSERT INTO [baoxian] ([ID], [baoxianname], [type], [lianjie]) VALUES (?, ?, ?, ?)" 
                    SelectCommand="SELECT * FROM [baoxian]" 
                    UpdateCommand="UPDATE [baoxian] SET [baoxianname] = ?, [type] = ?, [lianjie] = ? WHERE [ID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="baoxianname" Type="String" />
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="lianjie" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="baoxianname" Type="String" />
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="lianjie" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:AccessDataSource>
                <asp:Button ID="Button3" runat="server" Text="添加保险" />
                <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="ID" DataSourceID="AccessDataSource4" 
                    ForeColor="#333333" GridLines="None" Height="50px" Visible="False" 
                    Width="125px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="baoxianname" HeaderText="保险产品名" SortExpression="baoxianname" />
                        <asp:BoundField DataField="type" HeaderText="险种" SortExpression="type" />
                        <asp:BoundField DataField="lianjie" HeaderText="购买链接" SortExpression="lianjie" />
                        <asp:CommandField ButtonType="Button" CancelText="取消" EditText="编辑" InsertText="插入" NewText="添加" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="ID" DataSourceID="AccessDataSource5" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" CancelText="取消" DeleteText="删除" 
                            EditText="编辑" InsertText="插入" NewText="新建" SelectText="选择"  
                            ShowEditButton="True" UpdateText="更新" />
                         <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" onclientclick="return confirm('确定要删除吗?');" 
                                    Text="删除" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="jijinname" HeaderText="基金名" SortExpression="jijinname" />
                        <asp:BoundField DataField="field" HeaderText="基金类型" SortExpression="field" />
                        <asp:HyperLinkField DataNavigateUrlFields="lianjie" DataTextField="lianjie" 
                            HeaderText="购买链接" Target="_blank" />
                        <asp:BoundField DataField="fx" HeaderText="风险指数" SortExpression="fx" />
                        <asp:BoundField DataField="hb7d" HeaderText="近七日回报" SortExpression="hb7d" />
                        <asp:BoundField DataField="hb1m" HeaderText="近一月回报" SortExpression="hb1m" />
                        <asp:BoundField DataField="hb1y" HeaderText="近一年回报" SortExpression="hb1y" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource5" runat="server" 
                    DataFile="~/App_Data/Webdatabase.accdb" 
                    DeleteCommand="DELETE FROM [jijin] WHERE [ID] = ?" 
                    InsertCommand="INSERT INTO [jijin] ([ID], [jijinname], [field], [lianjie], [fx], [hb7d], [hb1m], [hb1y]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
                    SelectCommand="SELECT * FROM [jijin]" 
                    UpdateCommand="UPDATE [jijin] SET [jijinname] = ?, [field] = ?, [lianjie] = ?, [fx] = ?, [hb7d] = ?, [hb1m] = ?, [hb1y] = ? WHERE [ID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="jijinname" Type="String" />
                        <asp:Parameter Name="field" Type="String" />
                        <asp:Parameter Name="lianjie" Type="String" />
                        <asp:Parameter Name="fx" Type="Int32" />
                        <asp:Parameter Name="hb7d" Type="Int32" />
                        <asp:Parameter Name="hb1m" Type="Int32" />
                        <asp:Parameter Name="hb1y" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="jijinname" Type="String" />
                        <asp:Parameter Name="field" Type="String" />
                        <asp:Parameter Name="lianjie" Type="String" />
                        <asp:Parameter Name="fx" Type="Int32" />
                        <asp:Parameter Name="hb7d" Type="Int32" />
                        <asp:Parameter Name="hb1m" Type="Int32" />
                        <asp:Parameter Name="hb1y" Type="Int32" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:AccessDataSource>
                <asp:Button ID="Button4" runat="server" Text="添加基金" />
                <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="ID" DataSourceID="AccessDataSource5" 
                    ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="jijinname" HeaderText="基金产品名" SortExpression="jijinname" />
                        <asp:BoundField DataField="field" HeaderText="基金种类" SortExpression="field" />
                        <asp:BoundField DataField="lianjie" HeaderText="购买链接" SortExpression="lianjie" />
                        <asp:BoundField DataField="fx" HeaderText="风险系数" SortExpression="fx" />
                        <asp:BoundField DataField="hb7d" HeaderText="近七日回报率" SortExpression="hb7d" />
                        <asp:BoundField DataField="hb1m" HeaderText="近一月回报率" SortExpression="hb1m" />
                        <asp:BoundField DataField="hb1y" HeaderText="近一年回报率" SortExpression="hb1y" />
                        <asp:CommandField ButtonType="Button" CancelText="取消" EditText="编辑" InsertText="插入" NewText="添加" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                
            </asp:View>
            <asp:View ID="View5" runat="server">
                &nbsp;选择查看
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="1">股票</asp:ListItem>
                    <asp:ListItem Value="2">基金</asp:ListItem>
                    <asp:ListItem Value="3">保险</asp:ListItem>
                </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="g.aspx" target="_blank" >添加新的网页</a>
                 
                <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="ID" DataSourceID="AccessDataSource3" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" onclientclick="return confirm('确定要删除吗?');" 
                                    Text="删除" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:HyperLinkField DataNavigateUrlFields="url" 
                            DataNavigateUrlFormatString="~{0}" DataTextField="title" HeaderText="标题" 
                            Target="_blank" />
                        <asp:BoundField DataField="times" HeaderText="浏览次数" SortExpression="times" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
                
                <br />
                <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                    DataFile="~/App_Data/Webdatabase.accdb" 
                    DeleteCommand="DELETE FROM [article] WHERE [ID] = ?" 
                    InsertCommand="INSERT INTO [article] ([ID], [url], [title], [times], [n]) VALUES (?, ?, ?, ?, ?)" 
                    SelectCommand="SELECT * FROM [article] WHERE ([n] = ?)" 
                    UpdateCommand="UPDATE [article] SET [url] = ?, [title] = ?, [times] = ?, [n] = ? WHERE [ID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="url" Type="String" />
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter Name="times" Type="Int32" />
                        <asp:Parameter Name="n" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="n" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="url" Type="String" />
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter Name="times" Type="Int32" />
                        <asp:Parameter Name="n" Type="Int32" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:AccessDataSource>
                </asp:View>
        </asp:MultiView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/Webdatabase.accdb" 
            DeleteCommand="DELETE FROM [userofbbs] WHERE [uname] = ?" 
            InsertCommand="INSERT INTO [userofbbs] ([userid], [uname], [pwrd], [sex], [pic], [email], [regist_date], [hastaketest], [guanliyuan]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [userofbbs]" 
            UpdateCommand="UPDATE [userofbbs] SET  [guanliyuan] = ? WHERE [uname] = ?">
            <DeleteParameters>
                <asp:Parameter Name="uname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userid" Type="Int32" />
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="pwrd" Type="String" />
                <asp:Parameter Name="sex" Type="String" />
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="regist_date" Type="DateTime" />
                <asp:Parameter Name="hastaketest" Type="Int32" />
                <asp:Parameter Name="guanliyuan" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
               
                <asp:Parameter Name="guanliyuan" Type="Boolean" />
                <asp:Parameter Name="uname" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
    
    </div>
    
</asp:Content>

