<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="tambah_hama.aspx.cs" Inherits="spetindoProject.tambah_hama" %>

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
	<h2 class="extra">Penambahan Hama</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
    <div class="inside1">
	    <div class="wrap row-2">
            <form id="form1" runat="server">
                <asp:ImageButton ID="ImageButton2" runat="server" onclick="ImageButton2_Click"  CssClass="link2"
                    ImageUrl="~/images/button/keluar.png" />
                
			    <article class="col-1">
                <h2>Lihat Request Hama</h2>
                <asp:Button ID="ButtonHama" runat="server" Text="Cek" 
                    onclick="ButtonHama_Click"/></br></br>

                    <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>

				    <!--<h2>Data Hama Baru</h2>-->
                </article>
				<article class="col-2">
                    <ul class="list1">
					    <li>Tanaman yang diserang: </li>
                        <li>Nama Hama: </li>
                        <li>Cara Pencegahan: </li>
                        <!--<li>ID Hama: </li>-->
					</ul>
				</article>
                <article class="col-3">
                    <ul class="listt">
					    <li>
                            <asp:DropDownList ID="DropDownJenisTanaman" runat="server" Width="130px" Height="20px">
                                <asp:ListItem Value="TA001">Padi</asp:ListItem>
                                <asp:ListItem Value="TA002">Jagung</asp:ListItem>
                                <asp:ListItem Value="TA003">Kedelai</asp:ListItem>
                            </asp:DropDownList>
                        </li>
                        <li>
                            <asp:TextBox ID="TextBoxNamaHama" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <asp:TextBox ID="TextBoxPencegahan" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <asp:Label ID="LabelIDHama" runat="server" Text="" Enabled="false"></asp:Label>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click"  CssClass="link2"
                        ImageUrl="~/images/button/button_tambah.png" />
                    <asp:ImageButton ID="ImageButton3" runat="server" onclick="ImageButtonReq_Click"  CssClass="link2"
                        ImageUrl="~/images/button/data_selesai.jpg" />
                </article>
            </form>
            <div class="clear"></div>

		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
