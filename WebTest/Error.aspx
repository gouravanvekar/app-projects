<%@ Page Title="" Language="C#" MasterPageFile="~/M.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="WebTest.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
          <div class="error-page">
            <h1>404</h1>
            <h3>File not Found</h3>
            <p>We're sorry, but the page you were looking for doesn't exist.</p>
            <div class="text-center"><a href="/home" class="btn-system btn-small">Home</a></div>
          </div>
        </div>
</asp:Content>
