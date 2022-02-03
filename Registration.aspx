<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="PracticalAssignment.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>
    <script type="text/javascript">
        function validate() {
            var str = document.getElementById('<%=tb_password.ClientID %>').value;

            if (str.length < 12) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password length Must be At Least 12 Characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("too_short");
            }

            else if (str.search(/[0-9]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 number";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_number");
            }

            else if (str.search(/[A-Z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password requires atleast 1 Uppercase Character";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_uppercase");
            }

            else if (str.search(/[a-z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password requires atleast 1 lowercase character";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_lowercase");
            }

            else if (str.search(/[^A-Za-z0-9]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password requires atleast 1 special character";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_specialchar");
            }

            document.getElementById("lbl_pwdchecker").innerHTML = "Excellent!"
            document.getElementById("lbl_pwdchecker").style.color = "Blue";
        }
    </script>
</head>
<body>
    <div>
    <form id="form1" runat="server">
        Registration Form<br />
&nbsp;<br />
        Email:
        <br />
        <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
        <br />
        <br />
        First Name:
        <br />
        <asp:TextBox ID="tb_firstname" runat="server"></asp:TextBox>
        <br />
        <br />
        Last Name:
        <br />
        <asp:TextBox ID="tb_lastname" runat="server"></asp:TextBox>
        <br />
        <br />
        Password:
        <br />
        <asp:TextBox ID="tb_password" runat="server" onkeyup="javascript:validate()" TextMode="Password"></asp:TextBox>
        <asp:Label ID="lbl_pwdchecker" runat="server" Text="Password Complexity"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Check Password" OnClick="btn_checkPassword_Click"/>
&nbsp;<asp:Label ID="lbl_pwdchecker2" runat="server" Text="Scoring System"></asp:Label>
        <br />
        <br />
        Date of Birth: 
        <br />
        <asp:TextBox ID="tb_dob" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <br />
        Photo:
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        Credit Card Details
        <br />
        <br />
        Card Number:<br />
        <asp:TextBox ID="tb_ccnumber" runat="server"></asp:TextBox>
        <br />
        <br />
        Expiration Date:<br />
        <asp:TextBox ID="tb_ccexp" runat="server"></asp:TextBox>
        <br />
        <br />
        CVV:<br />
        <asp:TextBox ID="tb_cccvv" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Register" onclick="btn_Submit_Click"/>
        <br />
        <br />
        <br />
        <br />
    </form>
    </div>
</body>
</html>
