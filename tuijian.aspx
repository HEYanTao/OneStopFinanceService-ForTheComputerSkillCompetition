<%@ page language="VB" autoeventwireup="false" inherits="huiyuanshouye, App_Web_igjpifzg" masterpagefile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        #cht{width:300px;height:300px;margin-left:300px;}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type="text/javascript">


        function setCookie(name, value, days) {
            var exp = new Date();
            exp.setTime(exp.getTime() + days * 24 * 60 * 60 * 1000);
            var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
            document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
        }
        function getCookie(name) {
            var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
            if (arr != null) {
                return unescape(arr[2]);
                return null;
            }
        }
        function delCookie(name) {
            var exp = new Date();
            exp.setTime(exp.getTime() - 1);
            var cval = getCookie(name);

            if (cval != null) {

                document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
            }
        }
        function out() {

            if (getCookie("out") != "yes") {

                setCookie("out", "yes", 1); window.onload = function () {
                    window.showModalDialog('mianze.aspx', window, 'center=yes;help=no;status=no;dialogheight:400px;dialogwidth:600px;scroll:yes;depended:no');
                    ;
                } 

            }
        }
        out();
 </script> 


    <div style="text-align: center">
    
        <asp:Button ID="Button4" runat="server" Text="立即测试" />
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        欢迎您<br />
        <table class="style1" 
            style="border-style: none solid none solid; border-width: thin; border-color: #800080">
            <tr>
                <td colspan="3" 
                    style="text-align: center; border-top:solid #800080;border-bottom:solid #800080;">
        <div id="cht">
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
        </asp:Chart>
              </div>
                    <br />
        当前组合风险程度：<asp:Label ID="Label7" runat="server" BorderColor="Red" 
            ForeColor="Red" Text="高风险" Visible="False"></asp:Label>
        <asp:Label ID="Label8" runat="server" ForeColor="#FFCC66" Text="中度风险" 
            Visible="False"></asp:Label>
        <asp:Label ID="Label9" runat="server" ForeColor="#33CC33" Text="低风险" 
            Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" width="300px">
        推荐基金<br />
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Checked="True" Text="货币型" />
        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Checked="True" Text="股票型" />
        <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" Checked="True" Text="混合型" />
        <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" Checked="True" Text="债券型" />
                </td>
                <td style="border-left: thin solid #800080; border-right: thin solid #800080; text-align: center;" 
                    width="300px">
    
        推荐存款<br />
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
                </td>
                <td style="text-align: center" width="300px">
    
        推荐保险<br />
        <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" Text="寿险" />
        <asp:CheckBox ID="CheckBox7" runat="server" AutoPostBack="True" Text="财产险" />
        <asp:CheckBox ID="CheckBox8" runat="server" AutoPostBack="True" Text="养老险" />
        <asp:CheckBox ID="CheckBox9" runat="server" AutoPostBack="True" Text="意外险" />
        <asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="True" Text="医疗险" />
    
                </td>
            </tr>
            <tr>
                <td style="text-align: center; border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #800080;" 
                    width="300px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
                        AutoGenerateColumns="False" CellPadding="2" DataKeyNames="ID" 
                        DataSourceID="AccessDataSource1" ForeColor="Black" GridLines="None" 
                        BorderColor="Tan" BackColor="LightGoldenrodYellow" BorderWidth="1px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="jijinname" HeaderText="基金名字"  />
                <asp:BoundField DataField="field" HeaderText="基金种类"  >
                <ItemStyle Width="70px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="购买链接" >
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("lianjie") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="server" 
                            NavigateUrl='<%# eval("lianjie") %>' Target="_blank" Text='<%# "即刻购买" %>'></asp:HyperLink>
                    </ItemTemplate>
                    <ItemStyle Width="70px" />
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
                </td>
                <td style="border-bottom: medium solid #800080; border-left: thin solid #800080; border-right: thin solid #800080;" 
                    width="300px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div style ="margin-left :50px">
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" 
                        AutoGenerateColumns="False" CellPadding="2" DataKeyNames="ID" 
                        DataSourceID="AccessDataSource2" ForeColor="Black" GridLines="None" 
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="bank" HeaderText="存款行"  />
                <asp:TemplateField HeaderText="存款期限" SortExpression="time">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("time") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# tz1(eval("time")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="回报率" >
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("return") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# eval("return")/100 %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" 
                BorderColor="White" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView></div> 
                </td>
                <td style="text-align: center; border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #800080;" 
                    width="300px">
    
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="2" DataKeyNames="ID" 
            DataSourceID="AccessDataSource3" ForeColor="Black" GridLines="None" 
                        AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                        BorderWidth="1px">
            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" NextPageText="下一页" 
                PreviousPageText="上一页" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="编号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" >
                <ItemStyle Width="40px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="购买链接" >
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("lianjie") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" 
                            NavigateUrl='<%# "http://" & eval("lianjie") %>' Target="_blank" 
                            Text='<%# "立即购买" %>'></asp:HyperLink>
                    </ItemTemplate>
                    <ItemStyle Width="70px" />
                </asp:TemplateField>
                <asp:BoundField DataField="baoxianname" HeaderText="产品名称" 
                     />
                <asp:BoundField DataField="type" HeaderText="险种"  >
                <ItemStyle Width="60px" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Webdatabase.accdb" SelectCommand="SELECT * FROM [jijin]"></asp:AccessDataSource>
    
        <br />
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/Webdatabase.accdb" SelectCommand="SELECT * FROM [cunkuan]"></asp:AccessDataSource>
    
        <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
            DataFile="~/App_Data/Webdatabase.accdb" SelectCommand="SELECT * FROM [baoxian]">
        </asp:AccessDataSource>
    
        <br />
    
    </div>
   </asp:Content>