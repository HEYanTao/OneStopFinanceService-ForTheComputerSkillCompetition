<%@ WebHandler Language="VB" Class="verify_code" %>

Imports System
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.Drawing.Imaging
Imports System.Drawing.Text
Imports System.Web
Imports System.Web.SessionState
Imports System.Web.Configuration

Public Class verify_code : Implements IHttpHandler, IRequiresSessionState
   
    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        '定义图片大小
        Dim bitMapImage As New Bitmap(80, 24)
        Dim verity_code As String

        '生成图片
        DisturbBitmap(bitMapImage)
        
        Dim graphicImage As Graphics = Graphics.FromImage(bitMapImage)

        graphicImage.SmoothingMode = SmoothingMode.HighSpeed
        
        '指定字体、大小、风格
        Dim fontfamily As New FontFamily("Consolas")
        Dim font As New Font(fontfamily, 20, FontStyle.Regular, GraphicsUnit.Pixel)
        
        '生成六位随机字符，使用GetRandomint为生成一个六位随机数字
        verity_code = GetRanChar(6)
        
        '将随机字符写到图片中
        graphicImage.DrawString(verity_code, font, Brushes.Green, New Point(1, 1))
        
        '在外围画一个边框
        graphicImage.DrawRectangle(New Pen(Color.Green, 0), 0, 0, bitMapImage.Width - 1, bitMapImage.Height - 1)

        '输出格式为JPG文件
        context.Response.ContentType = "image/jpeg"
        
        '将生成的验证码写到Session中，供程序判断
        context.Session("verify_code") = verity_code
       
        
        '输出验证码图片
        bitMapImage.Save(context.Response.OutputStream, ImageFormat.Jpeg)
        graphicImage.Dispose()
        bitMapImage.Dispose()
    End Sub
    
    Public Function GetRandomint() As String
        Dim random As New Random()
        Return (random.[Next](100000, 999999).ToString())
    End Function

    Public Function GetRanChar(Optional ByVal vinum As Integer = 6) As String
        Dim Vchar As String
        Dim Vnum As String = ""
        If vinum = 0 Then
            vinum = 6
        End If
        '字符串中没有使用0和O，以及小写的L，以免在验证码上看不清楚
        Vchar = "2,A,B,C,D,1,E,F,G,H,I,4,J,K,L,M,N,6,P,Q,R,S,T,8,U,W,X,Y,7,Z,a,b,c,d,e,5,f,g,h,i,j,k,m,n,p,3,q,r,s,t,9,u,v,w,x,y,z"
        Dim VcArray() As String = Vchar.Split(",")
        Dim random As New Random()
        Dim i As Integer
        Dim iNum As Integer
        For i = 1 To vinum
            iNum = VcArray.Length
            While iNum = VcArray.Length
                iNum = Convert.ToInt32((VcArray.Length) * random.NextDouble())
            End While
            Vnum = Vnum + VcArray(iNum)
        Next
        Return Vnum
    End Function

    Private Sub DisturbBitmap(ByVal map As Bitmap)
        Dim random As New Random()
        '通过随机数生成
        Dim k As Integer = 0
        While k < 80
            Dim j As Integer = 0
            While j < 24
                '在8%的随机位置产生噪点，100就是无噪点，一般不要小于85
                If random.Next(0, 100) <= 92 Then
                    map.SetPixel(k, j, Color.AliceBlue)
                End If
                System.Math.Max(System.Threading.Interlocked.Increment(j), j - 1)
            End While
            System.Math.Max(System.Threading.Interlocked.Increment(k), k - 1)
        End While
    End Sub

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class