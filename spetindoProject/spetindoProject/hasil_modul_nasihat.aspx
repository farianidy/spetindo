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
    <h2 class="extra">Berdasarkan perkiraan perhitungan di bawah ini lahan anda direkomendasikan untuk ditanami padi karena menghasilkan keuntungan yang paling besar</h2>
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
															    <li>452 kwintal</li>
															    <li>700 kwintal</li>
															    <li>919 kwintal </li>
														    </ul>
													    </article>
													    <article class="col-3 indent">
														    <h4 class="aligncenter">Harga Pasar</h4>
														    <ul class="info-list1 alt">
															    <li>7000</li>
															    <li>5500</li>
															    <li>8000</li>
														    </ul>
													    </article>
													    <article class="col-4 indent">
														    <h4 class="aligncenter">Permintaan Pasar</h4>
														    <ul class="info-list1 alt">
															    <li>1000</li>
															    <li>500</li>
															    <li>125</li>
														    </ul>
													    </article>
													    <article class="col-5 indent">
														    <h4 class="aligncenter">Rekomendasi</h4>
														    <ul class="info-list1 alt">
															    <li>1000/452 x 7000 = 15.486,7256 </li>
															    <li>500/700 x 5500 = 3.928,5714</li>
															    <li>125/919 x 8000 = 1.088,13928</li>
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
