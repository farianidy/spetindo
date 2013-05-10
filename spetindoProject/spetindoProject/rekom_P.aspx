<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rekom_P.aspx.cs" Inherits="spetindoProject.rekom_P" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
<div class="inside bot-indent">
				<div id="slogan">
					<div class="inside">
						<h2><span>SPETINDO</span></h2>
						<p>Sebuah aplikasi Web-based Decision Support System (DSS) yang mampu memberikan solusi bagi petani untuk mendapat informasi pembudidayaan tanaman yang cocok serta prosedur pembudidayaannya.</p>
					</div>
				</div>
				<h2 class="extra">Rekomendasi Pemupukan P</h2>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
        <article class="col-2">
				<p class="p0">Rekomendasi pupuk fosfat (dalam bentuk SP-36) pada status P tanah rendah, sedang dan tinggi ditetapkan menurut tabel berikut ini :</p>
				<asp:Image ID="ImageTanah" runat="server" Height="150px" 
                ImageUrl="~/images/status hara/tabelP.jpg" Width="300px" />
                <p class="p0">* Diberikan 1 kali pada saat tanam</p>
        </article>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
