<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="galleria.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .signInDiv{
    float: right;
    position: relative;
    top: -80px;
    padding-right:20px;
}
#signIn{
    text-decoration: none;
}
    </style>
    <title>Galleria</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
  
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <link href="css/bootstrapREg.min.css" rel="stylesheet" type="text/css" />
    <link href="css/styleReg.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesomeReg.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="SignIn.aspx">Sign In to Upload</a>
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/">Home</a> </li>
                    <li><a href="/products">Products</a> </li>
                    <li><a href="/about-us">About Us</a> </li>
                    <li><a href="/contact">Contact Us</a> </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
            <div id="banner">
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="registrationform">
                <div class="form-horizontal">
                     <fieldset>
                        <legend>Registration Form <i class="fa fa-pencil pull-right"></i></legend>
                       <div class="signInDiv">  <a href ="SignIn.aspx" id="signIn">Sign In</a></div>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="UserName" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="UserName/Roll_No" CssClass="form-control"></asp:TextBox>
                               <asp:RegularExpressionValidator runat="server" ID="REVUserName" ErrorMessage="Invalid Username" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[a-zA-Z]+[/][\d]{7,8}"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator runat="server" ID="RFVUserName" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Password" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" CssClass="form-control"
                                    TextMode="Password"></asp:TextBox>
                                 <asp:RequiredFieldValidator runat="server" ID="RFVPassword" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" ID="REVPassword" ControlToValidate="TextBox2" ErrorMessage="Minimum 8 characters is required" ValidationExpression="^[\s\S]{8,}$" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                            </div>
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Gender" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <div class="radio">
                                    <label>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                            <asp:ListItem Selected="True" Value="1" Text="Male">Male</asp:ListItem>
                                            <asp:ListItem Text="Female" Value="0">Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                          <asp:Label ID="Label5" runat="server" Text="Year" CssClass="col-lg-2 control-label"></asp:Label>                          
                            <div class="col-lg-10">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control ddl">
                                    <asp:ListItem Text="2013"></asp:ListItem>
                                    <asp:ListItem Text="2014"></asp:ListItem>
                                    <asp:ListItem Text="2015"></asp:ListItem>
                                    <asp:ListItem Text="2015"></asp:ListItem>
                                </asp:DropDownList>                              
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" />
                                  <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" />                              
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jqueryReg.js" type="text/javascript"></script>
    <script src="js/bootstrapReg.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">
        'use strict';
        $.backstretch(
        [
            "img/44.jpg",
            "img/colorful.jpg",
            "img/34.jpg",
            "img/images.jpg"
        ],

        {
            duration: 4500,
            fade: 1500
        }
    );
    </script>
    </form>
</body>
</html>