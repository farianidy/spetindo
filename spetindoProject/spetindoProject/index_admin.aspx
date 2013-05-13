<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="index_admin.aspx.cs" Inherits="spetindoProject.index_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
    <div id="faded">
		<ul class="slides">
			<li><img src="images/general/welcome.png"></li>
			<li><img src="images/general/welcome2.png"></li>
			<li><img src="images/general/welcome3.png"></li>
			<li><img src="images/general/welcome4.png"></li>
		</ul>
		<ul class="pagination">
			<li><a href="#" rel="0"><span>Beranda</span><small>Sekilas</small></a></li>
			<li><a href="#" rel="1"><span>Nasihat</span><small>Sekilas</small></a></li>
			<li><a href="#" rel="2"><span>Budidaya</span><small>Sekilas</small></a></li>
		    <li><a href="#" rel="3"><span>Profil Pasar</span><small>Sekilas</small></a></li>
		</ul>
	</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
