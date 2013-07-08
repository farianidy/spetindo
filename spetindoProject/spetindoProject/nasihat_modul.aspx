<%@ Page Language="C#"  MasterPageFile="~/Site.master"  AutoEventWireup="true" CodeBehind="nasihat_modul.aspx.cs" Inherits="spetindoProject.nasihat_modul" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentSlider" runat="server">
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
    <h2 class="extra">Lengkapi Data Sawah Anda Disini</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentTemplate" runat="server">
    <div class="inside1">
	    <div class="wrap row-2">
            <form id="form2" runat="server">
		    <article class="col-1">
			    <h2></h2>
		    </article>
		    <article class="col-2">
			    <h2></h2>
                <ul class="list1">
				    <li>Jenis Tanah <br /><a href="informasi_tanah.aspx" class="comments_link">Cara Penentuan</a></li>
				    <li>Suhu <br /> <a href="informasi_ukur_suhu.aspx" class="comments_link">Cara Ukur Suhu</a></li>
				    </br>
                    <li>Ketinggian Tanah <br /> <a href="informasi_ukur_tinggi.aspx" class="comments_link">Cara Ukur Tinggi</a></li>
                    <li>Luas Lahan</li>
                    <li>Biaya Sewa Tanah</li>
                    </br>
                    <li>Biaya Tenaga Pekerja</li>
                    </br>
                    <li>Biaya Pupuk<br /> <a href="informasi_pupuk.aspx" class="comments_link">Hitung Biaya Pupuk</a></li>
                    </br>
                    <li>Luas Lahan yang Tepat</li>
			    </ul>
		    </article>
            <article class="col-3">
                <h2></h2>
                <ul class="listt">
				    <li><asp:DropDownList ID="DropDownJenisTanah" runat="server" Width="130px" Height="20px">
                            <asp:ListItem Value="3">Aluvial</asp:ListItem>
                            <asp:ListItem Value="4">Litosol</asp:ListItem>
                        </asp:DropDownList></li>
                    <li></li>
				    <li><asp:DropDownList ID="DropDownSuhu" runat="server" Width="130px" Height="20px">
                            <asp:ListItem Value="5">18°C - 26 °C </asp:ListItem>
                            <asp:ListItem Value="6">27 °C - 31 °C </asp:ListItem>
                        </asp:DropDownList></li>
                    <li></li>
				    <li><asp:DropDownList ID="DropDownTinggiTanah" runat="server" Width="130px" Height="20px">
                            <asp:ListItem Value="7">Dataran Rendah</asp:ListItem>
                            <asp:ListItem Value="8">Dataran Tinggi</asp:ListItem>
                        </asp:DropDownList></li>
                    <li></li>
				    <li><asp:DropDownList ID="DropDownLuas" runat="server" Width="130px" Height="20px">
                            <asp:ListItem Value="9">0-30 Hektar</asp:ListItem>
                            <asp:ListItem Value="10">31-918 Hektar</asp:ListItem>
                            <asp:ListItem Value="11">919-1806 Hektar</asp:ListItem>
                            <asp:ListItem Value="12">1807-2694 Hektar</asp:ListItem>
                            <asp:ListItem Value="13">2695-3582 Hektar</asp:ListItem>
                            <asp:ListItem Value="14">3583-4470 Hektar</asp:ListItem>
                            <asp:ListItem Value="15">4471-5358 Hektar</asp:ListItem>
                            <asp:ListItem Value="16">5359-More Hektar</asp:ListItem>
                        </asp:DropDownList></li>
                    <li></li>
                    <li>Rp. <asp:TextBox ID="TextBoxSewaTanah" runat="server"></asp:TextBox></li>
                    <li></li>
                    <li>Rp. <asp:TextBox ID="TextBoxTenagaKerja" runat="server"></asp:TextBox></li>
                    <li></li>
                    <li>Rp. <asp:TextBox ID="TextBoxBiayaPupuk" runat="server"></asp:TextBox></li>
                    <li></li>
                    <li><asp:TextBox ID="TextBoxLuasLahan" runat="server"></asp:TextBox> Hektar</li>
                    <li></li>

			    </ul>
                <asp:ImageButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click"  CssClass="link2"
                    ImageUrl="~/images/button/data_selesai.jpg" />
                <!--<a href="hasil_modul_nasihat.aspx" class="link2"><span><span>Data Selesai</span></span></a>-->
            </article>
            </form>
		    <div class="clear"></div>
	    </div>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>

