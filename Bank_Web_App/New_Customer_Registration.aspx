<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="New_Customer_Registration.aspx.cs" Inherits="Bank_Web_App.New_Customer_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 290px;
        }
        .auto-style3 {
            width: 290px;
        }
        .auto-style4 {
            width: 277px;
        }
    .auto-style5 {
        width: 61px;
    }
    .auto-style6 {
        width: 277px;
        text-align: center;
    }
    .auto-style7 {
        text-align: right;
        width: 290px;
        height: 36px;
    }
    .auto-style8 {
        width: 277px;
        text-align: center;
        height: 36px;
    }
    .auto-style9 {
        height: 36px;
    }
    .auto-style10 {
        margin-left: 3px;
    }
    .auto-style11 {
        width: 277px;
        text-align: center;
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style11">
                <strong>Enter new customer details</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">User Name</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxUN" runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name must be required" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email ID</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxEmail" runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email must be required" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Enter Valid Email ID" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxPass" runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="180px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password must be required" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Conform Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxRPass" runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="180px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="Confirm Password  must be required" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Both Password must be same" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Country</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownListCountry" runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="193px" CssClass="auto-style10">
                    <asp:ListItem>Select Country</asp:ListItem>
                    <asp:ListItem>CANADA</asp:ListItem>
                    <asp:ListItem>INDIA</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Country must be required" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Bank Balance</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBoxBalance" runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxBalance" ErrorMessage="Balance must be required" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Reset1" class="auto-style5" type="reset" value="reset" /></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Back" />
    <br />
    <br />
    <br />
</asp:Content>
