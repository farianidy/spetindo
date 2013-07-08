<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="tentangkami.aspx.cs" Inherits="spetindoProject.tentangkami" %>
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
    <h2 class="extra">Tentang Kami</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
<div class="inside1">
	        <div class="wrap row-2">
			    <article class="col-1">
				    <asp:Image ID="Ayu" runat="server" Height="120px" ImageUrl="~/images/ayu.jpg" Width="146px"/>
                </article>
				<article class="col-2">
                    <p>
                        Eka Ayu Puspitaningrum
                        5109100176
                    </p>
				</article>
		    </div>
	    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
