<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main page.aspx.cs" Inherits="spetindoProject.main_page" %>

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
					<div class="login_top"></div>
					<div class="login_bodyarea">
						<div class="comment_head">
						  <div align="center">Nasihat </div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="main page.aspx" class="comments_link">Deskripsi</a></div>
						</div>
                        <div class="right_textbox">
						  <div align="right">
							<a href="info_pempembudi.aspx" class="comments_link">Modul Nasihat</a></div>
						</div>
					</div>
					<div class="login_bottom"></div>
					<div class="login_top"></div>
					<div class="login_bodyarea">
						<div class="comment_head">
						  <div align="center">Budidaya</div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="main page.aspx" class="comments_link">Deskripsi</a></div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="info_pupuk.aspx" class="comments_link">Pemilihan Pupuk </a></div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="info_hama.aspx" class="comments_link">Penanganan Hama</a></div>
						</div>
					</div>	
					<div class="login_bottom"></div>
					<div class="login_top"></div>
					<div class="login_bodyarea">
						<div class="comment_head">
						  <div align="center">Profil Pasar</div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="main_page.aspx" class="comments_link">Deskripsi</a></div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="info_hargapasar.aspx" class="comments_link">Harga Pasar </a></div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="info_permintaanpasar.aspx" class="comments_link">Permintaan Pasar  </a></div>
						</div>
					</div>	
					<div class="login_bottom"></div>
				</asp:Panel>
			
				
			</div>
			<div class="midarea">
				<div class="head"> Selamat datang 
                    <asp:Label ID="LabelNama" runat="server" Text="di SPETINDO" Visible="true"></asp:Label></div>
                    
				<asp:Panel ID="panelIsiUtama" runat="server" Visible="true">
					<div class="body_textarea">
						<div align="justify">DSS merupakan system yang  interaktif, berbasis computer dan adalah subsistem yang secara jelas membantu pembuat keputusan dengan menggunakan teknologi komunikasi, data, dokumen, pengetahuan, dan/atau model untuk melengkapi pekerjaan proses penentuan keputusan. DSS  mampu memperbaiki keefektifan dan kualitas pembuatan keputusan dengan memproses banyak data dan menyediakan solusi alternative dari berbagai macam masalah.</div>
					</div>
					<div class="body_textarea">
						<div align="justify">
							<p>SPETINDO adalah sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.</p>
						</div>
					</div>	
                </asp:Panel>
			</div>
		    <div class="right">
			  <asp:Panel ID="panelLogin" runat="server" Visible="true">
					<div class="login_area">
					  <div class="login_top"></div>
					  <div class="login_bodyarea">
						<div class="right_head">
						  <div align="center">LOGIN DISINI</div>
						</div>
						<div class="right_textbox">
						  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID&nbsp;
						  <asp:TextBox ID="textboxLoginId" runat="server" Width="100px" Height="16px"></asp:TextBox></p>
						</div>
						<div class="right_textbox">
						  <p><span class="style1">Password </span>&nbsp;
						  <asp:TextBox ID="textboxLoginPass" runat="server" Width="100px" TextMode="Password" Height="16px"></asp:TextBox></p>
						</div>
						<div class="right_text">
						  <label>
						  <asp:CheckBox ID="checkboxremem" runat="server"/>
						  </label>
						Ingat Saya</div>
						<div class="right_text">
							<div align="left"><a href="#" class="daftar"></a></div>
							<div align="center">
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    ImageUrl="~/images/buttmasuk_hov.png" onclick="ImageButton1_Click" /></div>
						</div>
					  </div>
					  <div class="login_bottom"></div>
					</div>
				</asp:Panel>
		    </div>
					
		<div id="logofooter"></div></div>
		<div id="fotter">
		  <div class="fotter_copyrights">
			<div align="center">Copyright &copy; Eka Ayu 2013. All Rights Reserved</div>
		  </div>
		</div>
    </form>
</body>
</html>
