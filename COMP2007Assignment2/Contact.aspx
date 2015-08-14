<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="COMP2007Assignment2.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="container-fluid text-center">
        <div class="jumbotron col-md-8 col-md-push-2">
            <p>Contact me anytime!  I never sleep.</p>
            <div class="panel">
                <a class="btn btn-lg btn-info" href="mailto:kellymcalpine73@gmail.com" role="button">Send a Raven &raquo;</a>
            </div>

            <div class="panel">
                <a class="btn btn-lg btn-info" href="tel:7057184390" role="button">Ring the Alarm &raquo;</a>
            </div>
        </div>
        <!-- /.col-sm-4 -->
    </div>
</asp:Content>
