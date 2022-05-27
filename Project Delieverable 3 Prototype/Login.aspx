<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_Delieverable_3_Prototype.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/ArtStationStyleSheet.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class ="container-fluid">
            <%-- Jumbotron Banner with custom color --%>
            <div class="row">
                <div class ="col-sm-12 jumbotron welcomeText">
                    <h1>Login to your Account</h1>                    
                </div>
            </div>
            <%-- Label that displays successful credential edit. --%>
            <div class="row">
                <div class="col-sm-12 text-center mb-3">
                    <asp:Label ID="lblSuccess" runat="server"></asp:Label>
                </div>
            </div>
            <%-- Row and fields for Username --%>
            <div class="row">
                <div class="col-sm-6 text-right">
                    <label>Username</label>
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="tboxUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Username is required or incorrect." ControlToValidate="tboxUsername" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%-- Row and fields for Password --%>
            <div class="row">
                <div class="col-sm-6 text-right">
                    <label>Password</label>
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="tboxPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required or incorrect." ControlToValidate="tboxPassword" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%-- Row for login, error messages, and SQL data source. --%>
            <div class="row">
                <div class="col-sm-6 offset-sm-6">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btnColor" OnClick="btnLogin_Click" BackColor="#FE668C" BorderColor="#FE668C" />
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sdsjomaiLogin %>" SelectCommand="spLogin" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="tboxUsername" Name="Username" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tboxPassword" Name="Password" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <%-- Navigation Buttons --%>
            <div class="row">
                <div class="col-sm-12 mt-3 mb-3 text-center">
                    <asp:Label ID="lblQuickNavigation" runat="server" Text="Quick Navigation Buttons"></asp:Label>
                    <asp:Button ID="btnWelcome" runat="server" class="btn" Text="Welcome" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnWelcome_Click" CausesValidation="False" />
                    <asp:Button ID="btnHome" runat="server" class="btn" Text="Home" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnHome_Click" CausesValidation="False" />
                    <asp:Button ID="btnMyProfileNav" runat="server" class="btn" Text="My Profile" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnMyProfileNav_Click" CausesValidation="False" />
                    <asp:Button ID="btnSupport" runat="server" class="btn" Text="Support/Contact Us" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnSupport_Click" CausesValidation="False" />
                    <asp:Button ID="btnUpdateProfileSettings" class="btn" runat="server" Text="Update Profile Settings" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnUpdateProfileSettings_Click" CausesValidation="False" />
                    <asp:Button ID="btnLogin2" runat="server" class="btn" Text="Login" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnLogin_Click" CausesValidation="False" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
