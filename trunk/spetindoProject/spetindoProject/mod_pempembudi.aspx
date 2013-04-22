<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mod_pempembudi.aspx.cs" Inherits="spetindoProject.mod_pempembudi" %>

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
							<a href="main page.aspx" class="comments_link">Deskripsi</a></div>
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
					</div>
				</asp:Panel>
			</div>
			<div class="midarea">
            <div class="head"> Hasil Rekomendasi </div>
			<div class="body_textarea">
			  <div align="justify">Lahan anda diperkirakan akan menghasilkan tanaman dibawah ini dengan hasil panen sekian</div>
			</div>
			<!--<div class="body_textarea">
			  <div align="justify">
                <p>SPETINDO adalah sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.</p>
			  </div>
			</div>-->
            <asp:Label ID="Label4" runat="server" Text="Hasil panen padi "></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></br>
            
            <asp:Label ID="Label5" runat="server" Text="Hasil panen jagung "></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></br>

            <asp:Label ID="Label6" runat="server" Text="Hasil panen kedelai "></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
					
			</div>
			<div class="right">
			</div>
		</div>
		<div id="logofooter"></div>
		<div id="fotter">
		  <div class="fotter_copyrights">
			<div align="center">Copyright &copy; Eka Ayu 2013. All Rights Reserved</div>
		  </div>
		</div>
    </form>
</body>
</html>
