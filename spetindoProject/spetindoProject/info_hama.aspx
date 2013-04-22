<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info_hama.aspx.cs" Inherits="spetindoProject.info_hama" %>

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
            <div class="head"> Rekomendasi Pencegahan Hama yang kemungkinan Menyerang</div>
            <div class="body_textarea">
			  <div align="justify">Pilih tanaman yang akan ditanam</div>
			</div>
                <asp:DropDownList ID="DropDownListTanaman" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownListTanaman_SelectedIndexChanged">
                    <asp:ListItem Value="TA001">Padi</asp:ListItem>
                    <asp:ListItem Value="TA002">Jagung</asp:ListItem>
                    <asp:ListItem Value="TA003">Kedelai</asp:ListItem>
                </asp:DropDownList></br></br>
            <div class="body_textarea">
			  <div align="justify">Pilih hama yang kemungkinan menyerang</div>
			</div>
                <asp:DropDownList ID="listHama" runat="server">
                    </asp:DropDownList></br></br>
                <asp:Button ID="ButtonHama" runat="server" Text="Cek" 
                    onclick="ButtonHama_Click" /></br></br>
                <asp:ImageButton ID="ImageButtonHama" runat="server" />
                <!--<asp:Label ID="LabelNamaPupuk" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="LabelJenisPupuk" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="LabelHarga" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="LabelTakaran" runat="server" Text="Label"></asp:Label>-->
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>

				<!--<div class="head"> Selamat datang di SPETINDO </div>
			<div class="body_textarea">
			  <div align="justify">DSS merupakan system yang  interaktif, berbasis computer dan adalah subsistem yang secara jelas membantu pembuat keputusan dengan menggunakan teknologi komunikasi, data, dokumen, pengetahuan, dan/atau model untuk melengkapi pekerjaan proses penentuan keputusan. DSS  mampu memperbaiki keefektifan dan kualitas pembuatan keputusan dengan memproses banyak data dan menyediakan solusi alternative dari berbagai macam masalah.</div>
			</div>
			<div class="body_textarea">
			  <div align="justify">
                <p>SPETINDO adalah sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.</p>
			  </div>
			</div>	-->	
			</div>
			<div class="right">
				<div class="innerbanner"></div>
			</div>
		</div>
		<div id="logofooter"><!--<div class="logofoo">--></div></div>
		<div id="fotter">
		  <div class="fotter_copyrights">
			<div align="center">Copyright &copy; Eka Ayu 2013. All Rights Reserved</div>
		  </div>
		</div>
    </form>
</body>
</html>
