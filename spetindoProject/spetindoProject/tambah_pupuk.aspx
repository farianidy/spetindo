<%@ Page Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="tambah_pupuk.aspx.cs" Inherits="spetindoProject.tambah_pupuk" %>
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
	<h2 class="extra">Penambahan Pupuk</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
    <div class="inside1">
	    <div class="wrap row-2">
            <form id="form1" runat="server">
                

			    <article class="col-1">
				    <h2>Data Ukuran Baru</h2>
                </article>
				<article class="col-2">
                    <ul class="list1">
					    <li>Provinsi: <br /><a href="tambah_prov.aspx" class="comments_link">Tambah Provinsi</a></li>
                        <li>Kota: <br /><a href="tambah_kota.aspx" class="comments_link">Tambah Kota</a></li>
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
                            <asp:Label ID="LabelIDKota" runat="server" Text="" Enabled="false" Visible="false"></asp:Label>
                        </li>
                        <li>
                            <asp:DropDownList ID="listStatus" runat="server">
                            </asp:DropDownList>
                            <asp:Label ID="LabelIDStatus" runat="server" Text="" Enabled="false" Visible="false"></asp:Label>
                        </li>
                        <li>
                            <asp:DropDownList ID="listPupuk" runat="server">
                                <asp:ListItem Value="PU003">SP36</asp:ListItem>
                                <asp:ListItem Value="PU005">KCL</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="LabelIDPupuk" runat="server" Text="" Enabled="false" Visible="false"></asp:Label>
                        </li>
                        <li>
                            <asp:TextBox ID="TextBoxLuLa" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <asp:TextBox ID="TextBoxKebPupuk" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <asp:Panel ID="PanelPengumuman" Visible=false runat="server">
                            <asp:Label ID="Label1" runat="server" Text="Data Pupuk Berhasil Ditambahkan"></asp:Label>
                            </asp:Panel>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButtonTambah" runat="server" onclick="ImageButtonTambah_Click"  CssClass="link2"
                        ImageUrl="~/images/button/button_tambah.png" />
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
