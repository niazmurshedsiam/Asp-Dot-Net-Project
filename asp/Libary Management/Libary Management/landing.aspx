<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="landing.aspx.cs" Inherits="Libary_Management.landing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Button1 {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('Image/student-4369850_1920.jpg'); height: 842px;">
    
         <div style="height: 85px; background-color:black;" >
                  &nbsp;<asp:Button ID="Button1" runat="server" PostBackUrl="~/User.aspx" Text="User" Height="80px" Width="177px" BackColor="#66FF66" BorderColor="#CC66FF" BorderStyle="Double" BorderWidth="3px" Font-Bold="True" Font-Size="Medium" ForeColor="#FF9900" />      
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/Employee.aspx" Text="Employee" Height="80px" Width="177px" BackColor="#00CCFF" BorderColor="#0066FF" BorderStyle="Double" BorderWidth="3px" Font-Bold="True" Font-Size="Medium" ForeColor="Red" />        <asp:Button ID="Button3" runat="server" PostBackUrl="~/Book.aspx" Text="Book" Height="80px" Width="177px" BackColor="#996633" BorderColor="#6600CC" BorderStyle="Double" BorderWidth="3px" Font-Bold="True" Font-Size="Medium" ForeColor="#993366" />        <asp:Button ID="Button4" runat="server" PostBackUrl="~/Taking_Book.aspx" Text="Take Book" Height="80px" Width="177px" BackColor="#FFFF66" BorderColor="Red" BorderStyle="Double" BorderWidth="3px" Font-Bold="True" Font-Size="Medium" />        <asp:Button ID="Button5" runat="server" PostBackUrl="~/Return_Book.aspx" Text="Return Book" Height="80px" Width="177px" BackColor="#66FFFF" BorderColor="#993366" BorderWidth="3px" Font-Bold="True" Font-Size="Medium" />
        </div>

        
        <br />
        <br />
        <br />

        
    </div>
    </form>
</body>
</html>
