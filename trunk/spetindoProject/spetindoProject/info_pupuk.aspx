<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info_pupuk.aspx.cs" Inherits="spetindoProject.info_pupuk" %>

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
            <div class="head"> Rekomendasi Pemupukan</div>
			<div class="body_textarea">
			  <div align="justify">Pilih tanaman yang akan ditanam</div>
			</div>
                <asp:DropDownList ID="DropDownListTanaman" runat="server">
                    <asp:ListItem Value="TA001">Padi</asp:ListItem>
                    <asp:ListItem Value="TA002">Jagung</asp:ListItem>
                    <asp:ListItem Value="TA003">Kedelai</asp:ListItem>
                </asp:DropDownList></br></br>
                <asp:Button ID="ButtonPupuk" runat="server" Text="Cek" 
                    onclick="ButtonPupuk_Click" /></br></br>
                <!--<asp:Label ID="LabelNamaPupuk" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="LabelJenisPupuk" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="LabelHarga" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="LabelTakaran" runat="server" Text="Label"></asp:Label>-->
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                <div class="head"> Cek Status Hara</div>
			    <div class="body_textarea">
			  <div align="justify">Pilih provinsi dan kabupaten</div>
			    </div>
                <asp:Label ID="LabelProv" runat="server" Text="Provinsi : "></asp:Label>
                <asp:DropDownList ID="ListProvinsi" runat="server" AutoPostBack="True" onselectedindexchanged="ListProvinsi_SelectedIndexChanged">
                </asp:DropDownList></br>
                <asp:Label ID="LabelKota" runat="server" Text="Kabupaten / Kota : "></asp:Label>
                <asp:DropDownList ID="ListKota" runat="server">
                </asp:DropDownList></br>
				<asp:Button ID="ButtonHara" runat="server" Text="Cek Status Hara" 
                    onclick="ButtonHara_Click" /></br>
                <asp:Label ID="LabelHaraP" runat="server" Text="Status Unsur Hara P"></asp:Label></br>
                <asp:GridView ID="GridViewHaraP" runat="server">
                </asp:GridView>
                <asp:Label ID="LabelHaraK" runat="server" Text="Status Unsur Hara K"></asp:Label></br>
                <asp:GridView ID="GridViewHaraK" runat="server">
                </asp:GridView>
			</div>
             
			<div class="right">
				<!--<div class="innerbanner"></div>-->
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
