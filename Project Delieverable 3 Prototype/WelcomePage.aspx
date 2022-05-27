<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="Project_Delieverable_3_Prototype.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Art Station: Welcome</title>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/ArtStationStyleSheet.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;700&display=swap" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
    <%-- Below is the front page of Art Station. The prototype of the website is 
        intended to show off the main functions of the website currently
        and contains 3 webpages, including this page. Currently, you are able to
        access the Welcome Page, Home Page, and Profile Page
        Later server controls may allow users to make profiles and use them to log in
        Create an account, etc.--%>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <%-- Welcome text for the HomePage below --%>
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="welcomeText"><b>Welcome to</b></h1>
                </div>
            </div>
            <%-- Logo --%>
            <div class="row">
                <div class="col-sm-12">
                    <img src="Content/Images/artstationlogo_50.png" class="logo1" />
                </div>
            </div>
            <%-- Row for the search bar. --%>
            <div class="row">
                <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    <asp:TextBox ID="tboxSearchBar" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <%-- Search will automatically take you to the HomePage.aspx, currently --%>
                    <asp:Button ID="buttonSearch" runat="server" class="btn" Text="Search" BackColor="#FE668C" BorderColor="#FE668C" OnClick="buttonSearch_Click" />
                </div>
            </div>
            <%-- Row for the Login, Create an account, and Support --%>
            <div class="row mb-1">
                <div class="col-sm-4 buttonRight">
                    <%-- Login will automatically take you to ProfilePage.aspx --%>
                    <asp:Button ID="btnLogin" runat="server" class="btn" Text="Login" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnLogin_Click" />
                </div>
                <div class="col-sm-4 buttonCenter">
                    <asp:Button ID="btnCreateanAccount" runat="server" class="btn" Text="Create an Account" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnCreateanAccount_Click" />
                </div>
                <div class="col-sm-4 buttonLeft">
                    <asp:Button ID="btnSupport" runat="server" class="btn" Text="Support/Contact Us" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnSupport_Click" />
                </div>
            </div>         
            <div class="row">
                <div class="col-sm-12 companyInfo">
                    <h2>At Art Station, it is easy to find and support your favorite artists.
                        <br />
                        Browse our community for artworks you will enjoy!</h2>
                </div>
            </div>
             <%-- Company Information located below --%>
            <div class="row">
                <div class="col-sm-12 companyInfo">
                    <h3>Copyright 2021 || 123 Somewhere ST, San Francisco CA 94121 || 415-786-1432</h3>
                </div>
            </div>
             <%-- Navigation Buttons --%>
            <div class="row">
                <div class="col-sm-12 mb-3 text-center">
                    <asp:Label ID="lblQuickNavigation" runat="server" Text="Quick Navigation Buttons"></asp:Label>
                    <asp:Button ID="btnWelcome" runat="server" class="btn" Text="Welcome" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnWelcome_Click" CausesValidation="False" />
                    <asp:Button ID="btnHome" runat="server" class="btn" Text="Home" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnHome_Click" CausesValidation="False" />
                    <asp:Button ID="btnMyProfileNav" runat="server" class="btn" Text="My Profile" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnMyProfileNav_Click" CausesValidation="False" />
                    <asp:Button ID="btnSupport2" runat="server" class="btn" Text="Support/Contact Us" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnSupport_Click" CausesValidation="False" />
                    <asp:Button ID="btnUpdateProfileSettings" class="btn" runat="server" Text="Update Profile Settings" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnUpdateProfileSettings_Click" CausesValidation="False" />
                    <asp:Button ID="btnLogin2" runat="server" class="btn" Text="Login" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnLogin_Click" CausesValidation="False" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
