<%@ page title="" language="VB" masterpagefile="~/MasterPage2.master" autoeventwireup="false" inherits="afterlogin, App_Web_kbzilqkd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="st3.css" type="text/css" rel="Stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="id1">
    <asp:Label ID="lb1" runat="server" Text="" ></asp:Label>
        <asp:Label ID="lb2" runat="server"></asp:Label>
    </div>
    <div id="id5">
       <ul>
          <li>
          <a href="passage_list.aspx" target="frame1">提交的文章</a>
          </li>
          <li>
          <a href="submit_passage.aspx" target="frame1">提交文章</a>
          </li>
          <li>
          <a href="chat_room.aspx" target="frame1">聊天室</a>
          </li>
          <li>
          <a href="ly.aspx" target="frame1">访客留言</a>
          </li>
       </ul>
    </div>
    <div id="id4">
    <div id="id3" >
    <center>
    <iframe id="frame1" name="frame1" style="width:934px;height:600px;" frameborder="0" src="passage_list.aspx" scrolling ="auto"></iframe>
    </center>
    </div>
    </div>
</asp:Content>