<%@ Page Title="Home" Language="C#" MasterPageFile="~/M.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebTest.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <div class="row">
            <div class="col-md-10 main-text">
                <h4 class="classic-title"><span>Welcome To Our Agency</span></h4>
                <p>Lorem Ipsum is simply dummy text of the <a title="Simple Tooltip" href="#" class="itl-tooltip" data-placement="top">printing</a> and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                <p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Sed ut perspiciatis unde omnis iste natus error sit volup accusantium. Lorem ipsum dolor sit amet, consectetur.</p>
            </div>
            <div class="col-md-2">
                <%--<img alt="" class="img img-responsive center-block" style="width: 75%;" src="images/ufais_labs-logo.gif" />--%>
            </div>
        </div>
        <div class="hr1" style="margin-bottom: 50px;"></div>

        <div class="row">
            <div class="col-md-8">
                <h4 class="classic-title"><span>Our Solutions</span></h4>
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-1">
                                    <i class="fa fa-angle-up control-icon"></i>
                                    <i class="fa fa-user"></i>Fully Responsive Theme
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-1" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <strong class="accent-color">Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown <strong>printer</strong> took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-2" class="collapsed">
                                    <i class="fa fa-angle-up control-icon"></i>
                                    <i class="fa fa-briefcase"></i>Touchable Slider
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-2" class="panel-collapse collapse">
                            <div class="panel-body">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. The point of using Lorem Ipsum is that it has a <strong>more-or-less</strong> normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-3" class="collapsed">
                                    <i class="fa fa-angle-up control-icon"></i>
                                    <i class="fa fa-black-tie"></i>Leader
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-3" class="panel-collapse collapse">
                            <div class="panel-body">
                                <strong class="accent-color">Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown <strong>printer</strong> took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-4" class="collapsed">
                                    <i class="fa fa-angle-up control-icon"></i>
                                    <i class="fa fa-money"></i>Touchable Slider
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-4" class="panel-collapse collapse">
                            <div class="panel-body">
                                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. The point of using Lorem Ipsum is that it has a <strong>more-or-less</strong> normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-5" class="collapsed">
                                    <i class="fa fa-angle-up control-icon"></i>
                                    <i class="fa fa-group"></i>Fully Responsive Theme
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-5" class="panel-collapse collapse">
                            <div class="panel-body">
                                <strong class="accent-color">Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown <strong>printer</strong> took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-6" class="collapsed">
                                    <i class="fa fa-angle-up control-icon"></i>
                                    <i class="fa fa-film"></i>Touchable Slider
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-6" class="panel-collapse collapse">
                            <div class="panel-body">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. The point of using Lorem Ipsum is that it has a <strong>more-or-less</strong> normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-7" class="collapsed">
                                    <i class="fa fa-angle-up control-icon"></i>
                                    <i class="fa fa-graduation-cap"></i>Touchable Slider
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-7" class="panel-collapse collapse">
                            <div class="panel-body">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. The point of using Lorem Ipsum is that it has a <strong>more-or-less</strong> normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 instructions">
                <h4 class="classic-title"><span>Instructions</span></h4>
                <ul>
                    <li>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Sed ut perspiciatis unde omnis iste natus error sit volup accusantium. Lorem ipsum dolor sit amet, consectetur.</li>
                    <li>If you are a candidate, you are eligible to vote for the position you are running for, including (but not limited to) yourself.</li>
                    <li>List Item</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
