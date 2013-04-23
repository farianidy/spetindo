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
                Tanah Aluvial disebut juga tanah endapan karena terbentukdari endapan lumpur yang 
                terbawa air hujan ke dataran rendah. Tanah ini bersifat subur karena terbentuk dari 
                kikisan tanah humus.
            </p>
		</div>
        <div class="wrap row-1">
		    <article class="col-1">
			    <h2>Tanah Litosol</h2>
            </article>
            <p>
                Tanah litosol merupakan jenis tanah berbatu-batu dengan lapisan tanah yang tidak 
                begitu tebal. Bahannya berasal dari jenis batuan beku yang belum mengalami proses 
                pelapukan secara sempurna. Jenis tanah ini banyak ditemukan di lereng gunung dan 
                pegunungan di seluruh Indonesia.
            </p>
            <div class="clear"></div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
