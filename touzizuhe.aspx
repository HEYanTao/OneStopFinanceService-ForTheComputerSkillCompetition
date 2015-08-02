<%@ page title="" language="VB" masterpagefile="~/MasterPage2.master" autoeventwireup="false" inherits="touzizuhe, App_Web_pngtdo4l" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
            border: 3px solid #FF9900;
        }
        .auto-style2
        {
            width: 294px;
        }
        .auto-style3
        {
            height: 22px;
        }
        .auto-style4
        {
            width: 294px;
            height: 22px;
        }
        .auto-style5
        {
            width: 220px;
        }
        .auto-style6
        {
            height: 22px;
            width: 220px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1" style="border: thin solid #FFCC00">
        <tr>
            <td colspan="2">
        <asp:Chart ID="Chart1" runat="server">
            <Series>
                <asp:Series ChartType="Pie" Name="Series1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1" AlignmentOrientation="All">
                    <Position Height="94" Width="94" X="3" Y="3" />
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart></td> 
        <td colspan="2"><asp:Chart ID="Chart2" runat="server" Height="223px" Width="241px">
            <Series>
                <asp:Series ChartType="Point" Name="Series1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1" AlignmentOrientation="All">
                    <AxisY Title="风险系数">
                    </AxisY>
                    <AxisX Title="收益率">
                    </AxisX>
                    <Position Height="94" Width="94" X="3" Y="3" />
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Name="风险收益对比">
                </asp:Title>
            </Titles>
        </asp:Chart></td>
              <td  >  <asp:ListBox ID="ListBox1" runat="server" Height="245px" Width="175px">
                    <asp:ListItem>当前持仓：</asp:ListItem>
                </asp:ListBox>
              </td>
            <td  valign="middle" style="vertical-align:middle">
                <table><tr><td>投资规模：</td><td><asp:Label ID="Label6" runat="server" Text="Label" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
                元</td></tr>
                <tr><td>组合收益率：</td><td><asp:Label ID="Label4" runat="server" Text="Label" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                %</td></tr>
               <tr><td> 组合风险：</td><td>
                <asp:Label ID="Label5" runat="server" Text="Label" Font-Size="X-Large" ForeColor="#00CC00"></asp:Label>
                </td></tr>
                <tr><td><asp:Button ID="Button1" runat="server" Text="目标收益60%" />
                </td><td>
                <asp:Button ID="Button2" runat="server" Text="目标风险2.0" />
                </td>
</tr>
                </table>
                <asp:Button ID="Button3" runat="server" Height="20px" Text="清空当前组合" Width="215px" />
            </td>
        </tr>
        
        <tr>
            <td style="width:33%;justify-content:center" colspan="2"align="center" >
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" Height="200px" CaptionAlign="Top" Width="280px" Caption="保本收益" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="jijinname" HeaderText="基金名字" SortExpression="jijinname" />
                        <asp:BoundField DataField="hb1y" HeaderText="收益率" SortExpression="hb1y" />
                        <asp:BoundField DataField="fx" HeaderText="风险" SortExpression="fx" />
                        <asp:ButtonField ButtonType="Button" CommandName="jia" Text="+" />
                        <asp:ButtonField ButtonType="Button" CommandName="jian" Text="-" />
                        <asp:ButtonField ButtonType="Button" CommandName="duibi" Text="对比" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Webdatabase.accdb" SelectCommand="SELECT [jijinname], [hb1y], [fx], [lianjie] FROM [jijin] WHERE ([fx] = ?) ORDER BY [hb7d] DESC">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="fx" Type="Int32" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
            <td class="auto-style2" style="text-align:center;width:33%" colspan="2">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource2" ForeColor="#333333" GridLines="None" Height="200px" CaptionAlign="Top" Width="280px" Caption="稳健收益">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="jijinname" HeaderText="基金名字" SortExpression="jijinname">
                        <ItemStyle Width="90px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="hb1y" HeaderText="收益率" SortExpression="hb1y" />
                        <asp:BoundField DataField="fx" HeaderText="风险" SortExpression="fx" />
                        <asp:ButtonField ButtonType="Button" CommandName="jia" Text="+" />
                        <asp:ButtonField ButtonType="Button" CommandName="jian" Text="-" />
                        <asp:ButtonField ButtonType="Button" CommandName="duibi" Text="对比" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/Webdatabase.accdb" SelectCommand="SELECT [jijinname], [lianjie], [fx], [hb1y] FROM [jijin] WHERE ([fx] = ?) ORDER BY [hb1y] DESC">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="3" Name="fx" Type="Int32" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
            <td class="auto-style5" style="text-align:center;width:33%" colspan="2">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource4" ForeColor="#333333" GridLines="None" Height="200px" CaptionAlign="Top" Width="280px" Caption="收益为王">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="jijinname" HeaderText="基金名字" SortExpression="jijinname">
                        <ItemStyle Width="90px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="hb1y" HeaderText="收益率" SortExpression="hb1y" />
                        <asp:BoundField DataField="fx" HeaderText="风险" SortExpression="fx" />
                        <asp:ButtonField ButtonType="Button" CommandName="jia" Text="+" />
                        <asp:ButtonField ButtonType="Button" CommandName="jian" Text="-" />
                        <asp:ButtonField ButtonType="Button" CommandName="duibi" Text="对比" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource4" runat="server" DataFile="~/App_Data/Webdatabase.accdb" SelectCommand="SELECT [jijinname], [lianjie], [fx], [hb1y] FROM [jijin] WHERE ([fx] &gt;= ?) ORDER BY [hb1y] DESC">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="4" Name="fx" Type="Int32" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

