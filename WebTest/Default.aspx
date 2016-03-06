<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Test App</h1>
    </div>
    <div class="row">
        <asp:Repeater ID="Repeater1" runat="server"
            OnItemCreated="Repeater1_ItemCreated"
            OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <div class="col-md-4">
                    <div>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </div>
                    <div>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProfileImage") %>' />

                    </div>
                    <div>
                        <br />
                        <asp:Button ID="btnVote" runat="server" Text="Contact" OnClick="Button_Click" CommandArgument='<%# Eval("UserId") %>' CssClass="btn btn-default" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"
            ForeColor="#669900"></asp:Label>
    </div>
</asp:Content>
