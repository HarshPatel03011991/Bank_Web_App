<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Transac.aspx.cs" Inherits="Bank_Web_App.Transac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Mobile_No_Add], [Balance_Acc], [Add_Remove], [Amount], [Date_Time] FROM [All_Trans] ORDER BY [Date_Time] DESC"></asp:SqlDataSource>
    </p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Date_Time" HeaderText="Date_Time" SortExpression="Date_Time" />
            <asp:BoundField DataField="Mobile_No_Add" HeaderText="Mobile_No_Add" SortExpression="Mobile_No_Add" />
            <asp:BoundField DataField="Add_Remove" HeaderText="Add_Remove" SortExpression="Add_Remove" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            <asp:BoundField DataField="Balance_Acc" HeaderText="Balance_Acc" SortExpression="Balance_Acc" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <p>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="60px" OnClick="Button2_Click" Text="Search" Width="120px" />
    </p>
    <p>
    </p>
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="60px" OnClick="Button1_Click" Text="Back" Width="120px" />
    <br />
    <br />
    <p>
    </p>
</asp:Content>
