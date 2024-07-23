<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Home/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateCart.aspx.cs" Inherits="RAiso.Views.Home.UpdateCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Update Cart</h1>
    </div>

    <div>
        <div>
            <asp:Label ID="LblStationeryName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TBStationeryName" runat="server" ReadOnly="true"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="LblQuantity" runat="server" Text="Quantity"></asp:Label>
            <asp:TextBox ID="TBQuantity" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="LblError" runat="server" Text=""></asp:Label>
        </div>

        <div>
            <asp:Button ID="BtnUpdate" OnClick="BtnUpdate_Click" runat="server" Text="Update" />
        </div>
    </div>
</asp:Content>
