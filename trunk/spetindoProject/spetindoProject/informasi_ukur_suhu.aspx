<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="informasi_ukur_suhu.aspx.cs" Inherits="spetindoProject.informasi_ukur_suhu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
<div class="inside bot-indent">
				<div id="slogan">
					<div class="inside">
						<h2><span>SPETINDO</span></h2>
						<p>Sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.</p>
					</div>
				</div>
				<h2 class="extra">Cara Mengukur Suhu Tanah</h2>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
<form id="form1" runat="server">
					    <article class="col-2">
							<h2><b>Bahan dan Alat</b></h2>
							<!--<div class="img-box"><img src="images/tanah.jpg Height="93px" Width="146px">Lnventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem eaque ipsa quae sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.</div>-->
							<p class="p1">Bahan yang digunakan adalah tanah sebagai objek pengamatan dan kertas sebagai media pencatat hasil.</p>
							<asp:Image ID="ImageTanah" runat="server" Height="93px" 
                            ImageUrl="~/images/tanah.jpg" Width="146px" />
                            <asp:Image ID="ImageKertas" runat="server" Height="93px" 
                            ImageUrl="~/images/kertas.jpg" Width="92px" />
                            <p class="p0">Alat yang digunakan adalah Termometer tanah sebagai alat untuk pengukuran suhu tanah dan pulpen sebagai alat untuk mencatat hasil pengamatan.</p>
						    <asp:Image ID="ImageTermometer" runat="server" Height="93px" 
                            ImageUrl="~/images/termometer_tanah.jpg" Width="54px" />
                             <asp:Image ID="ImagePulpen" runat="server" Height="93px" 
                            ImageUrl="~/images/pulpen.jpg" Width="54px" />
                            <h2><b>Prosedur Percobaan</b></h2>
							<p class="p0">- Tanah dilubangi dengan ketentuan 0, 5, 10, 20, 30, dan 50 cm.</p>
							<p class="p0">- Termometer dimasukkan ke dalam rongga tanah yang telah berlubang tersebut selama 5 menit pada setiap lubang.</p>
                            <p class="p0">- Periksa dan amati skala temperatur pada termometer.</p>
							<p class="p0">- Catat hasil pengamatan ke dalam kertas, buatlah data dalam bentuk tabel.</p>
                            <p class="p0">- Gambar grafik hubungan suhu tanah dengan kedalaman tanah dan suhu tanah dengan tanggal.</p>
							<p class="p0">- Hitunglah rata-rata suhu tanah.</p>
						    <asp:ImageButton ID="ImageButtonKembali" runat="server" onclick="ImageButtonKembali_Click" ImageUrl="~/images/button/kembali.png" />
                        </article>
                        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
