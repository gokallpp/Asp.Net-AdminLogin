<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VeriGuncelle.aspx.cs" Inherits="AdminLogin.VeriGuncelle" %>

<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Şifre Güncelle</title>
 
	<!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Space Register Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta-Tags -->

	<!-- css files -->
	<link href="web2/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- css files -->

	<!-- Online-fonts -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
	<!-- //Online-fonts -->

</head>
<body>

	<!-- Main Content -->
	<div class="main">
		<div class="main-w3l">
			<h1 class="logo-w3">Admİn Şİfre Güncelleme Paneli</h1>
			<div class="w3layouts-main">
					<form action="#" method="post" runat="server">

						<asp:TextBox ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
						<asp:TextBox ID="TextBox2" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
						<asp:TextBox ID="TextBox3" runat="server" placeholder="Şifre" TextMode="Password"></asp:TextBox>
						<asp:TextBox ID="TextBox4" runat="server" placeholder="Şifre Tekrar"></asp:TextBox>
						<asp:Button ID="Button1" runat="server" Text="Güncelle" OnClick="Button1_Click" />
					</form>
			</div>
			<!-- //main -->
			
			<!-- password-script -->
			<script>
				window.onload = function () {
					document.getElementById("password1").onchange = validatePassword;
					document.getElementById("password2").onchange = validatePassword;
				}

				function validatePassword() {
					var pass2 = document.getElementById("password2").value;
					var pass1 = document.getElementById("password1").value;
					if (pass1 != pass2)
						document.getElementById("password2").setCustomValidity("Passwords Don't Match");
					else
						document.getElementById("password2").setCustomValidity('');
					//empty string means no validation error
				}
            </script>
			<!-- //password-script -->

			<!--footer-->
			<div class="footer-w3l">
				<p>&copy; 2024 Her hakkı saklıdır | Abdullah GÖKALP </p>
			</div>
			<!--//footer-->
			
		</div>
	</div>
	<!-- //Main Content -->

</body>
</html>

