<%@ Page Title="Vote" Language="C#" MasterPageFile="~/M.Master" AutoEventWireup="true" CodeBehind="Vote.aspx.cs" Inherits="WebTest.Vote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <h4 class="classic-title"><span>Candidates</span></h4>
        <asp:UpdatePanel ID="upCandidates" runat="server">
            <ContentTemplate>
                <%-- <div id="divAlert" runat="server" class="alert alert-info animate-me-inverse" role="alert">
                    <h5 class="primary">
                        <asp:Label ID="lblMainMessage" runat="server" Text="Voting is now active"></asp:Label>
                    </h5>
                </div>--%>
                <div class="row">
                    <asp:Repeater ID="rptCandidates" runat="server">
                        <ItemTemplate>
                            <div class="col-md-3 col-sm-6 col-xs-12 animate-me">
                                <div class="team-member">
                                    <div class="member-photo">
                                        <asp:Image ID="imgProfile" runat="server" ImageUrl='<%# Eval("ProfileImage") %>' />
                                        <div class="member-name"><%# Eval("Name") %></div>
                                    </div>
                                    <div class="hr1" style="margin-bottom: 40px;"></div>
                                    <div>
                                        <asp:Button ID="btnVote" runat="server" Text="Select" OnClick="Button_Click" CommandArgument='<%# Eval("UserId") %>' CssClass="btn-system" />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="container" id="divNoCandidates" runat="server">
                        <div class="call-action call-action-boxed call-action-style1 clearfix">
                            <h2 class="primary">No candidates are running for this position</h2>
                            <p>Please wait for instructions</p>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            swal({ title: 'Voting Inactive', text: 'Please wait for instructions', type: 'info', confirmButtonColor: '#f04f29' });
        });
    </script>
</asp:Content>