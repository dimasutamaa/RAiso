<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Home/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="InsertStationery.aspx.cs" Inherits="RAiso.Views.Home.InsertStationery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Insert Stationery</h1>

        <div>
            <asp:Label ID="LblName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TBName" runat="server" placeholder="Name"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="LblPrice" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="TBPrice" runat="server" placeholder="Price"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="LblError" runat="server" Text=""></asp:Label>
        </div>

        <asp:Button ID="BtnInsertStationery" OnClick="BtnInsertStationery_Click" runat="server" Text="Insert" />

        <h2>Stationery List</h2>
        <asp:GridView ID="GVStationery" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="StationeryID" HeaderText="StationeryID" SortExpression="StationeryID"></asp:BoundField>
                <asp:BoundField DataField="StationeryName" HeaderText="StationeryName" SortExpression="StationeryName"></asp:BoundField>
                <asp:BoundField DataField="StationeryPrice" HeaderText="StationeryPrice" SortExpression="StationeryPrice"></asp:BoundField>
            </Columns>
        </asp:GridView>

        <asp:Button ID="BacktoHome" OnClick="BacktoHome_Click" runat="server" Text="Back to Home" />
    </div>
</asp:Content>
