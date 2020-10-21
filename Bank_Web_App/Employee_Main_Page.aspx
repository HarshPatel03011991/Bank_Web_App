<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Employee_Main_Page.aspx.cs" Inherits="Bank_Web_App.Employee_Main_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 373px;
        }
        .auto-style4 {
            height: 26px;
            width: 373px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label_welcome" runat="server" Text="Welcome  "></asp:Label>
        &nbsp;&nbsp;</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button2" runat="server" Height="60px" OnClick="Button2_Click" Text="New Customer Registration" Width="260px" Font-Bold="True" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="Button3" runat="server" Height="60px" OnClick="Button3_Click" Text="All Customer Details" Width="260px" Font-Bold="True" />
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button4" runat="server" Height="60px" Text="Check Balance Customer" Width="260px" OnClick="Button4_Click" Font-Bold="True" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" Font-Bold="True" Height="40px" Width="80px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
