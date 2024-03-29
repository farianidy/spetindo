﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="tambah_kota.aspx.cs" Inherits="spetindoProject.tambah_kota" %>
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
	<h2 class="extra">Penambahan Kota</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
<div class="inside1">
	    <div class="wrap row-2">
            <form id="form1" runat="server">

			    <article class="col-1">
				    <h2>Data Kota Baru</h2>
                </article>
				<article class="col-2">
                    <ul class="list1">
                        <li>Nama Provinsi: </li>
					    <li>Nama Kota: </li>
					</ul>
				</article>
                <article class="col-3">
                    <ul class="listt">
                        <li>
                            <asp:DropDownList ID="listProvinsi" runat="server">
                            </asp:DropDownList>
                            <asp:Label ID="LabelIDProvinsi" runat="server" Text="" Enabled="false" Visible="false"></asp:Label>
                        </li>
                        <li>
                            <asp:TextBox ID="TextBoxNamKota" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <asp:Panel ID="PanelPengumuman" Visible=false runat="server">
                            <asp:Label ID="Label1" runat="server" Text="Data Kota Berhasil Ditambahkan"></asp:Label>
                            </asp:Panel>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButtonTambah" runat="server" onclick="ImageButtonTambah_Click"  CssClass="link2"
                        ImageUrl="~/images/button/button_tambah.png" />
                    <asp:ImageButton ID="ImageButtonKembali" runat="server" onclick="ImageButtonKembali_Click"  CssClass="link2"
                        ImageUrl="~/images/button/kembali_2.png" />
                    <asp:ImageButton ID="ImageButton2" runat="server" onclick="ImageButton2_Click"  CssClass="link2"
                    ImageUrl="~/images/button/keluar_2.png" />
                </article>
            </form>
            <div class="clear"></div>
		</div>
	</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
