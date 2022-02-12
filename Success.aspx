<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="PracticalAssignment.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><br />
            <br />
            <asp:Label ID="lblMessage" runat="server" EnableViewState="false" /><br />
            <br />
            User Profile<br />
            <br />
            First Name:
            <asp:Label ID="lbl_fn" runat="server" Text="lbl_firstname"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:
            <asp:Label ID="lbl_ln" runat="server" Text="lbl_lastname"></asp:Label>
            <br />
            <br />
            Email:
            <asp:Label ID="lbl_em" runat="server" Text="lbl_email"></asp:Label>
            <br />
            <br />
            Date of Birth:
            <asp:Label ID="lbl_dob" runat="server" Text="lbl_dateofbirth"></asp:Label>
            <br />
            <br />
            Card Number:
            <asp:Label ID="lbl_cn" runat="server" Text="lbl_cardnumber"></asp:Label>
            <br />
            <br />
            Card Expiration Date:
            <asp:Label ID="lbl_ce" runat="server" Text="lbl_cardexpiration"></asp:Label>
            <br />
            <br />
            Card CVV:
            <asp:Label ID="lbl_ccvv" runat="server" Text="lbl_cardcvv"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="LogoutMe" Visible="false" />
        </div>
    </form>
</body>
</html>