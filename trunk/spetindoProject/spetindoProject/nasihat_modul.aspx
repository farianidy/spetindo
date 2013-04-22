<%@ Page Language="C#"  MasterPageFile="~/Site.master"  AutoEventWireup="true" CodeBehind="nasihat_modul.aspx.cs" Inherits="spetindoProject.nasihat_modul" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentSlider" runat="server">
    <div class="inside bot-indent">
				<div id="slogan">
					<div class="inside">
						<h2><span>Your Domain Name</span> Helps the World  to Find You</h2>
						<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>
					</div>
				</div>
				<h2 class="extra">Hosting Plans</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentTemplate" runat="server">

				<div class="inside1">
					<div class="wrap row-2">
                        <form id="form2" runat="server">
						<article class="col-1">
							<h2>Lengkapi Data Sawah Anda Disini</h2>
							
							<a href="#" class="link2"><span><span>More Solutions</span></span></a> </article>
						<article class="col-2">
							<h2></h2>
                            <ul class="list1">
								<li>Jenis Tanah <a href="informasi.aspx" class="comments_link"></li>
								<li>Suhu</li>
								<li>Ketinggian Tanah</li>
								<li>Luas Lahan</li>
							</ul>
						</article>
                        <article class="col-3">
                            <h2></h2>
                            <ul class="listt">
								<li><asp:DropDownList ID="DropDownList2" runat="server" Width="130px" Height="20px">
                                        <asp:ListItem Value="3">Aluvial</asp:ListItem>
                                        <asp:ListItem Value="4">Litosol</asp:ListItem>
                                    </asp:DropDownList></li>
								<li><asp:DropDownList ID="DropDownSuhu" runat="server" Width="130px" Height="20px">
                                        <asp:ListItem Value="5">18°C - 26 °C </asp:ListItem>
                                        <asp:ListItem Value="6">27 °C - 31 °C </asp:ListItem>
                                    </asp:DropDownList></li>
								<li><asp:DropDownList ID="DropDownTinggiTanah" runat="server" Width="130px" Height="20px">
                                        <asp:ListItem Value="7">Dataran Rendah</asp:ListItem>
                                        <asp:ListItem Value="8">Dataran Tinggi</asp:ListItem>
                                    </asp:DropDownList></li>
								<li><asp:DropDownList ID="DropDownLuas" runat="server" Width="130px" Height="20px">
                                        <asp:ListItem Value="9">0-30 Ha</asp:ListItem>
                                        <asp:ListItem Value="10">31-918 Ha</asp:ListItem>
                                        <asp:ListItem Value="11">919-1806 Ha</asp:ListItem>
                                        <asp:ListItem Value="12">1807-2694 Ha</asp:ListItem>
                                        <asp:ListItem Value="13">2695-3582 Ha</asp:ListItem>
                                        <asp:ListItem Value="14">3583-4470 Ha</asp:ListItem>
                                        <asp:ListItem Value="15">4471-5358 Ha</asp:ListItem>
                                        <asp:ListItem Value="16">5359-More Ha</asp:ListItem>
                                    </asp:DropDownList></li>
							</ul>
                        </article>
                        </form>
						<div class="clear"></div>
					</div>
				</div>
			</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>

