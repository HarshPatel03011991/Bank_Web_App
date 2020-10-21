<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Customer_Login.aspx.cs" Inherits="Bank_Web_App.Customer_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    .auto-style12 {
        font-size: large;
    }
    .auto-style11 {
        width: 300px;
        height: 26px;
        text-align: right;
        font-size: large;
    }
    .auto-style7 {
            width: 346px;
            height: 26px;
            text-align: center;
        }
    .auto-style8 {
        height: 26px;
    }
    .auto-style4 {
        width: 300px;
    }
    .auto-style2 {
        width: 346px;
    }
    .auto-style13 {
        width: 346px;
        text-align: left;
    }
        .auto-style14 {
            height: 26px;
            text-align: center;
        }
        .auto-style15 {
            height: 26px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style14"><span class="auto-style12"><strong>Customer Login Details</strong></span> </td>
                <td class="auto-style15">
    <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="HOME" CssClass="auto-style12" CausesValidation="False" Font-Bold="True" Height="40px" Width="80px" />
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
        <td class="auto-style11">Contact No</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBoxUsername" runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="235px"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Contact must be required" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Mobile Number must be need" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
            </tr>
            <tr>
        <td class="auto-style11">Password</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBoxPassword" runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="233px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Password must be required" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
            </tr>
            <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
            </tr>
            <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style13">
            <asp:Button ID="Login" runat="server" Font-Names="Times New Roman" Font-Size="Large" OnClick="Login_Click" Text="Login" Width="80px" CausesValidation="False" Font-Bold="True" Height="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Reset" runat="server" Font-Names="Times New Roman" Font-Size="Large" OnClick="Reset_Click" Text="Reset" Width="80px" Font-Bold="True" Height="40px" />
        </td>
        <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
