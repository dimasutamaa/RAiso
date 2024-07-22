<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Home/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="RAiso.Views.Home.UpdateProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Update Profile</h1>

        <div>
            <asp:Label ID="LblUsername" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TBUsername" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="LblGender" runat="server" Text="Gender"></asp:Label>
            <asp:RadioButton ID="RBMale" runat="server" Text="Male" GroupName="gender" />
            <asp:RadioButton ID="RBFemale" runat="server" Text="Female" GroupName="gender" />
        </div>

        <div>
            <asp:Label ID="LblDOB" runat="server" Text="DOB"></asp:Label>
            <asp:TextBox ID="DOBButton" TextMode="Date" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="LblPhone" runat="server">Phone</asp:Label>
            <asp:TextBox ID="TBPhone" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="LblAddress" runat="server">Address</asp:Label>
            <asp:TextBox ID="TBAddress" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="LblPassword" runat="server">New/Old Password</asp:Label>
            <asp:TextBox ID="TBPassword" TextMode="Password" runat="server"></asp:TextBox>
        </div>

        <div class="mb-3 text-danger">
            <asp:Label ID="LblError" CssClass="error" runat="server" Text=""></asp:Label>
        </div>

        <div class="mb-3">
            <asp:Button ID="UpdateProfileBtn" OnClick="UpdateProfileBtn_Click" runat="server" Text="Update" CssClass="btn btn-primary" />
        </div>
    </div>
</asp:Content>
