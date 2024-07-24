<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Home/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="RAiso.Views.Home.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container col-md-5 mt-5">
        <div class="card">
            <div class="card-header">
                <h3>Your Cart</h3>
            </div>
            <div class="card-body">
                <asp:GridView ID="GVCart" runat="server" AutoGenerateColumns="false" OnRowDeleting="GVCart_RowDeleting" CssClass="table table-striped">
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
        </div>
    </div>
</asp:Content>
