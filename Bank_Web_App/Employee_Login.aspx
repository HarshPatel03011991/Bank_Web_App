<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Employee_Login.aspx.cs" Inherits="Bank_Web_App.Employee_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 346px;
    }
    .auto-style3 {
        width: 346px;
        text-align: center;
        height: 44px;
            font-size: x-large;
        }
    .auto-style4 {
        width: 300px;
    }
    .auto-style7 {
            width: 346px;
            height: 26px;
            text-align: center;
        }
    .auto-style8 {
        height: 26px;
    }
    .auto-style10 {
        text-align: right;
        height: 44px;
    }
    .auto-style11 {
        width: 300px;
        height: 26px;
        text-align: right;
        font-size: large;
    }
    .auto-style12 {
        font-size: large;
    }
    .auto-style13 {
        width: 346px;
        text-align: left;
    }
    .auto-style14 {
        width: 300px;
        height: 44px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<table class="auto-style1">
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style3">Employee Login Details </td>
        <td class="auto-style10">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="HOME" CssClass="auto-style12" />
        </td>
    </tr>
    <tr>
        <td class="auto-style11">User Name</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBoxUserName" runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="235px"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="User Name must be required" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
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
            <asp:Button ID="Login" runat="server" Font-Names="Times New Roman" Font-Size="Large" OnClick="Login_Click" Text="Login" Width="78px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Reset" runat="server" Font-Names="Times New Roman" Font-Size="Large" OnClick="Reset_Click" Text="Reset" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
&nbsp;
</asp:Content>
