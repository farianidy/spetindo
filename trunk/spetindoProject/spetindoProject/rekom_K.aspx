<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rekom_K.aspx.cs" Inherits="spetindoProject.rekom_K" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
<div class="inside bot-indent">
				<div id="slogan">
					<div class="inside">
						<h2><span>SPETINDO</span></h2>
						<p>Sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.</p>
					</div>
				</div>
				<h2 class="extra">Rekomendasi Pemupukan K</h2>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
            <article class="col-2">
				<p class="p0">Rekomendasi pupuk kalium (dalam bentuk KCl) pada status K tanah rendah, sedang dan tinggi ditetapkan menurut tabel berikut ini :</p>
				<asp:Image ID="ImageTabelK" runat="server" Height="150px" 
                ImageUrl="~/images/status hara/tabelK.jpg" Width="300px" />
                <p class="p0">* Diberikan 2 kali(masing-masing 1/2 bagian 1-2 MST, dan 1/2 bagian saat tanaman berumur 3-5 mst)</p>
                <p class="p0">** Takaran Jerami 5t/ha</p>
				</article>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
