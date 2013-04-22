<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info_pempembudi.aspx.cs" Inherits="spetindoProject.info_pempembudi" %>

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
				<div class="register_area">
						  <div class="register_top"></div>
						  <div class="register_bodyarea">
							<div class="register_head">
							  <div align="center">ISI DATA SAWAH ANDA DISINI</div>
							</div>
							<div class="register_textbox">
								<table>
									<tr>
										<td>Jenis Tanah</td>
										<td><asp:DropDownList ID="DropDownJenisTanah" runat="server" Width="130px" Height="20px">
                                            <asp:ListItem Value="3">Aluvial</asp:ListItem>
                                            <asp:ListItem Value="4">Litosol</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td><a href="informasi.aspx" class="comments_link">Cara Penentuan </a></td>
									</tr>
									<tr>
										<td>Suhu</td>
										<td><asp:DropDownList ID="DropDownSuhu" runat="server" Width="130px" Height="20px">
                                            <asp:ListItem Value="5">18˚C - 26 ˚C </asp:ListItem>
                                            <asp:ListItem Value="6">27 ˚C - 31 ˚C </asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td><a href="ukur_suhu.aspx" class="comments_link">Cara Ukur Suhu</a></td>
									</tr>
									<tr>
										<td>Ketinggian Tanah</td>
										<td><asp:DropDownList ID="DropDownTinggiTanah" runat="server" Width="130px" Height="20px">
                                            <asp:ListItem Value="7">Dataran Rendah</asp:ListItem>
                                            <asp:ListItem Value="8">Dataran Tinggi</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td><a href="ukur_tinggi.aspx" class="comments_link">Cara Ukur Tinggi</a></td>
									</tr>
									<tr>
										<td>Luas Lahan</td>
										<td><asp:DropDownList ID="DropDownLuas" runat="server" Width="130px" Height="20px">
                                            <asp:ListItem Value="9">0-30 Ha</asp:ListItem>
                                            <asp:ListItem Value="10">31-918 Ha</asp:ListItem>
                                            <asp:ListItem Value="11">919-1806 Ha</asp:ListItem>
                                            <asp:ListItem Value="12">1807-2694 Ha</asp:ListItem>
                                            <asp:ListItem Value="13">2695-3582 Ha</asp:ListItem>
                                            <asp:ListItem Value="14">3583-4470 Ha</asp:ListItem>
                                            <asp:ListItem Value="15">4471-5358 Ha</asp:ListItem>
                                            <asp:ListItem Value="16">5359-More Ha</asp:ListItem>
                                            </asp:DropDownList></td>
									</tr>
									<tr>
										<td colspan="2"></td>
									</tr>
								</table>
								<div align="none" style="padding:10px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click" 
                                        ImageUrl="~/images/lihatrekom.png" /></div>
							</div>
							
						
						  </div>
						  <div class="register_bottom"></div>
				</div>	
			</div>
			<div class="right">
				<!--<div class="innerbanner"></div>-->	
			</div>
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
