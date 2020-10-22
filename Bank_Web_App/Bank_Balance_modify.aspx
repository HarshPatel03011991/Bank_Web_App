<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Bank_Balance_modify.aspx.cs" Inherits="Bank_Web_App.Bank_Balance_modify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 86%;
        }
        .auto-style3 {
            width: 82px;
        }
        .auto-style4 {
            width: 135px;
        }
        .auto-style5 {
            width: 135px;
            height: 29px;
        }
        .auto-style6 {
            width: 82px;
            height: 29px;
        }
        .auto-style8 {
            width: 63px;
            height: 29px;
        }
        .auto-style9 {
            width: 63px;
        }
        .auto-style10 {
            width: 135px;
            height: 26px;
        }
        .auto-style11 {
            width: 63px;
            height: 26px;
        }
        .auto-style12 {
            width: 82px;
            height: 26px;
        }
        .auto-style13 {
            width: 135px;
            height: 19px;
        }
        .auto-style14 {
            width: 63px;
            height: 19px;
        }
        .auto-style15 {
            width: 82px;
            height: 19px;
        }
    .auto-style16 {
        width: 740px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    Welcome&nbsp;    <asp:Label ID="Label_welcome" runat="server"></asp:Label>
    <br />
    <table class="auto-style16">
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style5">Contact_No</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox_Catch_Mobile_No" runat="server" Width="150px" BackColor="#CCCCFF" ReadOnly="True"></asp:TextBox>
            
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Bank Balance</td>
            <td class="auto-style8">
             <asp:TextBox ID="TextBox_Catch_balance" runat="server" Width="150px" BackColor="#CCCCFF" ReadOnly="True"></asp:TextBox>
            
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Add Money</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox_Add" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button_Enter_Add" runat="server" Text="Enter" Width="80px" OnClick="Button_Enter_Add_Click" Font-Bold="True" Height="40px" />
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Remove Money</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox_Remove" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:Button ID="Button_Enter_Remove" runat="server" Text="Enter" Width="80px" OnClick="Button_Enter_Remove_Click" Font-Bold="True" Height="40px" />
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="Back" runat="server" OnClick="Back_Click" Text="Back" Width="80px" CausesValidation="False" Font-Bold="True" Height="40px" />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>
