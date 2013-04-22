<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_hama.aspx.cs" Inherits="spetindoProject.add_hama" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
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
                                        <a href="add_admin.aspx" class="comments_link">Admin</a>
                                    </div>
						        </div>
                                <div class="right_textbox">
                                    <div align="right">
							            <a href="add_hama.aspx" class="comments_link">Hama</a>
                                    </div>
						        </div>
                                <div class="right_textbox">
                                    <div align="right">
                                        <a href="add_pupuk.aspx" class="comments_link">Pupuk</a>
                                    </div>
						        </div>
                                <div class="right_textbox">
                                    <div align="right">
                                        <a href="add_dataset.aspx" class="comments_link">Dataset</a>
                                    </div>
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
							            <a href="edit_hama.aspx" class="comments_link">Hama</a>
                                    </div>
						        </div>
						        <div class="right_textbox">
						            <div align="right">
							            <a href="edit_pupuk.aspx" class="comments_link">Pupuk</a>
                                    </div>
						        </div>
						        <div class="right_textbox">
						            <div align="right">
							            <a href="edit_password.aspx" class="comments_link">Password</a>
                                    </div>
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
							            <a href="main page.aspx" class="comments_link">Deskripsi</a>
                                    </div>
						        </div>
						        <div class="right_textbox">
						            <div align="right">
							            <a href="info_hargapasar.aspx" class="comments_link">Harga Pasar</a>
                                    </div>
						        </div>
						        <div class="right_textbox">
						            <div align="right">
							            <a href="info_permintaanpasar.aspx" class="comments_link">Permintaan Pasar</a>
                                    </div>
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
							    <div align="center">ISI DATA HAMA YANG AKAN DITAMBAHKAN</div>
							</div>
							<div class="register_textbox">
							<table>
							    <tr>
								    <td>Tanaman yang Diserang</td>
									<td>
                                        <asp:DropDownList ID="DropDownJenisTanaman" runat="server" Width="130px" Height="20px">
                                        <asp:ListItem Value="TA001">Padi</asp:ListItem>
                                        <asp:ListItem Value="TA002">Jagung</asp:ListItem>
                                        <asp:ListItem Value="TA003">Kedelai</asp:ListItem></asp:DropDownList>
                                    </td>
							    </tr>
								<tr>
								    <td>Nama Hama</td>
									<td><asp:TextBox ID="TextBoxNamaHama" runat="server"></asp:TextBox></td>
								</tr>
								<tr>
									<td>Cara Pencegahan</td>
									<td><asp:TextBox ID="TextBoxPencegahan" runat="server"></asp:TextBox></td>
								</tr>
								<tr>
                                    <td>ID Hama</td>
									<td><asp:Label ID="LabelIDHama" runat="server" Text="Label"></asp:Label></td>
									<td colspan="2"></td>
								</tr>
							</table>
							<div align="none" style="padding:10px">
                                <asp:ImageButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click" ImageUrl="~/images/buttmasuk.png" /></div>
							</div>
                        </div>
						<div class="register_bottom"></div>
			        </div>
		        </div>
        	    <div class="right">
                    <asp:Button ID="Logout" runat="server" Text="Logout" onclick="Logout_Click" />
			    </div>
		    </div>

            <div id="logofooter"><!--<div class="logofoo">--></div>

		    <div id="fotter">
		      <div class="fotter_copyrights">
			    <div align="center">Copyright &copy; Eka Ayu 2013. All Rights Reserved</div>
		      </div>
		    </div>
        </form>
    </body>
</html>
