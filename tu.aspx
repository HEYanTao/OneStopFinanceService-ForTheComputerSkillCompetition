
<%@ page title="" language="VB" masterpagefile="~/MasterPage2.master" autoeventwireup="false" inherits="Default2, App_Web_aj2clbvh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>理论体系</title>
     <script  type="text/javascript" src="raphael.js"></script>
    <script type="text/javascript" >
        function ab(x, y) {
            x.hover(function () { x.attr({ "rx": "60", "ry": "50" }); y.attr({ "font-size": "20" }); }, function () { x.attr({ "rx": "50", "ry": "40" }); y.attr({ "font-size": "15" }); })
            y.hover(function () { x.attr({ "rx": "60", "ry": "50" }); y.attr({ "font-size": "20" }); }, function () { x.attr({ "rx": "50", "ry": "40" }); y.attr({ "font-size": "15" }); })
                }


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
            <div id="raphael1">
<script>
    var paper = Raphael("raphael1", 1400, 900);//在 id 为 raphael1 元素中创建画布
    //直线
    paper.path("M100 150L170 225")
       .attr({
           'arrow-end': 'classic-wide-long',
           stroke: "#f00",
           "stroke-width": 2
       });
    paper.path("M100 300L170 225")
        .attr({
            'arrow-end': 'classic-wide-long',
            stroke: "#f00",
            "stroke-width": 2
        });
    paper.path("M170 225L250 300")
        .attr({
            'arrow-end': 'classic-wide-long',
            stroke: "yellow",
            "stroke-width": 2
        });
    paper.path("M250 60L250 300")
       .attr({
           'arrow-end': 'classic-wide-long',
           stroke: "yellow",
           "stroke-width": 2
       });
    paper.path("M250 650L250 300")
       .attr({
           'arrow-end': 'classic-wide-long',
           stroke: "yellow",
           "stroke-width": 2
       });
    paper.path("M400 150L250 300")
    paper.path("M400 300L250 300")
    paper.path("M400 450L250 300")
    paper.path("M1000 300L250 300")
    paper.path("M400 150L850 150")
    paper.path("M400 450L850 450")
    paper.path("M1000 300L850 150")
    paper.path("M1000 300L850 450")

    paper.path("M680 650L250 650")
       .attr({
           'arrow-end': 'classic-wide-long',
           stroke: "blue",
           "stroke-width": 2
       });
    paper.path("M680 650L950 650")
      .attr({
          'arrow-end': 'classic-wide-long',
          stroke: "yellow",
          "stroke-width": 2
      });
    paper.path("M400 800L250 650")
      .attr({
          'arrow-end': 'classic-wide-long',
          stroke: "yellow",
          "stroke-width": 2
      });
    paper.path("M400 800L200 800")
      .attr({
          'arrow-end': 'classic-wide-long',
          stroke: "yellow",
          "stroke-width": 2
      });
    paper.path("M20 300L100 300")
      .attr({
          'arrow-end': 'classic-wide-long',
          stroke: "black",
          "stroke-width": 2
      });
    paper.path("M20 300L100 450")
    .attr({
        'arrow-end': 'classic-wide-long',
        stroke: "black",
        "stroke-width": 2
    });
    paper.path("M20 300L100 150")
    .attr({
        'arrow-end': 'classic-wide-long',
        stroke: "black",
        "stroke-width": 2
    });
    var circle = paper.ellipse(100, 150, 50, 40);
    circle.attr({ "fill": "pink", "href": "hgjj.aspx", "target": "blank" });
    var t = paper.text(100, 150, "宏观经济")
    t.attr({ "font-size": "20", "href": "hgjj.aspx", "target": "blank" })
    ab(circle,t)
      
    //货币经济
    var circle2 = paper.ellipse(100, 300, 50, 40);
    circle2.attr({ "fill": "pink", "href": "hbjjx.aspx", "target": "blank" });
    var t1 = paper.text(100, 300, "货币经济学")
    t1.attr({ "font-size": "15", "href": "hbjjx.aspx", "target": "blank" })
    ab(circle2,t1)
    //
    var circle3 = paper.ellipse(100, 450, 50, 40);
    circle3.attr({ "fill": "pink", "href": "gjjr.aspx", "target": "blank" });
    var t2 = paper.text(100, 450, "国际金融学")
    t2.attr({ "font-size": "15", "href": "gjjr.aspx", "target": "blank" })
    ab(circle3 ,t2)
    //
    var circle4 = paper.ellipse(250, 60, 50, 40);
    circle4.attr({ "fill": "red", "href": "wgjjx.aspx", "target": "blank" });
    var t3 = paper.text(250, 60, "微观经济学")
    t3.attr({ "font-size": "15", "href": "wgjjx.aspx", "target": "blank" })
    ab(circle4,t3)
    //
    var circle5 = paper.ellipse(170, 225, 50, 40);
    circle5.attr({ "fill": "pink", "href": "hbyhx.aspx","target": "blank" });
    var t4 = paper.text(170, 225, "货币银行学")
    t4.attr({ "font-size": "15", "href": "hbyhx.aspx", "target": "blank" })
    ab(circle5, t4)
    //
    var c1 = paper.ellipse(250, 300, 50, 40);
    c1.attr({ "fill": "red", "href": "jrscx.aspx", "target": "blank" });
    var g1 = paper.text(250, 300, "金融市场学")
    g1.attr({ "font-size": "15", "href": "jrscx.aspx", "target": "blank" })
    ab(c1, g1)
    var c2 = paper.ellipse(400, 300, 50, 40);
    c2.attr({ "fill": "red", "href": "zqtzx.aspx", "target": "blank" });
    var g2 = paper.text(400, 300, "证券投资学")
    g2.attr({ "font-size": "15", "href": "zqtzx.aspx", "target": "blank" })
    ab(c2, g2)
    //
    var c3 = paper.ellipse(550, 300, 50, 40);
    c3.attr({ "fill": "red", "href": "tzyhx.aspx","target":"blank" });
    var g3 = paper.text(550, 300, "投资银行学")
    g3.attr({ "font-size": "15", "href": "tzyhx.aspx", "target": "blank" })
    ab(c3, g3)
    //
    var c4 = paper.ellipse(700, 300, 50, 40);
    c4.attr({ "fill": "red"});
    var g4 = paper.text(700, 300, "其他实务课")
    g4.attr({ "font-size": "15" })
    ab(c4, g4)
    //
    var c5 = paper.ellipse(850, 300, 50, 40);
    c5.attr({ "fill": "#CCCCFF", "href": "zjh.aspx", "target": "blank" });
    var g5 = paper.text(850, 300, "证监会")
    g5.attr({ "font-size": "15", "href": "zjh.aspx", "target": "blank" })
    ab(c5, g5)
    //
    var c6 = paper.ellipse(1000, 300, 50, 40);
    c6.attr({ "fill": "pink", "href": "zyyhx.aspx", "target": "blank" });
    var g6 = paper.text(1000, 300, "中央银行学")
    g6.attr({ "font-size": "15", "href": "zyyhx.aspx", "target": "blank" })
    ab(c6, g6)
    //
    var c7 = paper.ellipse(850, 150, 50, 40);
    c7.attr({ "fill": "#CCCCFF", "href": "yjh.aspx", "target": "blank" });
    var g7 = paper.text(850, 150, "银监会")
    g7.attr({ "font-size": "15", "href": "yjh.aspx", "target": "blank" })
    ab(c7, g7)
    //
    var c8 = paper.ellipse(400, 150, 50, 40);
    c8.attr({ "fill": "red", "href": "syyh.aspx", "target": "blank" });
    var g8 = paper.text(400, 150, "商业银行")
    g8.attr({ "font-size": "15", "href": "syyh.aspx", "target": "blank" })
    ab(c8, g8)
    //
    var c9 = paper.ellipse(400, 450, 50, 40);
    c9.attr({ "fill": "red", "href": "bs.aspx", "target": "blank" });
    var g9 = paper.text(400, 450, "保险学")
    g9.attr({ "font-size": "15", "href": "bs.aspx", "target": "blank" })
    ab(c9, g9)
    //
    var c10= paper.ellipse(850, 450, 50, 40);
    c10.attr({ "fill": "#CCCCFF", "href": "bjh.aspx", "target": "blank"});
    var g10 = paper.text(850, 450, "保监会")
    g10.attr({ "font-size": "15", "href": "bjh.aspx", "target": "blank" })
    ab(c10, g10)
    //
     var c11 = paper.ellipse(250, 650, 50, 40);
     c11.attr({ "fill": "#99CCCC", "href": "jljjx.aspx", "target": "blank" });
    var g11 = paper.text(250, 650, "计量经济学")
    g11.attr({ "font-size": "15", "href": "jljjx.aspx", "target": "blank" })
    ab(c11, g11)
    //
    var c12 = paper.ellipse(400, 800, 50, 40);
    c12.attr({ "fill": "#99CCCC", "href": "hjx.aspx", "target": "blank"});
    var g12 = paper.text(400, 800, "会计学")
    g12.attr({ "font-size": "15", "href": "hjx.aspx", "target": "blank" })
    ab(c12, g12)
    //
    var c13 = paper.ellipse(200, 800, 50, 40);
    c13.attr({ "fill": "#99CCCC", "href": "cwgl.aspx", "target": "blank" });
    var g13 = paper.text(200, 800, "财务管理")
    g13.attr({ "font-size": "15", "href": "cwgl.aspx", "target": "blank" })
    ab(c13, g13)
    //
    var c14 = paper.ellipse(680, 650, 50, 40);
    c14.attr({ "fill": "#99CCCC", "href": "tjx.aspx", "target": "blank" });
    var g14 = paper.text(680, 650, "统计学")
    g14.attr({ "font-size": "15", "href": "tjx.aspx", "target": "blank" })
    ab(c14, g14)
    //
    var c15 = paper.ellipse(950, 650, 50, 40);
    c15.attr({ "fill": "pink", "href": "czx.aspx", "target": "blank"});
    var g15 = paper.text(950, 650, "财政学")
    g15.attr({ "font-size": "15", "href": "czx.aspx", "target": "blank" })
    ab(c15, g15)
    //
    var l = paper.rect(1200, 50, 100, 80);
    l.attr({ "fill": "pink" ,"opacity": ".5"});
    var m = paper.text(1250, 90, "宏观金融")
    m.attr({ "font-size": "20"})
    var l1 = paper.rect(1200, 200, 100, 80);
    l1.attr({ "fill": "red",  "opacity": ".5" });
    var m1 = paper.text(1250, 240, "微观金融")
    m1.attr({ "font-size": "20" })
    var l2 = paper.rect(1200, 350, 100, 80);
    l2.attr({ "fill": "#99CCCC",  "opacity": ".5" });
    var m2 = paper.text(1250, 390, "实业")
    m2.attr({ "font-size": "20" })
    var l3 = paper.rect(1200, 500, 100, 80);
    l3.attr({ "fill": "#CCCCFF",  "opacity": ".5",  });
    var m3 = paper.text(1250, 540, "监管")
    m3.attr({ "font-size": "20" })

</script></div>
      

  </asp:Content>
