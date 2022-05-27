<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAnAccount.aspx.cs" Inherits="Project_Delieverable_3_Prototype.CreateAnAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create an Account</title>
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
                    <h1>Create an Account</h1>                    
                </div>
            </div>          
            <%-- Row and fields for Username --%>
            <div class="row">
                <div class="col-sm-6 text-right">
                    <label>Username</label>
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="tboxUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Username is required." ControlToValidate="tboxUsername" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%-- Row and fields for Password --%>
            <div class="row">
                <div class="col-sm-6 text-right">
                    <label>Password</label>
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="tboxPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required." ControlToValidate="tboxPassword" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%-- Row and fields for email --%>
            <div class="row">
                <div class="col-sm-6 text-right">
                    <label>Email</label>
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="tboxEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required." ControlToValidate="tboxEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%-- Row and Fields for phone --%>
            <div class="row">
                <div class="col-sm-6 text-right">
                    <label>Phone Number</label>
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="tboxPhone" runat="server" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Phone Number is required." ControlToValidate="tboxPhone" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%-- Row for Dropdown List --%>
            <div class="row">
                <div class="col-sm-6 offset-sm-6">
                    <label>Artist Type</label>
                    <asp:DropDownList ID="ddlArtistType" runat="server" DataSourceID="sdsjomaiArtistType" DataTextField="ArtistType" DataValueField="ArtistType"></asp:DropDownList>
                    <asp:SqlDataSource ID="sdsjomaiArtistType" runat="server" ConnectionString="<%$ ConnectionStrings:sdsjomaiLogin %>" SelectCommand="spGetArtistType" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
            </div>
            <%-- Row for login, error messages, and SQL data source. --%>
            <div class="row">
                <div class="col-sm-6 offset-sm-6">
                    <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" CssClass="btn btnColor" BackColor="#FE668C" BorderColor="#FE668C" OnClick="btnCreateAccount_Click" />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>               
                </div>
            </div>           
            <%-- Navigation Buttons --%>
            <div class="row">
                <div class="col-sm-12 mt-3 mb-3 text-center">
                    <asp:Label ID="lblQuickNavigation" runat="server" Text="Quick Navigation Buttons"></asp:Label>
                    <asp:Button ID="btnWelcome" runat="server" class="btn" Text="Welcome" BackColor="#FE668C" BorderColor="#FE668C"  CausesValidation="False" OnClick="btnWelcome_Click" />
                    <asp:Button ID="btnHome" runat="server" class="btn" Text="Home" BackColor="#FE668C" BorderColor="#FE668C"  CausesValidation="False" OnClick="btnHome_Click" />
                    <asp:Button ID="btnMyProfileNav" runat="server" class="btn" Text="My Profile" BackColor="#FE668C" BorderColor="#FE668C"  CausesValidation="False" OnClick="btnMyProfileNav_Click" />
                    <asp:Button ID="btnSupport" runat="server" class="btn" Text="Support/Contact Us" BackColor="#FE668C" BorderColor="#FE668C"  CausesValidation="False" OnClick="btnSupport_Click" />
                    <asp:Button ID="btnUpdateProfileSettings" class="btn" runat="server" Text="Update Profile Settings" BackColor="#FE668C" BorderColor="#FE668C"  CausesValidation="False" OnClick="btnUpdateProfileSettings_Click" />
                    <asp:Button ID="btnLogin2" runat="server" class="btn" Text="Login" BackColor="#FE668C" BorderColor="#FE668C"  CausesValidation="False" OnClick="btnLogin2_Click" />
                </div>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sdsjomaiLogin %>" InsertCommand="spCreateAccount" InsertCommandType="StoredProcedure" SelectCommand="spCreateAccount" SelectCommandType="StoredProcedure">
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="ArtistType" Type="String" />
                <asp:Parameter Direction="InputOutput" Name="ArtistID" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="tboxUsername" Name="Username" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tboxPassword" Name="Password" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tboxEmail" Name="Email" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tboxPhone" Name="PhoneNumber" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ddlArtistType" Name="ArtistType" PropertyName="SelectedValue" Type="String" />
                <asp:Parameter Direction="InputOutput" Name="ArtistID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
