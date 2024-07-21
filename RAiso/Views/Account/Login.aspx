<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Account/AccountMasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RAiso.Views.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Login</h1>

        <div>
            <asp:Label ID="LblUsername" runat="server">Username</asp:Label>
            <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="LblPassword" runat="server">Password</asp:Label>
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </div>

        <div>
            <asp:CheckBox ID="CBRememberMe" runat="server" />
            <asp:Label ID="LblRememberMe" runat="server">Remember Me</asp:Label>
        </div>

        <div>
            <asp:Label ID="LblError" runat="server" Text=""></asp:Label>
        </div>

        <div>
            <asp:Button ID="BtnSubmit" OnClick="BtnSubmit_Click" runat="server" Text="Login" />
        </div>
    </div>
</asp:Content>
