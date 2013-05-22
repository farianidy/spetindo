<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="informasi_tanah.aspx.cs" Inherits="spetindoProject.informasi_tanah" %>

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
	<h2 class="extra">Informasi Tanah</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
    <div class="inside1">
	    <div class="wrap row-1">
		    <article class="col-1">
			    <h2>Tanah Aluvial</h2>
            </article>
            <p>
                Tanah Aluvial tanah hasil erosi yang diendapkan di daerah-daerah dataran rendah. 
                Tanah aluvial bercirikan warnanya kelabu dan bersifat subur.
                Tanah Aluvial berwarna kelabu sampai kecoklat-coklatan. 
                Tekstur tanahnya liat atau liat berpasir, mempunyai konsistensi keras waktu kering dan teguh pada waktu lembab.
            </p> 
            <asp:Image ID="Aluvial" runat="server" Height="93px" 
                            ImageUrl="~/images/aluvial.jpg" Width="146px" />
		</div>
        <div class="wrap row-1">
		    <article class="col-1">
			    <h2>Tanah Litosol</h2>
            </article>
            <p>
                Tanah litosol merupakan jenis tanah berbatu-batu dengan lapisan tanah yang tidak 
                begitu tebal. Bahannya berasal dari jenis batuan beku yang belum mengalami proses 
                pelapukan secara sempurna sehingga butirannya besar. 
                Ciri-ciri tanah ini yaitu miskin unsur hara dan mineralnya masih terikat pada butiran yang besar.
                Jenis tanah ini banyak ditemukan di lereng gunung dan 
                pegunungan di seluruh Indonesia.
            </p>
            <asp:Image ID="Image1" runat="server" Height="93px" 
                            ImageUrl="~/images/litosol.jpg" Width="146px" />
            <div class="clear"></div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
