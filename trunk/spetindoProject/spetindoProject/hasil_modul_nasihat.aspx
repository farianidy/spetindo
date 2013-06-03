<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hasil_modul_nasihat.aspx.cs" Inherits="spetindoProject.hasil_modul_nasihat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
<div class="inside bot-indent">
				<div id="slogan">
					<div class="inside">
						<h2><span>SPETINDO</span></h2>
						<p>Sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.</p>
					</div>
				</div>
				<h2 class="extra">Hasil Rekomendasi</h2>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
    <h2 class="extra">Berdasarkan perkiraan perhitungan di bawah ini lahan anda direkomendasikan untuk ditanami 
        <asp:Label ID="LabelTanamanRekom" runat="server" Text="Label"></asp:Label> karena menghasilkan nilai rekomendasi yang paling besar</h2>
    <div class="box extra">
	    <div class="border-right">
		    <div class="border-bot">
			    <div class="border-left">
				    <div class="left-top-corner1">
					    <div class="right-top-corner1">
						    <div class="right-bot-corner">
							    <div class="left-bot-corner">
								    <div class="inner">
									    <div class="left-indent line-ver1">
										    <div class="line-ver2">
											    <div class="line-ver3">
												    <div class="wrap line-ver4">
													    <article class="col-1 indent">
														    <h4>Jenis Tanaman</h4>
														    <ul class="info-list1">
															    <li>Padi</li>
															    <li>Jagung</li>
															    <li>Kedelai</li>
														    </ul>
													    </article>
													    <article class="col-2 indent">
														    <h4 class="aligncenter">Hasil Panen</h4>
														    <ul class="info-list1 alt">
															    <li><asp:Label ID="Label1" runat="server" Text="Label"> Kwintal</asp:Label></li>
															    <li><asp:Label ID="Label2" runat="server" Text="Label"> Kwintal</asp:Label></li>
															    <li><asp:Label ID="Label3" runat="server" Text="Label"> Kwintal</asp:Label></li>
														    </ul>
													    </article>
													    <article class="col-3 indent">
														    <h4 class="aligncenter">Harga Pasar</h4>
														    <ul class="info-list1 alt">
															    <li><asp:Label ID="LabelHargaPadi" runat="server" Text="Label"></asp:Label></li>
															    <li><asp:Label ID="LabelHargaJagung" runat="server" Text="Label"></asp:Label></li>
															    <li><asp:Label ID="LabelHargaKedelai" runat="server" Text="Label"></asp:Label></li>
														    </ul>
													    </article>
                                                        <article class="col-4 indent">
														    <h4 class="aligncenter">Total Pengeluaran</h4>
														    <ul class="info-list1 alt">
															    <li><asp:Label ID="LabelPengPadi" runat="server" Text="Label">Rp</asp:Label></li>
															    <li><asp:Label ID="LabelPengJagung" runat="server" Text="Label">Rp</asp:Label></li>
															    <li><asp:Label ID="LabelPengKedelai" runat="server" Text="Label">Rp</asp:Label></li>
														    </ul>
													    </article>
													    <article class="col-5 indent">
														    <h4 class="aligncenter">Total Keuntungan</h4>
														    <ul class="info-list1 alt">
															    <li><asp:Label ID="LabelRekomPadi" runat="server" Text="Label"></asp:Label></li>
															    <li><asp:Label ID="LabelRekomJagung" runat="server" Text="Label"></asp:Label></li>
															    <li><asp:Label ID="LabelRekomKedelai" runat="server" Text="Label"></asp:Label></li>
														    </ul>
													    </article>
													    <div class="clear"></div>
												    </div>
											    </div>
										    </div>
									    </div>
								    </div>
							    </div>
						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
	    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
