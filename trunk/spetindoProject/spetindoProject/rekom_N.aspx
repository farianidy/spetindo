<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rekom_N.aspx.cs" Inherits="spetindoProject.rekom_N" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
<div class="inside bot-indent">
				<div id="slogan">
					<div class="inside">
						<h2><span>SPETINDO</span></h2>
						<p>Sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.</p>
					</div>
				</div>
				<h2 class="extra">Rekomendasi Pemupukan N</h2>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
        <article class="col-2">
				<p class="p0">Rekomendasi pupuk urea pada status N tanah rendah, sedang atau tinggi untuk tanah berliat atau berpasir dalam tabel berikut ini :</p>
				<asp:Image ID="ImageTanah" runat="server" Height="150px" 
                ImageUrl="~/images/status hara/tabelN.jpg" Width="300px" />
                <p class="p0">* Diberikan 2 kali(masing-masing 1/3 pada 1-2 minggu setelah tanam(MST), dan 2/3 bagian 6-7 MST)</p>
                <p class="p0">** Diberikan 3 kali (masing-masing 1/3 bagian pada 1-2 MST, 3-5 MST, dan 6-7 MST)</p>
				<p class="p0">*** Untuk optimalisasi pemupukan N, tingkat kecukupan N dimonitor dengan BWD atau LCC setelah tanaman berumur >3 MST dalam periode 7-10 hari sekali sampai fase primordia</p>
            </article>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
