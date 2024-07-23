<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Home/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="RAiso.Views.Home.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Your Cart</h1>
    </div>

    <div>
        <asp:GridView ID="GVCart" runat="server" AutoGenerateColumns="false" OnRowDeleting="GVCart_RowDeleting">
            <Columns>
                <asp:BoundField DataField="MsUser.UserName" HeaderText="User" SortExpression="MsUser.UserName"></asp:BoundField>
                <asp:BoundField DataField="MsStationery.StationeryName" HeaderText="Stationery" SortExpression="MsStationery.StationeryName"></asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity"></asp:BoundField>
                <asp:BoundField DataField="MsStationery.StationeryID" HeaderText="id" SortExpression="MsStationery.StationeryID" Visible="false"></asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="StationeryID" DataNavigateurlFormatString="UpdateCart.aspx?id={0}" Text="Update"></asp:HyperLinkField>
                <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
