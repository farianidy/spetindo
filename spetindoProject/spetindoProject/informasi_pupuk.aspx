﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="informasi_pupuk.aspx.cs" Inherits="spetindoProject.informasi_pupuk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
    <div class="inside bot-indent">
	    <div id="slogan">
		    <div class="inside">
		        <h2><span>SPETINDO</span></h2>
		        <p>
                    Sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.
                </p>
			</div>
		</div>
    </div>
	<h2 class="extra">Pemilihan Pupuk</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
    <form id="form1" runat="server">
        <div class="inside1">
	        <div class="wrap row-2">
			    <article class="col-1">
				    <h2>Cara Mengukur Status Hara</h2>
                </article>
				<article class="col-2">
                    <ul class="list1">
                        <li><a href="komponen.aspx" class="comments_link">Komponen Perangkat Uji Tanah Sawah</a></li>
                        <li><a href="ambil_tanah.aspx" class="comments_link">Cara Pengambilan Contoh Tanah</a></li>
					    <!--<li><a href="status_N.aspx" class="comments_link">Cara Penetapan Status N</a></li>
                        <li><a href="status_P.aspx" class="comments_link">Cara Penetapan Hara P</a></li>
                        <li><a href="status_K.aspx" class="comments_link">Cara Penetapan Hara K</a></li>-->
					</ul>
				</article>
                <article class="col-3">
                    <ul class="listt">
                        <!--<li><a href="ambil_tanah.aspx" class="comments_link">Cara Pengambilan Contoh Tanah</a></li>
					    <li><a href="rekom_N.aspx" class="comments_link">Rekomendasi Pepupukan Status N</a></li>
                        <li><a href="rekom_P.aspx" class="comments_link">Rekomendasi Pepupukan Hara P</a></li>
                        <li><a href="rekom_K.aspx" class="comments_link">Rekomendasi Pepupukan Hara K</a></li>-->
                        <li><a href="status_N.aspx" class="comments_link">Cara Penetapan Status N</a></li>
                        <li><a href="status_P.aspx" class="comments_link">Cara Penetapan Hara P</a></li>
                        <li><a href="status_K.aspx" class="comments_link">Cara Penetapan Hara K</a></li>
                    </ul>
                </article>
		    </div>
	    </div>
        <div class="inside1">
	        <div class="wrap row-2">
			    <article class="col-1">
				    <h2>Status Hara Berdasarkan Wilayah (Peta Status Hara)</h2>
                </article>
				<article class="col-2">
                    <ul class="list1">
					    <li>Provinsi: </li>
                        <li>Kabupaten/Kota: </li>
					</ul>
				</article>
                <article class="col-3">
                    <ul class="listt">
					    <li>
                            <asp:DropDownList ID="ListProvinsi" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ListProvinsi_SelectedIndexChanged" Width="130px" Height="20px"></asp:DropDownList>
                        </li>
                        <li>
                            <asp:DropDownList ID="ListKota" runat="server" Width="130px" Height="20px"></asp:DropDownList>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButton2" runat="server" onclick="ImageButton2_Click"  CssClass="link2"
                        ImageUrl="~/images/button/button_lihat_hasil.png" />
                </article>
                <div class="clear"></div>
                <asp:Panel ID="PanelHara" Visible=false runat="server">
                    <h2>Status Unsur Hara P, Luas Lahan Sawah (Ha), Kebutuhan Pupuk SP36 dengan satuan Ton (dalam 1 musim taman) </h2>
                    <asp:GridView ID="GridViewHaraP" runat="server" CssClass="mGrid" PagerStyle-CssClass="pgr"
                        GridLines="None" EmptyDataText="Data tidak tersedia.">
                    </asp:GridView>

                    <h2>Status Unsur Hara K, Luas Lahan Sawah (Ha), Kebutuhan Pupuk KCl dengan satuan Ton (dalam 1 musim taman) </h2>
                    <asp:GridView ID="GridViewHaraK" runat="server" CssClass="mGrid" PagerStyle-CssClass="pgr" 
                        GridLines="None" EmptyDataText="Data tidak tersedia.">
                    </asp:GridView>
                </asp:Panel>
		    </div>
	    </div>
        <div class="inside1">
	        <div class="wrap row-2">
			    <article class="col-1">
				    <h2>Rekomendasi Pemupukan Berdasarkan Tanaman</h2>
                </article>
				<article class="col-2">
                    <ul class="list1">
					    <li>Tanaman: </li>
                        <li>Luas Lahan: </li>
                        <li>Status Hara N : </li>
                        <li>Status Hara P : </li>
                        <li>Status Hara K : </li>
					</ul>
				</article>
                <article class="col-3">
                    <ul class="listt">
					    <li>
                            <asp:DropDownList ID="DropDownListTanaman" runat="server" Width="130px" Height="20px">
                                <asp:ListItem Value="TA001">Padi</asp:ListItem>
                                <asp:ListItem Value="TA002">Jagung</asp:ListItem>
                                <asp:ListItem Value="TA003">Kedelai</asp:ListItem>
                            </asp:DropDownList>
                        </li>
                        <li>
                            <asp:TextBox ID="TextBoxLuas" runat="server"></asp:TextBox> Hektar
                        </li>
                        <li>
                            <asp:DropDownList ID="DropDownListStatusN" runat="server" Width="130px" Height="20px">
                                <asp:ListItem Value="ST001">Rendah</asp:ListItem>
                                <asp:ListItem Value="ST002">Sedang</asp:ListItem>
                                <asp:ListItem Value="ST003">Tinggi</asp:ListItem>
                            </asp:DropDownList>
                        </li>
                        <li>
                            <asp:DropDownList ID="DropDownListStatusP" runat="server" Width="130px" Height="20px">
                                <asp:ListItem Value="ST001">Rendah</asp:ListItem>
                                <asp:ListItem Value="ST002">Sedang</asp:ListItem>
                                <asp:ListItem Value="ST003">Tinggi</asp:ListItem>
                            </asp:DropDownList>
                        </li>
                        <li>
                            <asp:DropDownList ID="DropDownListStatusK" runat="server" Width="130px" Height="20px">
                                <asp:ListItem Value="ST001">Rendah</asp:ListItem>
                                <asp:ListItem Value="ST002">Sedang</asp:ListItem>
                                <asp:ListItem Value="ST003">Tinggi</asp:ListItem>
                            </asp:DropDownList>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click"  CssClass="link2"
                        ImageUrl="~/images/button/button_lihat_hasil.png" />
                </article>
                <div class="clear"></div>
                <!--<asp:GridView ID="GridView1" runat="server" CssClass="mGrid" PagerStyle-CssClass="pgr" GridLines="None"
                    EmptyDataText="Data tidak tersedia." >
                </asp:GridView>-->
                <br />
                <asp:Panel ID="PanelPupuk" Visible=false runat="server">
                Diberi Pupuk KCL dengan takaran
                <asp:Label ID="LabelK" runat="server" Text="0"></asp:Label> Kg, Pupuk SP36 dengan takaran
                <asp:Label ID="LabelP" runat="server" Text="0"></asp:Label> Kg, Pupuk Urea dengan takaran
                <asp:Label ID="LabelN" runat="server" Text="0"></asp:Label> Kg, Total harga pengeluaran pupuk
                <asp:Label ID="HargaK" runat="server" Text="0"></asp:Label> +
                <asp:Label ID="HargaP" runat="server" Text="0"></asp:Label> +
                <asp:Label ID="HargaN" runat="server" Text="0"></asp:Label> =
                <asp:Label ID="LabelTotHar" runat="server" Text="0"></asp:Label> Rupiah
                </asp:Panel>
		    </div>
	    </div>  
    </form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
