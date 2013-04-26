<%@ Page Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="tambah_admin.aspx.cs" Inherits="spetindoProject.tambah_admin" %>

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
	<h2 class="extra">Penambahan Admin</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
    <div class="inside1">
	    <div class="wrap row-2">
            <form id="form1" runat="server">
                <asp:ImageButton ID="ImageButton2" runat="server" onclick="ImageButton2_Click"  CssClass="link2"
                    ImageUrl="~/images/button/button_logout.png" />

			    <article class="col-1">
				    <h2>Data Admin Baru</h2>
                </article>
				<article class="col-2">
                    <ul class="list1">
					    <li>Username: </li>
                        <li>Password: </li>
					</ul>
				</article>
                <article class="col-3">
                    <ul class="listt">
					    <li>
                            <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click"  CssClass="link2"
                        ImageUrl="~/images/button/button_tambah.png" />
                </article>
            </form>
            <div class="clear"></div>

		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
