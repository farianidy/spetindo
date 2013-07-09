<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="ubah_pupuk.aspx.cs" Inherits="spetindoProject.ubah_pupuk" %>
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
	<h2 class="extra">Pengubahan Pupuk</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
<form id="form1" runat="server">
<div class="inside1">
	    <div class="wrap row-2">
            
                <!--<asp:ImageButton ID="ImageButton2" runat="server" onclick="ImageButton2_Click"  CssClass="link2"
                    ImageUrl="~/images/button/keluar.png" />-->

			    <article class="col-1">
				    <h2>Ubah Data Pupuk</h2>
                </article>
				<article class="col-2">
                    <ul class="list1">
					    <li>Provinsi:</li>
                        <li>Kota:</li>
                        <li>Status: </li>
                        <li>Pupuk: </li>
                        <li>Luas Lahan: </li>
                        <li>Kebutuhan Pupuk: </li>
					</ul>
				</article>
                <article class="col-3">
                    <ul class="listt">
					    <li>
                            <asp:DropDownList ID="listProvinsi" runat="server" AutoPostBack="True" onselectedindexchanged="listProvinsi_SelectedIndexChanged">
                            </asp:DropDownList>
                        </li>
                        <li>
                            <asp:DropDownList ID="listKota" runat="server">
                            </asp:DropDownList>
                            <asp:Label ID="LabelIDKota" runat="server" Text="" Enabled="false" Visible=false></asp:Label>
                        </li>
                        <li>
                            <asp:DropDownList ID="listStatus" runat="server">
                            </asp:DropDownList>
                            <asp:Label ID="LabelIDStatus" runat="server" Text="" Enabled="false" Visible=false></asp:Label>
                        </li>
                        <li>
                            <asp:DropDownList ID="listPupuk" runat="server">
                                <asp:ListItem Value="PU003">SP36</asp:ListItem>
                                <asp:ListItem Value="PU005">KCL</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="LabelIDPupuk" runat="server" Text="" Enabled="false" Visible=false></asp:Label>
                        </li>
                        <li>
                            <asp:TextBox ID="TextBoxLuLa" runat="server"></asp:TextBox> Hektar
                        </li>
                        <li>
                            <asp:TextBox ID="TextBoxKebPupuk" runat="server"></asp:TextBox> Ton
                        </li>
                        <li>
                            <asp:Panel ID="PanelPengumuman" Visible=false runat="server">
                            <asp:Label ID="Label2" runat="server" Text="Data Pupuk Berhasil Dirubah"></asp:Label>
                            </asp:Panel>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButtonTambah" runat="server" onclick="ImageButtonTambah_Click"  CssClass="link2"
                        ImageUrl="~/images/button/ubah_2.png" />
                </article>
            
            <div class="clear"></div>
		</div>
	</div>
    <div class="inside1">
	    <div class="wrap row-2">
			    <article class="col-1">
				    <h2>Ubah Harga Pupuk</h2>
                </article>
				<article class="col-2">
                    <ul class="list1">
					    <li>Nama Pupuk:</li>
                        <li>Harga:</li>
					</ul>
				</article>
                <article class="col-3">
                    <ul class="listt">
                        <li>
                            <asp:DropDownList ID="DroplistPupuk" runat="server">
                            </asp:DropDownList>
                            <asp:Label ID="Label1" runat="server" Text="" Enabled="false" Visible=false></asp:Label>
                        </li>
                        <li>
                            Rp.<asp:TextBox ID="TextBoxHarga" runat="server"></asp:TextBox>/Kg
                        </li>
                        <li>
                            <asp:Panel ID="Panel1" Visible=false runat="server">
                            <asp:Label ID="Label3" runat="server" Text="Data Harga Pupuk Berhasil Dirubah"></asp:Label>
                            </asp:Panel>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButtonUbah" runat="server" onclick="ImageButtonUbah_Click"  CssClass="link2"
                        ImageUrl="~/images/button/ubah_2.png" />
                    <asp:ImageButton ID="ImageButton1" runat="server" onclick="ImageButton2_Click"  CssClass="link2"
                    ImageUrl="~/images/button/keluar_2.png" />
                </article>
            <div class="clear"></div>
		</div>
	</div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
