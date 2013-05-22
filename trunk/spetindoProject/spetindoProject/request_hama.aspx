<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="request_hama.aspx.cs" Inherits="spetindoProject.request_hama" %>
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
	<h2 class="extra">Request Hama</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
<form id="form1" runat="server">
        <div class="inside1">
	        <div class="wrap row-2">
			    <article class="col-1">
				    <h2>Request Hama yang belum ada</h2>
                </article>
				<article class="col-2">
                    <ul class="list1">
					    <li>Tanaman: </li>
                        <li>Hama: </li>
					</ul>
				</article>
                <article class="col-3">
                    <ul class="listt">
					    <li>
                            <asp:DropDownList ID="DropDownListTanaman" runat="server" Width="130px" Height="20px">
                                <asp:ListItem Value="TA001">Padi</asp:ListItem>
                                <asp:ListItem Value="TA002">Jagung</asp:ListItem>
                                <asp:ListItem Value="TA003">Kedelai</asp:ListItem>
                            </asp:DropDownList>
                        </li>
                        <li>
                            <asp:TextBox ID="TextBoxReqHama" runat="server"></asp:TextBox>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click"  CssClass="link2"
                        ImageUrl="~/images/button/button_tambah.png" />
                </article>
		    </div>
	    </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
