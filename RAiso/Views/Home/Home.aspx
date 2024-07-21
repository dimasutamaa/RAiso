<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Home/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RAiso.Views.Home.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Stationery</h1>
    </div>

    <div>
        <asp:GridView ID="GVStationery" runat="server" AutoGenerateColumns="false" OnRowEditing="GVStationery_RowEditing"
            OnRowDeleting="GVStationery_RowDeleting" OnSelectedIndexChanged="GVStationery_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="StationeryID" HeaderText="ID" SortExpression="StationeryID" ></asp:BoundField>
                <asp:BoundField DataField="StationeryName" HeaderText="Name" SortExpression="StationeryName"></asp:BoundField>
                <asp:BoundField DataField="StationeryPrice" HeaderText="Price" SortExpression="StationeryPrice"></asp:BoundField>
                <asp:CommandField ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" 
                    HeaderText="Actions" EditText="Update"></asp:CommandField>                        
                <asp:CommandField ShowSelectButton="True" ShowHeader="True" HeaderText="Action" SelectText="Details"></asp:CommandField>
            </Columns>
        </asp:GridView>
    </div>

    <div>
        <asp:Button ID="BtnInsert" OnClick="BtnInsert_Click" runat="server" Text="Insert" />
    </div>
</asp:Content>
