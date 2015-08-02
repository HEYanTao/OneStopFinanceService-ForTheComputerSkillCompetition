<%@ page language="VB" autoeventwireup="false" inherits="chat_room, App_Web_tm3jkjy4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BBS论坛</title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <br />
    <iframe src="communication.aspx" id="iframe1" style="width:578px; height: 246px;"></iframe>
        <br />
    <table>
     <tr>
    <td align="left">
        <asp:ImageButton ID="ImageButton2" runat="server" Height="23px" 
            ImageAlign="AbsMiddle" ImageUrl="~/btn_Img/2.PNG" Width="30px" tooltip="选择字体"/>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/btn_Img/1.PNG" 
            tooltip="选择表情" Height="23px" ImageAlign="AbsMiddle" Width="30px" />
         </td>
    </tr>
    <tr>
    <td colspan="2">
        <asp:TextBox ID="input" runat="server" BorderColor="#00FF99" BorderWidth="1px" 
            style="width:500px;height:100px;" TextMode="MultiLine"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="left">
        <asp:Button ID="submit" runat="server" Text="发送" />
        <asp:Button ID="clr" runat="server" Text="清空" /></td>
    </tr>
    </table>
    <asp:MultiView ID="mview1" runat="server">
    <asp:View ID="v1" runat="server">
    <table>
        <tr>
        <td>字体<asp:DropDownList ID="zt" runat="server" style="width:100px;" >
        <asp:ListItem Text="宋体" Value="宋体"></asp:ListItem>
        <asp:ListItem Text="微软雅黑" Value="微软雅黑"></asp:ListItem>
        <asp:ListItem Text="楷体" Value="楷体"></asp:ListItem>
        <asp:ListItem Text="黑体" Value="黑体"></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>字体大小<asp:DropDownList ID="fsize" runat="server" style="width:50px;" >
        <asp:listitem Text="14px" ></asp:listitem>
        <asp:listitem Text="16px" ></asp:listitem>
        <asp:listitem Text="18px" ></asp:listitem>
        <asp:listitem Text="20px" ></asp:listitem>
        <asp:listitem Text="22px" ></asp:listitem>
            </asp:DropDownList>
        </td>
        <td>
            字体颜色<asp:DropDownList ID="fcolor" runat="server" style="width:60px;" >
            <asp:listitem Text="黑色" Value="#000000"></asp:listitem>
            <asp:listitem Text="黄色" Value="#FFFF00"></asp:listitem>
            <asp:listitem Text="闪光绿" Value="#00FF00"></asp:listitem>
            <asp:listitem Text="绿色" Value="#00FF7F"></asp:listitem>
            <asp:listitem Text="青色" Value="#00FFFF"></asp:listitem>
            <asp:listitem Text="深天蓝" Value="#00BFFF"></asp:listitem>
            <asp:listitem Text="灰色" Value="#708090"></asp:listitem>
            <asp:listitem Text="纯蓝" Value="#0000FF"></asp:listitem>
            <asp:listitem Text="靛青" Value="#4B0082"></asp:listitem>
            <asp:listitem Text="紫色" Value="#800080"></asp:listitem>
            <asp:listitem Text="深红" Value="#DC143C"></asp:listitem>
            <asp:listitem Text="粉红" Value="#FFC0CB"></asp:listitem>
            </asp:DropDownList>
            </td>
        </tr>
        </table>
    </asp:View>
    <asp:View ID="v2" runat="server">
    <asp:Label ID="pic" runat="server" Text=""></asp:Label>
            <asp:RadioButtonList ID="rd1" runat="server" RepeatColumns ="7" RepeatDirection ="Horizontal" >
            </asp:RadioButtonList>
    </asp:View>
    </asp:MultiView>
    </center>
    </div>
    </form>
</body>
</html>
