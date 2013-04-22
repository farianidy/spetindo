<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="spetindoProject.index" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentSlider" runat="server">
    <div id="faded">
		<ul class="slides">
			<li><img src="images/general/slide-title1.gif"></li>
			<li><img src="images/general/slide-title4.gif"></li>
			<li><img src="images/general/slide-title3.gif"></li>
			<li><img src="images/general/slide-title2.gif"></li>
		</ul>
		<ul class="pagination">
			<li><a href="#" rel="0"><span>Beranda</span><small>Selengkapnya</small></a></li>
			<li><a href="#" rel="1"><span>Nasihat</span><small>Selengkapnya</small></a></li>
			<li><a href="#" rel="2"><span>Budidaya</span><small>Selengkapnya</small></a></li>
		    <li><a href="#" rel="3"><span>Profil Pasar</span><small>Selengkapnya</small></a></li>
		</ul>
	</div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentTemplate" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
