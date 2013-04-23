<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="informasi_permintaan_pasar.aspx.cs" Inherits="spetindoProject.informasi_permintaan_pasar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
    <h2 class="extra">Lengkapi Data Sawah Anda Disini</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">s
    <div class="inside1">
	    <div class="wrap row-2">
            <form id="form2" runat="server">    
		    <article class="col-1">
			    <h2></h2>
		    </article>
		    <article class="col-2">
			    <h2></h2>
                <ul class="list1">
				    <li>Pilih Jenis Tanaman <br /></li>
			    </ul>
		    </article>
            <article class="col-3">
            
                <h2></h2>
                <ul class="listt">
                <li>
                
				<asp:DropDownList ID="DropDownListTanaman" runat="server">
                        <asp:ListItem>Padi</asp:ListItem>
                        <asp:ListItem>Jagung</asp:ListItem>
                        <asp:ListItem>Kedelai</asp:ListItem>
                         </asp:DropDownList>
                         <asp:ImageButton ID="ButtonCek" runat="server" onclick="ButtonCek_Click"  CssClass="link2"
                        ImageUrl="~/images/button/data_selesai.jpg" />
                <!--<a href="hasil_modul_nasihat.aspx" class="link2"><span><span>Data Selesai</span></span></a>-->
                     </li>
                    </ul>
            </article>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            </form>
		    <div class="clear"></div>
	    </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
