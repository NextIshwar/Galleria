<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="galleria.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <link href="css/bootstrapREg.min.css" rel="stylesheet" type="text/css" />
    <link href="css/styleReg.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesomeReg.css" rel="stylesheet" type="text/css" />
    <style>
.txtBox {
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    color: black;
}
button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: 10%;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}
img.avatar {
    width: 20%;
    border-radius: 50%;
}

.container1 {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    flex-direction: column;
    
}

span.psw {
    float: right;
    top: -25%;
    left: -12%;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
.btns:hover{
    background-color: #4CAF50;
}
.btns{
    background-color: transparent;
     width: 7%;
    padding: 12px 20px;
    position: relative;
    left: 10%;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    margin: 20px;
}
.psw {
    position: relative;
    right: 270px;
}
.lbl{
    position: relative;
    left:30%;
    top: 9%;
}
#btnSubmit{
    left: -12%;
}
#btn{
    left: 11.5%;
    top: -22.5%;
}
#txtPassword{
    width:100%;   
    border-radius: 3px;
}
#txtUserName{width: 100%;
border-radius: 3px;}
#btn:hover{
   background-color: orangered;
}
.btns{
    width: 100%;
}
#btn{
     position: relative;
    top: 0px;
    left: 23.5%;
    width:135px;
}
#btnSubmit{
    position: relative;
    left: 39%;
}
</style>
</head>
<body>
     <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="SignIn.aspx">Sign In to Upload</a>
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Home.aspx">Home</a> </li>
                    <li><a href="/products">Products</a> </li>
                    <li><a href="/about-us">About Us</a> </li>
                    <li><a href="/contact">Contact Us</a> </li>
                </ul>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
    <div class="imgcontainer">
    <img src="Img/avatar.png" alt="Avatar" class="avatar"/>
  </div>

  <div class="container1" id="loginContainer">
      <table>
          <tr>
  <td>  <label class="lbl"><b>Username</b></label></td>
  <td class="td"><asp:TextBox runat="server" ID="txtUserName" CssClass="txtBox"></asp:TextBox></td>
</tr>
   <tr><td><label class="lbl"><b>Password</b></label></td>
  <td class="td">  <asp:TextBox TextMode="Password" runat="server" ID="txtPassword" CssClass="txtBox"></asp:TextBox></td>
       </tr>
   <tr><td><input type="checkbox" id="checkRem" checked="checked"/> Remember</td></tr>
 <tr><td class="tdButton"> <asp:Button runat="server" ID="btnSubmit" CssClass="btns" Text="Submit" OnClick="btnSubmit_Click" /></td>
 <td class="tdButton"><asp:Button runat="server" ID="btn" Text="Cancel" CssClass="btns" /></td>  </tr>
 <tr> <td> <span class="psw">Forgot <a href="#">password?</a></span></td></tr>
 <tr><span><asp:Label ID="lblError" runat="server"></asp:Label></span></tr>     
          </table>
       </div>
       

 <!-- <div class="container">
    
  </div>-->
        <script src="js/jquery.min.js"></script>
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
