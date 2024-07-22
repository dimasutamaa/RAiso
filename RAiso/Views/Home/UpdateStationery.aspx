<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Home/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateStationery.aspx.cs" Inherits="RAiso.Views.Home.UpdateStationery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Update Stationery</h1>

        <div>
            <asp:Label ID="LblStationeryName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TBStationeryName" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="LblStationeryPrice" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="TBPrice" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="LblError" runat="server" Text=""></asp:Label>
        </div>

        <asp:Button ID="UpdateStationeryBtn" runat="server" Text="Update" OnClick="UpdateStationeryBtn_Click" />
    </div>
</asp:Content>
