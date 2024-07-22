<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Home/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="StationeryDetails.aspx.cs" Inherits="RAiso.Views.Home.StationeryDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Stationery Details</h1>
    <hr />
    <div style="padding: 50px">
        <table style="width: 400px" border="1">
            <tr>
                <td>Name</td>
                <td><asp:Label ID="StationeryName" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><asp:Label ID="StationeryPrice" runat="server" Text=""></asp:Label></td>
            </tr>
            <%if (Session["user"] != null)
              {
                    var user = (RAiso.Model.MsUser)Session["user"];
                    if (user.UserRole == "Customer")
                    {%>
            <tr>
                <td colspan="2"><asp:TextBox ID="TBQuantity" placeholder="Quantity" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="BtnAddtoCart" runat="server" Text="Add to Cart" OnClick="BtnAddtoCart_Click" />
                </td>
            </tr>
                  <%} 
              }%>
        </table>
    </div>
</asp:Content>
