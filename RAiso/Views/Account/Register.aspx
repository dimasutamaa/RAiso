<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Account/AccountMasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RAiso.Views.Account.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Register</h1>

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
            <asp:Label ID="LblDOB" runat="server" Text="Label"></asp:Label>
            <input id="DOBButton" type="date" runat="server"/>
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
            <asp:Label ID="LblPassword" runat="server">Password</asp:Label>
            <asp:TextBox ID="TBPassword" TextMode="Password" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="LblError" runat="server" Text=""></asp:Label>
        </div>

        <div>
            <asp:Button ID="RegisterButton" OnClick="RegisterButton_Click" runat="server" Text="Register" />
        </div>
    </div>
</asp:Content>
