﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Customer_Main_Page.aspx.cs" Inherits="Bank_Web_App.Customer_Main_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label_welcome" runat="server" Text="Welcome  " Font-Bold="True" ForeColor="#9900CC"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;
        <asp:Label ID="Lable_Contct_No" runat="server" Text="Contact No : "></asp:Label>
        </strong>
    </p>
    <p>
        &nbsp;</p>
    <p>
                <asp:Button ID="Button4" runat="server" Height="60px" Text="Check Balance" Width="200px" OnClick="Button4_Click" Font-Bold="True" />
            </p>
    <p>
                <asp:Button ID="Button5" runat="server" Height="60px" OnClick="Button5_Click" Text="Demand Draft" Width="200px" Font-Bold="True" />
            </p>
    <p>
                &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" Height="40px" Width="80px" Font-Bold="True" />
            </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
