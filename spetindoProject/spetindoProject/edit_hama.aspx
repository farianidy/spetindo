﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit_hama.aspx.cs" Inherits="spetindoProject.edit_hama" %>

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
				 <div class="comments_area">
					<div class="login_top"></div>
					<div class="login_bodyarea">
						<div class="comment_head">
						  <div align="center">Tambah </div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="add_admin.aspx" class="comments_link">Admin</a></div>
						</div>
                        <div class="right_textbox">
						  <div align="right">
							<a href="add_hama.aspx" class="comments_link">Hama</a></div>
						</div>
                        <div class="right_textbox">
						  <div align="right">
							<a href="add_pupuk.aspx" class="comments_link">Pupuk</a></div>
						</div>
                        <div class="right_textbox">
						  <div align="right">
							<a href="add_dataset.aspx" class="comments_link">Dataset</a></div>
						</div>
					</div>
					<div class="login_bottom"></div>
					<div class="login_top"></div>
					<div class="login_bodyarea">
						<div class="comment_head">
						  <div align="center">Update</div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="edit_hama.aspx" class="comments_link">Hama</a></div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="edit_pupuk.aspx" class="comments_link">Pupuk </a></div>
						</div>
						<div class="right_textbox">
						  <div align="right">
							<a href="edit_password.aspx" class="comments_link">Password</a></div>
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
             <asp:DropDownList ID="listHama" runat="server">
                    </asp:DropDownList></br></br>
                <asp:Button ID="ButtonHama" runat="server" Text="Cek" 
                    onclick="ButtonHama_Click"/></br></br>

                    <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                </br>

                <div class="register_head">
							  <div align="center">Edit Hama</div>
							</div>
							<div class="register_textbox">
								<table>
									<tr>
										<td>Nama Hama</td>
										<td><asp:TextBox ID="TextBoxNama" runat="server"></asp:TextBox></td>
									</tr>
									<tr>
										<td>Cara Pencegahan</td>
										<td><asp:TextBox ID="TextBoxPencegahan" runat="server"></asp:TextBox></td>
									</tr>
									<tr>
										<td colspan="2"></td>
									</tr>
								</table>
								<div align="none" style="padding:10px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        ImageUrl="~/images/buttmasuk.png" onclick="ImageButton1_Click" /></div>
							</div>

			</div>
			<div class="right">
				<!--<div class="innerbanner"></div>-->
                <asp:Button ID="Logout" runat="server" Text="Logout" onclick="Logout_Click" />
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
