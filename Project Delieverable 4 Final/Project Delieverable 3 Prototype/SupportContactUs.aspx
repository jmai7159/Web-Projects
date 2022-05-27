<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupportContactUs.aspx.cs" Inherits="Project_Delieverable_3_Prototype.SupportContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Support/Contact Us</title>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/MyCSS.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4 mt-3">
                    <img src="Content/Images/artstationlogo_50_50.png" />
                </div>
                <div class="col-sm-4 mt-3">
                    <asp:TextBox ID="tbSearch" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4 mt-3">
                    <%-- Search button will take you to HomePage.aspx --%>
                    <asp:Button ID="buttonSearch" runat="server" class="btn" Text="Search" BackColor="#FE668C" BorderColor="#FE668C" OnClick="buttonSearch_Click" CausesValidation="False" />
                </div>
            </div>
            <%-- Navigation Buttons --%>
            <div class="row">
                <div class="col-sm-12 mb-3 text-center">
                    <asp:Label ID="lblQuickNavigation" runat="server" Text="Quick Navigation Buttons"></asp:Label>
                    <asp:Button ID="btnWelcome" runat="server" class="btn" Text="Welcome" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnWelcome_Click" CausesValidation="False" />
                    <asp:Button ID="btnHome" runat="server" class="btn" Text="Home" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnHome_Click" CausesValidation="False" />
                    <asp:Button ID="btnMyProfileNav" runat="server" class="btn" Text="My Profile" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnMyProfileNav_Click" CausesValidation="False" />
                    <asp:Button ID="btnSupport" runat="server" class="btn" Text="Support/Contact Us" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnSupport_Click" CausesValidation="False" />
                    <asp:Button ID="btnUpdateProfileSettings" class="btn" runat="server" Text="Update Profile Settings" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnUpdateProfileSettings_Click" CausesValidation="False" />
                    <asp:Button ID="btnLogin" runat="server" class="btn" Text="Login" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnLogin_Click" CausesValidation="False" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h1>About Us</h1>
                </div>
            </div>
            <%-- About Us information is located here --%>
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h2>Art Station is a simple image hosting website designed to share <br />
                        online and digital artists' works. The website at Art Station aims <br />
                        to function similarly to other social media websites like Twitter and <br />
                        YouTube. We also aim to provide a service to artists and clients in which <br />
                        you can interact with different artists in different ways such as donations, <br />
                        commissions, and collaborations.
                    </h2>
                </div>
            </div>
            <%-- Support request email located here --%>
            <div class="row">
                <div class="col-sm-12 mt-5 text-center">
                    <h1>Need Support? Email us below.</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">

                </div>
                <div class="col-sm-4 text-center">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                    <asp:TextBox ID="tboxFirstName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="Please enter your name." ControlToValidate="tboxFirstName"></asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-4">

                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">

                </div>
                <div class="col-sm-4 text-center">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                    <asp:TextBox ID="tboxLastName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Please enter your name." ControlToValidate="tboxLastName"></asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-4">

                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">

                </div>
                <div class="col-sm-4 text-center">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="tboxEmail" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Please enter your Email." ControlToValidate="tboxEmail"></asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-4">

                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">

                </div>
                <div class="col-sm-4 text-center">
                    <asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>
                    <asp:TextBox ID="tboxMessage" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Please enter a message" ControlToValidate="tboxMessage"></asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-4">

                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">

                </div>
                <div class="col-sm-4">
                    <asp:Button ID="btnSendMessage" runat="server" CssClass="btn" Text="Send Message" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnSendMessage_Click" />
                    <asp:Label ID="lblSuccess" runat="server" Text="" ForeColor="Lime"></asp:Label>
                    <asp:Label ID="lblFail" runat="server" Text="" ForeColor="#FF3300"></asp:Label>
                </div>
                <div class="col-sm-4">

                </div>
            </div>
        </div>
    </form>
</body>
</html>
