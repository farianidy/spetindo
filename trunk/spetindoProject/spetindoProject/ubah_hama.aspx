<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="ubah_hama.aspx.cs" Inherits="spetindoProject.ubah_hama" %>
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
	<h2 class="extra">Pengubahan Hama</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
<div class="inside1">
	    <div class="wrap row-2">
            <form id="form1" runat="server">
                <asp:ImageButton ID="ImageButton2" runat="server" onclick="ImageButton2_Click"  CssClass="link2"
                    ImageUrl="~/images/button/button_logout.png" />

			    <article class="col-1">
				    <h2>Ubah Data Hama</h2>
                    <asp:DropDownList ID="listHama" runat="server">
                    </asp:DropDownList></br></br>
                <asp:Button ID="ButtonHama" runat="server" Text="Cek" 
                    onclick="ButtonHama_Click"/></br></br>

                    <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                </br>
                </article>
				<article class="col-2">
                    <ul class="list1">
					    <li>Nama Hama: </li>
                        <li>Cara Pencegahan: </li>
					</ul>
				</article>
                <article class="col-3">
                    <ul class="listt">
					    <li>
                            <td><asp:TextBox ID="TextBoxNama" runat="server"></asp:TextBox></td>
                        </li>
                        <li>
                            <td><asp:TextBox ID="TextBoxPencegahan" runat="server"></asp:TextBox></td>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        ImageUrl="~/images/buttmasuk.png" onclick="ImageButton1_Click" /></div>
                </article>
            </form>
            <div class="clear"></div>

		</div>
	</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
