<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="informasi_pupuk.aspx.cs" Inherits="spetindoProject.informasi_pupuk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
    <div class="inside bot-indent">
	    <div id="slogan">
		    <div class="inside">
		        <h2><span>Your Domain Name</span> Helps the World  to Find You</h2>
				<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>
			</div>
		</div>
    </div>
	<h2 class="extra">Pemilihan Pupuk</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
    <div class="inside1">
	    <div class="wrap row-2">
            <form id="form1" runat="server">
			    <article class="col-1">
				    <h2>Rekomendasi Pemupukan</h2>		
					<a href="#" class="link2"><span><span>More Solutions</span></span></a>
                </article>
				<article class="col-2">
                    <ul class="list1">
					    <li>Tanaman: </li>
					</ul>
				</article>
                <article class="col-3">
                    <ul class="list2">
					    <li>
                            <asp:DropDownList ID="DropDownListTanaman" runat="server">
                                <asp:ListItem Value="TA001">Padi</asp:ListItem>
                                <asp:ListItem Value="TA002">Jagung</asp:ListItem>
                                <asp:ListItem Value="TA003">Kedelai</asp:ListItem>
                            </asp:DropDownList>
                        </li>
                    </ul>
                </article>
            </form>
            <div class="clear"></div>
		</div>
	</div>

    <div class="inside1">
	    <div class="wrap row-2">
            <form id="form2" runat="server">
			    <article class="col-4">
				    <h2>Cek Status Hara</h2>		
					<a href="#" class="link2"><span><span>More Solutions</span></span></a>
                </article>
				<article class="col-5">
                    <ul class="list3">
					    <li>Provinsi: </li>
                        <li>Kabupaten/Kota: </li>
					</ul>
				</article>
                <article class="col-6">
                    <ul class="list4>
					    <li>
                            <asp:DropDownList ID="ListProvinsi" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ListProvinsi_SelectedIndexChanged"></asp:DropDownList>
                        </li>
                        <li>
                            <asp:DropDownList ID="ListKota" runat="server"></asp:DropDownList>
                        </li>
                    </ul>
                </article>
            </form>
            <div class="clear"></div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
