<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="komponen.aspx.cs" Inherits="spetindoProject.komponen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
<div class="inside bot-indent">
				<div id="slogan">
					<div class="inside">
						<h2><span>SPETINDO</span></h2>
						<p>Sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.</p>
					</div>
				</div>
				<h2 class="extra">Komponen Perangkat Uji Tanah Sawah</h2>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
        <article class="col-2">
                <h2><b>1. Pereaksi</b></h2>
				<p class="p0">1.1 Pereaksi P-1               : 250 ml</p>
				<p class="p0">1.2 Pereaksi P-2               : 2,0 g</p>
                <p class="p0">1.3 Pereaksi K-1               : 120 ml</p>
				<p class="p0">1.4 Pereaksi K-2               : 15 ml</p>
                <p class="p0">1.5 Pereaksi K-3               : 15 ml</p>
				<p class="p0">1.6 Air Destilata (Aquadest)   : 250 ml</p>		    
                <h2><b>Gambar</b></h2>
				<asp:Image ID="Imagekom1" runat="server" Height="93px" 
                ImageUrl="~/images/status hara/kom1.jpg" Width="146px" />
                <asp:Image ID="Imagekom2" runat="server" Height="93px" 
                ImageUrl="~/images/status hara/kom2.jpg" Width="146px" />
                <h2><b>2. Bagan Warna</b></h2>
				<p class="p0">2.1 Bagan warna N tanah</p>
				<p class="p0">2.2 Bagan warna P tanah</p>
                <p class="p0">2.3 Bagan warna K tanah</p>
				<p class="p0">2.4 Bagan warna pH tanah</p>
                <h2><b>3. Peralatan</b></h2>
				<p class="p0">3.1 Tabung reaksi volume 10ml  : 6 buah</p>
				<p class="p0">3.2 Sendok stainless           : 1 buah</p>
                <p class="p0">3.3 Pengaduk dari kaca         : 1 buah</p>
				<p class="p0">3.4 Rak tabung reaksi          : 1 buah</p>
                <p class="p0">3.5 Kertas tissue pengering    : 1 bungkus</p>
				<p class="p0">3.6 Syringe 2 ml               : 1 buah</p>
				<p class="p0">3.7 Sikat pembersih tabung reaksi : 1 buah</p>
            </article>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
