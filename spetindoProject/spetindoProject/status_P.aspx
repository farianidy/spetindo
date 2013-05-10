<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="status_P.aspx.cs" Inherits="spetindoProject.status_P" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
<div class="inside bot-indent">
				<div id="slogan">
					<div class="inside">
						<h2><span>SPETINDO</span></h2>
						<p>Sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.</p>
					</div>
				</div>
				<h2 class="extra">Penetapan Status P Tanah</h2>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
        <article class="col-2">
                <h2><b>Prosedur Percobaan</b></h2>
				<p class="p0">1. Contoh tanah uji sebanyak 1/2 sendok spatula contoh tanah uji atau 0,5 cm tanah yang diambil dengan syringe (spet) dimasukkan ke dalam tabung reaksi, atau jumlah tanah sebanyak garis 0,5 ml yang tertera pada tabung reaksi</p>
				<p class="p0">2. Tambahkan 3 ml pereaksi P-1, kemudian diaduk sampai merata dengan pengaduk kaca</p>
                <p class="p0">3. Tambahkan 5-10 butir atau seujung spatula pereaksi P-2, dikocok 1 menit</p>
				<p class="p0">4. Diamkan +- 10 menit</p>
				<p class="p0">5. Bandingkan warna biru yang muncul dari larutan jernih di permukaan tanah dengan bagan warna P tanah</p>		    
                <h2><b>Gambar</b></h2>
				<asp:Image ID="Imagep1" runat="server" Height="93px" 
                ImageUrl="~/images/status hara/p1.jpg" Width="100px" />
                <asp:Image ID="Imagep2" runat="server" Height="93px" 
                ImageUrl="~/images/status hara/p2.jpg" Width="146px" />
                <asp:Image ID="Imagep3" runat="server" Height="93px" 
                ImageUrl="~/images/status hara/p3.jpg" Width="146px" />
                <asp:Image ID="Imagep4" runat="server" Height="93px" 
                ImageUrl="~/images/status hara/p4.jpg" Width="146px" />
            </article>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
