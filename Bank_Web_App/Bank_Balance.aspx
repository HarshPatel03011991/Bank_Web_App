<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Bank_Balance.aspx.cs" Inherits="Bank_Web_App.Bank_Balance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 235px;
        }
        .auto-style3 {
            width: 235px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            width: 300px;
        }
        .auto-style6 {
            height: 29px;
            width: 300px;
        }
        .auto-style7 {
            width: 235px;
            height: 26px;
        }
        .auto-style8 {
            width: 300px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            width: 235px;
            height: 8px;
        }
        .auto-style11 {
            width: 300px;
            height: 8px;
        }
        .auto-style12 {
            height: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style3">Enter Customer Contact No</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Width="228px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Mobile Number must be need" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid mobile number" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red" ValidationExpression="^([0-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" Font-Bold="True" Height="40px" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" Width="80px" CausesValidation="False" Font-Bold="True" Height="40px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
