<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ukur_suhu.aspx.cs" Inherits="spetindoProject.ukur_suhu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
				<div class="head"> Cara Mengukur Suhu Tanah 
                    <!--<asp:Label ID="LabelNama" runat="server" Text="di SPETINDO" Visible="true"></asp:Label></div>-->
                    
				<asp:Panel ID="panelIsiUtama" runat="server" Visible="true">
					<div class="body_textarea">
						<div align="justify"><b>Bahan dan Alat</b></div>
                        <div align="justify">Bahan yang digunakan adalah tanah sebagai objek pengamatan dan kertas sebagai media pencatat hasil.</div>
                        <asp:Image ID="ImageTanah" runat="server" Height="93px" 
                            ImageUrl="~/images/tanah.jpg" Width="146px" />
                            <asp:Image ID="ImageKertas" runat="server" Height="93px" 
                            ImageUrl="~/images/kertas.jpg" Width="92px" />
                        <div align="justify">Alat yang digunakan adalah Termometer tanah sebagai alat untuk pengukuran suhu tanah dan pulpen sebagai alat untuk mencatat hasil pengamatan. </div>
                        <asp:Image ID="ImageTermometer" runat="server" Height="93px" 
                            ImageUrl="~/images/termometer_tanah.jpg" Width="54px" />
                             <asp:Image ID="ImagePulpen" runat="server" Height="93px" 
                            ImageUrl="~/images/pulpen.jpg" Width="54px" />
                    </div>
					<div class="body_textarea">
						<div align="justify"><b>Prosedur Percobaan</b></div>
                        <div align="justify">- Tanah dilubangi dengan ketentuan 0, 5, 10, 20, 30, dan 50 cm.</div>
					    <div align="justify">- Termometer dimasukkan ke dalam rongga tanah yang telah berlubang tersebut selama 5 menit pada setiap lubang.</div>
                        <div align="justify">- Periksa dan amati skala temperatur pada termometer.</div>
					    <div align="justify">- Catat hasil pengamatan ke dalam kertas, buatlah data dalam bentuk tabel.</div>
                        <div align="justify">- Gambar grafik hubungan suhu tanah dengan kedalaman tanah dan suhu tanah dengan tanggal.</div>
                        <div align="justify">- Hitunglah rata-rata suhu tanah.</div>
                    </div>	
                </asp:Panel>
			</div>
		    
					  </div>
					  <!--<div class="login_bottom"></div>-->
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
