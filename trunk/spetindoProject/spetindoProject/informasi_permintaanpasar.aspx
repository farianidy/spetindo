<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="informasi_permintaanpasar.aspx.cs" Inherits="spetindoProject.informasi_permintaanpasar" %>

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
    <h2 class="extra">Informasi Permintaan Pasar</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
    <form id="form1" runat="server"> 
        <div class="inside1">
	        <div class="wrap row-2">   
		            <article class="col-1">
			            <h2>Masukkan jenis tanaman untuk mengetahui permintaan pasar</h2>
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
				                <asp:DropDownList ID="DropDownListTanaman" runat="server" Width="130px" Height="20px">
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
		        <div class="clear"></div>
	        </div>
        </div>
        <asp:GridView ID="GridView1" GridLines="None"
            AllowPaging="true"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            runat="server" >
        </asp:GridView>
    </form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
