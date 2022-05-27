<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="Project_Delieverable_3_Prototype.ProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Page</title>
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
        <%-- Row contains standard logo and search bar for easy and quick searching. --%>
        <div class="row">
            <div class="col-sm-4 mt-3">
                <img src="Content/Images/artstationlogo_50_50.png" />
            </div>
            <div class="col-sm-4 mt-3">
                <asp:TextBox ID="tbSearch" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4 mt-3">
                <asp:Button ID="buttonSearch" runat="server" class="btn" Text="Search" BackColor="#FE668C" BorderColor="#FE668C" OnClick="buttonSearch_Click" />
            </div>
        </div>
         <%-- Navigation Buttons --%>
            <div class="row">
                <div class="col-sm-12 mb-3 text-center">
                    <asp:Label ID="lblQuickNavigation" runat="server" Text="Quick Navigation Buttons"></asp:Label>
                    <asp:Button ID="btnWelcome" runat="server" class="btn" Text="Welcome" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnWelcome_Click" CausesValidation="False"/>
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
                <asp:Button ID="btnMyProfile" runat="server" CssClass="btn form-control" Text="My Profile" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnMyProfile_Click" />
                <asp:Button ID="btnAccountSettings" runat="server" CssClass="btn form-control" Text="Settings" BackColor="#FE668C" BorderColor="#FE668C" />
                <asp:Button ID="btnFollowing" runat="server" CssClass="btn form-control" Text="Following" BackColor="#FE668C" BorderColor="#FE668C" />
                <asp:Button ID="btnLogout" runat="server" CssClass="btn form-control" Text="Logout" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnLogout_Click" />
            </div>
            <%-- Div contains profile picture and Banner for picture --%>
            <div class="col-sm-8 mt-3 text-center">
                <h1>(Username's Profile)</h1>
                <div class="row">
                    <div class="col-sm-2">
                        <img src="Content/Images/profile_2_45.jpeg" />
                    </div>
                    <div class="col-sm-10">
                        <img src="Content/Images/birmingham-museums-trust-wKlHsooRVbg-unsplash_4_25.jpg" />
                    </div>
                </div>
            </div>
            <%-- Div contains first section of user feed, similar to a Twitter account --%>
            <div class="col-sm-2 btn-group-vertical">
                <h2>Username's Feed</h2>
                <asp:Button ID="btnUserfeed1" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                <asp:Button ID="btnUserfeed2" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                <asp:Button ID="btnUserfeed3" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                <asp:Button ID="btnUserfeed4" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2 btn-group-vertical mt-5">
                <asp:Button ID="subbedArtist1" runat="server" CssClass="btn form-control" Text="Subscribed Artist" BackColor="#FE668C" BorderColor="#FE668C" />
                <asp:Button ID="subbedArtist2" runat="server" CssClass="btn form-control" Text="Subscribed Artist" BackColor="#FE668C" BorderColor="#FE668C" />
                <asp:Button ID="subbedArtist3" runat="server" CssClass="btn form-control" Text="Subscribed Artist" BackColor="#FE668C" BorderColor="#FE668C" />
                <asp:Button ID="subbedArtist4" runat="server" CssClass="btn form-control" Text="Subscribed Artist" BackColor="#FE668C" BorderColor="#FE668C" />
            </div>
            <%-- Personal Profile information. --%>
            <div class="col-sm-8 mt-5">
                <h2>About information that the user can customize. The User will be able to display personal information below as well as other description terms.
                    Other things that can be placed here are links to other of the User's media. Below are the carosel slide show and video a user can would be able to edit.
                </h2>
            </div>
            <div class="col-sm-2">
                <asp:Button ID="btnUserfeed5" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                <asp:Button ID="btnUserfeed6" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                <asp:Button ID="btnUserfeed7" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
                <asp:Button ID="btnUserfeed8" runat="server" CssClass="btn form-control" Text="Clickable Tag" BackColor="#FE668C" BorderColor="#FE668C" />
            </div>
        </div>
        <%-- Profile contains peronal art as well as art discovery. --%>
        <div class="row">
            <div class="col-sm-2 mt-5">
                <img src="Content/Images/discoverNewArt_35.jpg" class="images" />
            </div>
            <div class="col-sm-4">
                <div id="profileShowcase" class="carousel slide" data-ride="carousel" data-interval="3000">
                        <ol class="carousel-indicators">
                            <li data-target="#JapanImages" data-slide-to="0" class="active"></li>
                            <li data-target="#JapanImages" data-slide-to="1"></li>
                            <li data-target="#JapanImages" data-slide-to="2"></li>
                        </ol>
                    <%-- class="img-fluid d-block mx-auto my-auto carouselimages" --%>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="Content/Images/art/jr-korpa-EdzyKzzGBzs-unsplash_500x400.jpg" class="img-fluid d-block mx-auto my-auto carouselimages" />
                            </div>
                            <div class="carousel-item">
                                <img src="Content/Images/art/kirill-sharkovski-FioXQ1bU8Xg-unsplash_500x400.jpg" class="img-fluid d-block mx-auto my-auto carouselimages" />
                            </div>
                            <div class="carousel-item">
                                <img src="Content/Images/art/teo-zac-rH6WSz0KN7I-unsplash_500x400.jpg" class="img-fluid d-block mx-auto my-auto carouselimages" />
                            </div>
                        </div>
                        <%-- Below are the PREV and NEXT buttons which are '<' '>' icons --%>
                        <a class="carousel-control-prev" href="#profileShowcase" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#profileShowcase" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
            </div>
            <div class ="col-sm-4 embed-responsive embed-responsive-16by9">
                <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/y2m99K_gbwM"  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
    </form>
</body>
</html>
