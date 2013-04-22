<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="informasi.aspx.cs" Inherits="spetindoProject.informasi" %>

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
					    <div class="login_top"></div>
                            <div class="login_bodyarea">
                                <div class="comment_head">
						            <div align="center">Nasihat </div>
						        </div>
                                <div class="right_textbox">
						            <div align="right">
							            <a href="main page.aspx" class="comments_link">Deskripsi</a>
                                    </div>
						        </div>
                                <div class="right_textbox">
						            <div align="right">
							            <a href="info_pempembudi.aspx" class="comments_link">Modul Nasihat</a>
                                    </div>
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
							            <a href="main page.aspx" class="comments_link">Deskripsi</a>
                                    </div>
						        </div>
						        <div class="right_textbox">
						            <div align="right">
							            <a href="info_pupuk.aspx" class="comments_link">Pemilihan Pupuk</a>
                                    </div>
						        </div>
						        <div class="right_textbox">
						            <div align="right">
							            <a href="info_hama.aspx" class="comments_link">Penanganan Hama</a>
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
							            <a href="main_page.aspx" class="comments_link">Deskripsi</a>
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
				    </asp:Panel>
			    </div>
                <div class="midarea">
				    <div class="head">Informasi Pengukuran</div>
                    <asp:Panel ID="panelIsiUtama" runat="server" Visible="true">
                        <div class="body_textarea">
                            <h3>Jenis Tanah</h3>
                            <div align="justify">
                                <h4>1. Tanah Aluvial</h4>
                                <p>
                                    Tanah Aluvial disebut juga tanah endapan karena terbentukdari endapan lumpur yang 
                                    terbawa air hujan ke dataran rendah. Tanah ini bersifat subur karena terbentuk dari 
                                    kikisan tanah humus.
                                </p>
                            </div>
                            <div align="justify">
                                <h4>2. Tanah Litosol</h4>
                                <p>
                                    Tanah litosol merupakan jenis tanah berbatu-batu dengan lapisan tanah yang tidak 
                                    begitu tebal. Bahannya berasal dari jenis batuan beku yang belum mengalami proses 
                                    pelapukan secara sempurna. Jenis tanah ini banyak ditemukan di lereng gunung dan 
                                    pegunungan di seluruh Indonesia.
                                </p>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
					
		    <div id="logofooter"></div>

		    <div id="fotter">
                <div class="fotter_copyrights">
                    <div align="center">Copyright &copy; Vincitore 2013. All Rights Reserved</div>
                </div>
            </div>
        </form>
    </body>
</html>
