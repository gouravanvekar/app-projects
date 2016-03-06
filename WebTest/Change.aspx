<%@ Page Title="Change" Language="C#" MasterPageFile="~/M.Master" AutoEventWireup="true" CodeBehind="Change.aspx.cs" Inherits="WebTest.Change" EnableEventValidation="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <div class="row">
            <div class="col-md-5">
                <h4 class="classic-title"><span>Change</span></h4>
                <div class="form-group">
                    <div class="controls">
                        <div class="row">
                            <div class="col-xs-11">
                                <asp:TextBox ID="CurrentPassword" runat="server" placeholder="Current Password"
                                    class="email" TextMode="Password">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="controls">
                        <div class="row">
                            <div class="col-xs-11">
                                <asp:TextBox ID="NewPassword" runat="server" placeholder="New Password"
                                    class="email" TextMode="Password">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="controls">
                        <div class="row">
                            <div class="col-xs-11">
                                <asp:TextBox ID="ConfirmPassword" runat="server" placeholder="Confirm Password"
                                    class="email" TextMode="Password">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="controls">
                        <div class="row">
                            <div class="col-xs-11">
                                <asp:CompareValidator ID="ComparePasswords" class="alert alert-danger center-block alert-danger-class" runat="server" ErrorMessage="Passwords do not match" ControlToCompare="NewPassword" ControlToValidate="ConfirmPassword"></asp:CompareValidator>
                            </div>
                            <div class="col-xs-1">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="controls">
                        <div class="row">
                            <div class="col-xs-11">
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            </div>
                            <div class="col-xs-1">
                            </div>
                        </div>
                    </div>
                </div>
                <asp:Button ID="change_button" runat="server" Text="Change" class="btn-system btn-large" OnClick="change_button_Click" />
            </div>
            <div class="col-md-7 instructions">
                <h4 class="classic-title"><span>Information</span></h4>
                <ul>
                    <li>List Item</li>
                    <li>List Item</li>
                    <li>List Item</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
