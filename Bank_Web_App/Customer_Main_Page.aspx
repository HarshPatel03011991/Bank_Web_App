<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Customer_Main_Page.aspx.cs" Inherits="Bank_Web_App.Customer_Main_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label_welcome" runat="server" Text="Welcome  "></asp:Label>
        </p>
    <p>
        &nbsp;</p>
    <p>
                <asp:Button ID="Button4" runat="server" Height="60px" Text="Check Balance Customer" Width="260px" OnClick="Button4_Click" />
            </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
            </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
