<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contain.aspx.cs" Inherits="spetindoProject.contain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    
    <div id="topheader">
		   <div class="logo"></div>
		 </div>
		 
		  <div id="header_strip"></div>
		 
		 <div id="body_area">
			<div class="left">
				<asp:Panel ID="panelMenu" runat="server" Visible="true">
				 <div class="comments_area">
					<div class="login_top"></div>
					<div class="login_bodyarea">
						<div class="comment_head">
						  <div align="right">Pilih Tanaman </div>
						</div>
						<div class="right_textbox">
						  <div align="right"><asp:DropDownList ID="dropdownTanaman" runat="server" ></asp:DropDownList></div>
						</div>
						
					</div>	
					<div class="login_bottom"></div>
					<div class="login_top"></div>
					<div class="login_bodyarea">
						<div class="comment_head">
						  <div align="right">Informasi</div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="#" class="comments_link">Deskripsi</a></div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="#" class="comments_link">Pemilihan Pembudidayaan </a></div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="#" class="comments_link">Hama  </a></div>
						</div>
					</div>	
					<div class="login_bottom"></div>
					<div class="login_top"></div>
					<div class="login_bodyarea">
						<div class="comment_head">
						  <div align="right">Modul</div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="#" class="comments_link">Konsultasi</a></div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="#" class="comments_link">Pemilihan Pembudidayaan </a></div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="#" class="comments_link">Modul Ahli  </a></div>
						</div>
					</div>	
					<div class="login_bottom"></div>
					</div>
				</asp:Panel>
			</div>
			<div class="midarea">
				<div class="head"> Selamat datang di SPETINDO </div>
			<div class="body_textarea">
			  <div align="justify">DSS merupakan system yang  interaktif, berbasis computer dan adalah subsistem yang secara jelas membantu pembuat keputusan dengan menggunakan teknologi komunikasi, data, dokumen, pengetahuan, dan/atau model untuk melengkapi pekerjaan proses penentuan keputusan. DSS  mampu memperbaiki keefektifan dan kualitas pembuatan keputusan dengan memproses banyak data dan menyediakan solusi alternative dari berbagai macam masalah.</div>
			</div>
			<div class="body_textarea">
			  <div align="justify">
                <p>SPETINDO adalah sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.</p>
			  </div>
			</div>		
			</div>
			<div class="right">
				<div class="innerbanner"></div>
				</div>
		</div>
		<div id="logofooter"><div class="logofoo"></div></div>
		<div id="fotter">
		  <div class="fotter_copyrights">
			<div align="center">Copyright &copy; Vincitore 2012. All Rights Reserved</div>
		  </div>
		</div>
    </form>
</body>
</html>
