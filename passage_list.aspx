<%@ page language="VB" autoeventwireup="false" inherits="passage_list, App_Web_stv03dot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="id" 
            DataSourceID="AccessDataSource1" BackColor="White">
            <AlternatingRowStyle BackColor="#0099FF" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="序号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" >
                <ItemStyle ForeColor="Black" HorizontalAlign="Center" Width="35px" />
                </asp:BoundField>
                <asp:BoundField DataField="title" HeaderText="标题" SortExpression="title" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="type" HeaderText="文章类型" SortExpression="type" >
                <ControlStyle Width="100px" />
                <ItemStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="content" HeaderText="内容" SortExpression="content" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="submitter" HeaderText="提交者" 
                    SortExpression="submitter" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="submit_date" HeaderText="提交日期" 
                    SortExpression="submit_date" >
                <ControlStyle Width="200px" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="readtimes" HeaderText="浏览次数" 
                    SortExpression="readtimes" >
                <ItemStyle HorizontalAlign="Center" Width="70px" />
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="psgdetails.aspx?id={0}" DataTextField="title" 
                    DataTextFormatString="阅读=》" Target="_blank" >
                <ControlStyle Width="60px" Font-Bold="True" Font-Names="楷体" ForeColor="Red" />
                <ItemStyle BackColor="White" ForeColor="Red" Width="40px" />
                </asp:HyperLinkField>
            </Columns>
            <HeaderStyle BackColor="Blue" BorderColor="Blue" Font-Bold="True" 
                ForeColor="White" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/Webdatabase.accdb" 
            SelectCommand="SELECT * FROM [submitted_passage]"></asp:AccessDataSource>
    </center>
    </div>
    </form>
</body>
</html>
