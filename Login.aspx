<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PracticalAssignment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script src="https://www.google.com/recaptcha/api.js?render="></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Login Page<br />
            <br />
            Email:<br />
            <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
            <br />
            <br />
            Password:<br />
            <asp:TextBox ID="tb_password" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" onclick="Login_btn_Submit_Click"/>
            &nbsp;<asp:Button ID="Button2" runat="server" Text="Register An Account" onclick="Go_reg_btn" />
            <br />
            <br />
            <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response" />
            <asp:Label ID="lblMessage" runat="server" EnableViewState="false">Error Message</asp:Label>
            <asp:Label ID="lbl_gScore" runat="server" EnableViewState="false">JSON Response</asp:Label>
        </div>
    </form>
    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute('', { action: 'Login' }).then(function (token) {
                document.getElementById("g-recaptcha-response").value = token;
            });
        });
    </script>
</body>
</html>
