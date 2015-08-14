<%@ Page Title="Login" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="COMP2007Assignment2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Planners/Default.aspx" CreateUserText="Register" CreateUserUrl="~/Register.aspx"></asp:Login>
    <asp:LoginStatus ID="LoginStatus1" runat="server" />

</asp:Content>
