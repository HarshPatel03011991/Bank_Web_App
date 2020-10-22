<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Demand_Draft_Details.aspx.cs" Inherits="Bank_Web_App.Demand_Draft_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            text-align: right;
        width: 812px;
    }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            font-size: large;
        }
        .auto-style9 {
        width: 812px;
    }
    .auto-style10 {
        height: 26px;
        width: 812px;
        text-align: left;
    }
    .auto-style11 {
        width: 883px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <table class="auto-style11">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6"><strong>Demand Draft</strong></td>
            <td class="auto-style3">
                <asp:Button ID="Button3" runat="server" CausesValidation="False" OnClick="Button3_Click" Text="Back" Font-Bold="True" Height="40px" Width="80px" />
            </td>
        </tr>
        <tr>
            <td>Contact No</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox_Catch_Mobile_No" runat="server" BackColor="#CCCCFF" BorderColor="White"></asp:TextBox>
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td>In Favour of</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox_In_Favour_of" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_In_Favour_of" ErrorMessage="Name Requird For Favour Of" Font-Names="Times New Roman" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Payable At</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox_Payable_At" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_Payable_At" ErrorMessage="Name Requird For Payable At" Font-Names="Times New Roman" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Amount</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox_Amout_Number" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_Amout_Number" ErrorMessage="Amount must be required" Font-Names="Times New Roman" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Amount In words</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox_Amount_In_Words" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_Amount_In_Words" ErrorMessage="Amount in words must be required" Font-Names="Times New Roman" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox_Catch_Balance" runat="server" BackColor="#CCCCFF" ReadOnly="True" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;<asp:Button ID="Button1" runat="server" Text="Create" OnClick="Button1_Click" Font-Bold="True" Height="40px" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" Font-Bold="True" Height="40px" Width="80px" />
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
