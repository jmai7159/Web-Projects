<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Project_Delieverable_3_Prototype.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Art Station: Home Page</title>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/ArtStationStyleSheet.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;700&display=swap" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <%-- Row contains standard logo and search bar for easy and quick searching. --%>
            <div class="row">
                <div class="col-sm-4 mt-3">
                    <img src="Content/Images/artstationlogo_50_50.png" />
                </div>
                <div class="col-sm-4 mt-3">
                    <asp:TextBox ID="tbSearch" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4 mt-3">
                    <%-- Search button will take you to HomePage.aspx --%>
                    <asp:Button ID="buttonSearch" runat="server" class="btn" Text="Search" BackColor="#FE668C" BorderColor="#FE668C" OnClick="buttonSearch_Click" />
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
            <%-- Button group for accessing different profile functions. --%>
            <div class="row">
                <div class="col-sm-2 mt-3 btn-group-vertical rightImage">
                    <img src="Content/Images/profile_1_20.jpeg" />
                    <%-- My Profile Button will take you to ProfilePage.aspx --%>
                    <asp:Button ID="btnMyProfile" runat="server" CssClass="btn form-control" Text="My Profile" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnMyProfile_Click" />
                    <asp:Button ID="btnAccountSettings" runat="server" CssClass="btn form-control" Text="Settings" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnAccountSettings_Click" />
                    <asp:Button ID="btnFollowing" runat="server" CssClass="btn form-control" Text="Following" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="btnLogout" runat="server" CssClass="btn form-control" Text="Logout" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnLogout_Click" />
                </div>
                <%-- This group of divs will place pictures in the main page of the website. --%>
                <div class="col-sm-2">
                    <img src="Content/Images/art/abin-varghese-woC7_1c_kZQ-unsplash_201x319.jpg" />
                </div>
                <div class="col-sm-2">
                    <img src="Content/Images/art/birmingham-museums-trust-6fv0MEf3FUE-unsplash_201x319.jpg" />
                </div>
                <div class="col-sm-2">
                    <img src="Content/Images/art/birmingham-museums-trust-e0wBK0xJXYQ-unsplash_201x319.jpg" />
                </div>
                <div class="col-sm-2">
                    <img src="Content/Images/art/birmingham-museums-trust-KfRUve5NtO8-unsplash_201x319.jpg" />
                </div>
                <div class="col-sm-2 btn-group-vertical">
                    <%-- Tags will allow users to search specific images with tags assigned to images. --%>
                    <h2>Search Tags</h2>
                    <asp:Button ID="btnTag1" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="btnTag2" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="btnTag3" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="btnTag4" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                </div>
            </div>
            <%-- Section for subscribed artists and more images + tags --%>
            <div class="row">
                <div class="col-sm-2 btn-group-vertical mt-5">
                    <asp:Button ID="subbedArtist1" runat="server" CssClass="btn form-control" Text="Subscribed Artist" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="subbedArtist2" runat="server" CssClass="btn form-control" Text="Subscribed Artist" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="subbedArtist3" runat="server" CssClass="btn form-control" Text="Subscribed Artist" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="subbedArtist4" runat="server" CssClass="btn form-control" Text="Subscribed Artist" BackColor="#FE668C" BorderColor="#FE668C" />
                </div>
                <div class="col-sm-2 mt-5">
                    <img src="Content/Images/art/dim-7-DB7u9kZnzgg-unsplash_201x319.jpg" />
                </div>
                <div class="col-sm-2 mt-5">
                    <img src="Content/Images/art/efe-kurnaz-RnCPiXixooY-unsplash_201x319.jpg" />
                </div>
                <div class="col-sm-2 mt-5">
                    <img src="Content/Images/art/enzo-tommasi-wlxJ4idMTUk-unsplash_201x319.jpg" />
                </div>
                <div class="col-sm-2 mt-5">
                    <img src="Content/Images/art/fuu-j-Lo7venJ_ywM-unsplash_201x319.jpg" />
                </div>
                <div class="col-sm-2 btn-group-vertical">
                    <asp:Button ID="btnTag5" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="btnTag6" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="btnTag7" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="btnTag8" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                </div>
            </div>
            <%-- Section includes random new art thumbnail as well as more art --%>
            <div class="row">
                <div class="col-sm-2 mt-5">
                    <img src="Content/Images/discoverNewArt_35.jpg" class="images" />
                </div>
                <div class="col-sm-2 mt-5">
                    <img src="Content/Images/art/jon-tyson-WB9TRkyrlzk-unsplash_201x319.jpg" />
                </div>
                <div class="col-sm-2 mt-5">
                    <img src="Content/Images/art/matt-moloney-iHZTzCYRxfc-unsplash_201x319.jpg" />
                </div>
                <div class="col-sm-2 mt-5">
                    <img src="Content/Images/art/solen-feyissa-f7lTlxAQGKA-unsplash_201x319.jpg" />
                </div>
                <div class="col-sm-2 mt-5">
                    <img src="Content/Images/art/tamara-menzi-n-vnWQmmVoY-unsplash_201x319.jpg" />
                </div>
                <div class="col-sm-2 btn-group-vertical">
                    <asp:Button ID="Button9" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="Button10" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="Button11" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Button ID="btnTag12" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                </div>
            </div>
            <%-- Navigation bar below is intended to allow users to change pages at will, depending on what tags have been picked. --%>
            <div class="row">
                <div class="col-sm-12 mt-5">
                    <nav class="navbar navbar-expand-sm justify-content-center">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link"><<</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link">1</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link">2</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link">3</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link">4</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link">5</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link">>></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
