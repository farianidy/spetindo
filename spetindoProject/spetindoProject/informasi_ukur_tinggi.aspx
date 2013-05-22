<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="informasi_ukur_tinggi.aspx.cs" Inherits="spetindoProject.informasi_ukur_tinggi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
<div class="inside bot-indent">
				<div id="slogan">
					<div class="inside">
						<h2><span>SPETINDO</span></h2>
						<p>Sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.</p>
					</div>
				</div>
				<h2 class="extra">Cara Mengukur Ketinggian Tanah</h2>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
<article class="col-2">
							<h2><b>Bahan dan Alat</b></h2>
							<!--<div class="img-box"><img src="images/tanah.jpg">Lnventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem eaque ipsa quae sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.</div>-->
							<p class="p1">Bahan yang digunakan adalah tekanan udara di sekitar lahan sebagai objek pengamatan dan kertas sebagai media pencatat hasil.</p>
							<asp:Image ID="ImageTekanan" runat="server" Height="93px" 
                            ImageUrl="~/images/tekanan_udara.jpg" Width="146px" />
                            <asp:Image ID="ImageKertas" runat="server" Height="93px" 
                            ImageUrl="~/images/kertas.jpg" Width="92px" />
                            <p class="p0">Alat yang digunakan adalah Barometer aneroid sebagai alat untuk pengukuran tekanan udara dan pulpen sebagai alat untuk mencatat hasil pengamatan.</p>
						    <asp:Image ID="ImageBarometer" runat="server" Height="93px" 
                            ImageUrl="~/images/Barometer.jpg" Width="109px" />
                             <asp:Image ID="ImagePulpen" runat="server" Height="93px" 
                            ImageUrl="~/images/pulpen.jpg" Width="54px" />
                            <h2><b>Prosedur Percobaan</b></h2>
							<p class="p0">- Ukur Tekanan udara di sekitar lahan menggunakan barometer.</p>
							<!--<p class="p0"><b>Rumus Perhitungan Ketinggian Tanah</b></p>
                            <p class="p0">H = (76 - P)100</p>
							<p class="p0">H = ketinggian dari permukaan laut (meter)</p>
                            <p class="p0">P = tekanan udara (cm Hg) *Hasil perhitungan menggunakan Barometer*</p>
                            <p class="p0">Jika hasil perhitungan H > 700 maka Dataran Tinggi</p>
                            <p class="p0">Jika hasil perhitungan H <= 700 maka Dataran Tinggi</p>-->
                            <form id="form1" runat="server">
                            <p class="p0"><b>Masukkan Jumlah Tekanan Udara</b></p>
                            <asp:TextBox ID="TextBoxTekanan" runat="server"></asp:TextBox>
                            <asp:Button ID="ButtonHitung" runat="server" 
        Text="Hitung Ketinggian Tanah" onclick="ButtonHitung_Click"></asp:Button>
                            <p class="p0"><b>Lahan anda memiliki ketinggian <asp:Label ID="LabelTinggi" runat="server" Text=""></asp:Label> meter dpl sehingga tergolong <asp:Label ID="LabelDataran" runat="server" Text=""></asp:Label></b></p>			    
                            </form>
                        </article>
                        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
