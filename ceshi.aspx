<%@ page language="VB" autoeventwireup="false" inherits="ceshi, App_Web_wkrquhl1" masterpagefile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <asp:CheckBox ID="CheckBox1" runat="server" Enabled="False" Text="基本信息" />
        <asp:CheckBox ID="CheckBox2" runat="server" Enabled="False" Text="风险承受力测试" />
        <asp:CheckBox ID="CheckBox3" runat="server" Enabled="False" Text="风险偏好测试" />
        <br />
        本测试针对个人投资者的风险承受能力与风险偏好程度进行测试。<br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                
                 <table class="ceshi">
                    <tr><td>
                基本信息：</td></tr> 
                    <tr><td>
                    您最为常用的银行是：<asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
                    <asp:ListItem Value="*">其他</asp:ListItem>
                    <asp:ListItem>工商银行</asp:ListItem>
                    <asp:ListItem>中信银行</asp:ListItem>
                    <asp:ListItem>农业银行</asp:ListItem>
                    <asp:ListItem>建设银行</asp:ListItem>
                    <asp:ListItem>光大银行</asp:ListItem>
                </asp:DropDownList></td>
                </tr>
                <tr><td>
                    您计划的投资年限为：<asp:DropDownList ID="DropDownList2" runat="server">
                      <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                    <asp:ListItem Value="-1">无计划</asp:ListItem>
                    <asp:ListItem Value="0">临时投资</asp:ListItem>
                    <asp:ListItem Value="1">三个月</asp:ListItem>
                    <asp:ListItem Value="2">半年</asp:ListItem>
                    <asp:ListItem Value="3">一年</asp:ListItem>
                    <asp:ListItem Value="4">二年</asp:ListItem>
                    <asp:ListItem Value="5">三年</asp:ListItem>
                    <asp:ListItem Value="6">五年</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td>您对当前经济判断是：<asp:DropDownList ID="DropDownList3" runat="server">
                      <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                    <asp:ListItem Value="*">没有看法</asp:ListItem>
                    <asp:ListItem Value="股票型">国内经济向好</asp:ListItem>
                    <asp:ListItem Value="债券型">国内经济疲软</asp:ListItem>
                    <asp:ListItem Value="混合型">国内经济不好不坏</asp:ListItem>
                </asp:DropDownList>
                </td></tr> 
                    <tr><td>
                <asp:Button ID="Button1" runat="server" Height="23px" Text="完成" Width="164px" />
                        </td></tr></table>
            </asp:View>
           
            <asp:View ID="View2" runat="server">
                <table class="ceshi"><tr><td>风险承受力测试：</td></tr>
                    <tr><td>1）您现在的年龄：<asp:DropDownList ID="DropDownList4" runat="server">
                      <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                        <asp:ListItem Value="1">60周岁以上</asp:ListItem>
                    <asp:ListItem Value="2">46至60周岁</asp:ListItem>
                    <asp:ListItem Value="3">36至45周岁</asp:ListItem>
                    <asp:ListItem Value="4">26至35周岁</asp:ListItem>
                    <asp:ListItem Value="5">25周岁以下</asp:ListItem>
                </asp:DropDownList>
                </td></tr> 
               <tr><td> 2）您的健康状况如何：<asp:DropDownList ID="DropDownList5" runat="server">
                     <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
               
                   <asp:ListItem Value="1">一直都不是很好</asp:ListItem>
                    <asp:ListItem Value="2">有点不好，不过目前没什么问题</asp:ListItem>
                    <asp:ListItem Value="3">现在还可以，但家里有病史</asp:ListItem>
                    <asp:ListItem Value="4">还行，没大毛病</asp:ListItem>
                    <asp:ListItem Value="5">非常好</asp:ListItem>
                </asp:DropDownList></td></tr>
                <tr><td>
                3）是否有过投资股票、基金或债券的经历？<asp:DropDownList ID="DropDownList6" runat="server">
                     <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                     <asp:ListItem Value="1">没有</asp:ListItem>
                    <asp:ListItem Value="1">有，少于3年</asp:ListItem>
                    <asp:ListItem Value="3">有，3~5年</asp:ListItem>
                    <asp:ListItem Value="4">有，超过5年</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td>4)您目前投资的主要目的是？<asp:DropDownList ID="DropDownList7" runat="server">
                      <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                    <asp:ListItem Value="1">确保资产的安全性，同时获得固定收益</asp:ListItem>
                    <asp:ListItem Value="2">希望投资能获得一定的增值，同时获得波动程度的年回报</asp:ListItem>
                    <asp:ListItem Value="3">倾向于长期的增长，较少关心短期波动</asp:ListItem>
                    <asp:ListItem Value="4">只关心长期的高回报，对短期波动不在乎</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td>5）您投资的总额占您个人（或家庭）总资产（含房产等）的<asp:DropDownList ID="DropDownList8" runat="server">
                      <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                    <asp:ListItem Value="1">低于10%或高于70%</asp:ListItem>
                    <asp:ListItem Value="2">10%-25%或60%-70%</asp:ListItem>
                    <asp:ListItem Value="3">25%-35%或55%-60%</asp:ListItem>
                    <asp:ListItem Value="4">35%-55%</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td>6）在您投资60天后，价格下跌20%。假设所有基本面均未改变，您会怎么做?<asp:DropDownList ID="DropDownList9" runat="server">
                      <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                    <asp:ListItem Value="1">为避免更大的担忧，全部卖掉试试其他的</asp:ListItem>
                    <asp:ListItem Value="2">卖掉一部分，其余等着看看</asp:ListItem>
                    <asp:ListItem Value="3">什么也不做，静等收回投资</asp:ListItem>
                    <asp:ListItem Value="4">再买入。它曾是好的投资，现在是便宜的好投资</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td>7）您有没有想过如果有一天您的财务状况发生很大的变化,比如说突然有一笔很大的开支,这笔开支可能会动用您10%的个人资产或甚至更多<asp:DropDownList ID="DropDownList10" runat="server">
                     <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                     <asp:ListItem Value="1">没想过，这根本不可能发生</asp:ListItem>
                    <asp:ListItem Value="2">经常想，我很担心，但又有什么办法呢</asp:ListItem>
                    <asp:ListItem Value="3">想过一两次，感觉挺可怕的</asp:ListItem>
                    <asp:ListItem Value="4">曾经有想过一两次，但无所谓</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td>8)您的财政状况怎么样<asp:DropDownList ID="DropDownList11" runat="server">
                <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                          <asp:ListItem Value="1">时常需要借钱</asp:ListItem>
                    <asp:ListItem Value="2">刚刚好，需要精打细算</asp:ListItem>
                    <asp:ListItem Value="3">还可以，一切井然有序</asp:ListItem>
                    <asp:ListItem Value="4">非常好，我的购买没有限制</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td>9）您的退休后打算是什么<asp:DropDownList ID="DropDownList12" runat="server">
                <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                          <asp:ListItem Value="1">节俭的生活，避免把钱花光</asp:ListItem>
                    <asp:ListItem Value="2">继续工作，我的养老金可能不够</asp:ListItem>
                    <asp:ListItem Value="3">享受人生，周游世界</asp:ListItem>
                    <asp:ListItem Value="4">努力花钱，过上比工作时更好的生活</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td>10)您计划的投资年限为：<asp:DropDownList ID="DropDownList16" runat="server">
                <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                          <asp:ListItem Value="1">一年</asp:ListItem>
                    <asp:ListItem Value="2">半年</asp:ListItem>
                    <asp:ListItem Value="3">三年</asp:ListItem>
                    <asp:ListItem Value="4">二年</asp:ListItem>
                    <asp:ListItem Value="5">五年</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td><asp:Button ID="Button3" runat="server" Text="完成" /></td></tr>
            </table>   
            </asp:View>
            <asp:View ID="View3" runat="server">
                <table class="ceshi">
                    <tr><td>
                风险偏好测试：</td></tr> <tr><td>1）风险投资对于您而言：<asp:DropDownList ID="DropDownList13" runat="server">
                <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                          <asp:ListItem Value="1">我觉得很危险</asp:ListItem>
                    <asp:ListItem Value="2">可以尝试一下</asp:ListItem>
                    <asp:ListItem Value="3">比较感兴趣</asp:ListItem>
                    <asp:ListItem Value="4">非常感兴趣</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td>2）您的亲友一般如何评价您<asp:DropDownList ID="DropDownList14" runat="server">
                <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                          <asp:ListItem Value="1">是一个从不冒险的人</asp:ListItem>
                    <asp:ListItem Value="2">是一个小心谨慎的人</asp:ListItem>
                    <asp:ListItem Value="3">在仔细考虑后，可以接受风险</asp:ListItem>
                    <asp:ListItem Value="4">是一个喜欢冒险的人</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td>3）假设您将得到一笔奖金，你会希望是<asp:DropDownList ID="DropDownList15" runat="server">
                <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                          <asp:ListItem Value="1">立即拿到1万现金</asp:ListItem>
                    <asp:ListItem Value="2">50%几率赢得五万</asp:ListItem>
                    <asp:ListItem Value="3">30%几率赢得十万</asp:ListItem>
                    <asp:ListItem Value="4">5%几率赢得一百万</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td>4)假如您得到一笔25万元的意外之财，您将<asp:DropDownList ID="DropDownList17" runat="server">
                <asp:ListItem Selected="True" Value="100"> --请选择--</asp:ListItem>
              
                          <asp:ListItem Value="1">存入银行</asp:ListItem>
                    <asp:ListItem Value="2">购买债券</asp:ListItem>
                    <asp:ListItem Value="3">投资股市</asp:ListItem>
                    <asp:ListItem Value="4">投入到生意中去</asp:ListItem>
                </asp:DropDownList>
                </td></tr>
                <tr><td><asp:Button ID="Button2" runat="server" Text="完成" Width="163px" /></td></tr>
            </table></asp:View>
            <asp:View ID="View4" runat="server">
                <table class="ceshi"><tr><td>您的风险承受能力为：</td></tr>
                  <tr><td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button4" runat="server" Text="不可能，我要重做" /></td></tr>
                <tr><td>您的风险偏好类型为：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button5" runat="server" Text="不可能，我要重做" />
                </td></tr><tr><td>按照保险起见原则，本网站将以您承受能力与偏好类型中更保守的那项为准为您展开推荐 </td></tr>
                <tr><td><asp:Button ID="Button6" runat="server" Text="完成测试，提交" /></td></tr>
            </table></asp:View>
        </asp:MultiView>
    </div>
    </asp:Content>
