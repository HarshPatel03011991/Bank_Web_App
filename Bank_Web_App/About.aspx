<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Bank_Web_App.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Height="60px" OnClick="Button1_Click" Text="Home" Width="120px" Font-Bold="True" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="Button2" runat="server" Height="60px" OnClick="Button2_Click" Text="About" Width="120px" Font-Bold="True" />
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Names="Times New Roman" Font-Size="Large" Height="60px" Width="120px" BackColor="#CCCCFF" Font-Bold="True">
                    <asp:ListItem>LOGIN</asp:ListItem>
                    <asp:ListItem>Customer</asp:ListItem>
                    <asp:ListItem>Employee</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Image ID="Image1" runat="server" Height="228px" ImageAlign="AbsBottom" ImageUrl="~/Images/Block_Diagramme.JPG" Width="801px" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
