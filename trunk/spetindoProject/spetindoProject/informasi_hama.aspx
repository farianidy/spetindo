<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="informasi_hama.aspx.cs" Inherits="spetindoProject.informasi_hama" %>

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
	<h2 class="extra">Penanganan Hama</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
    <form id="form1" runat="server">
        <div class="inside1">
	        <div class="wrap row-2">
			    <article class="col-1">
				    <h2>Rekomendasi Pencegahan Hama yang Kemungkinan Menyerang</h2>
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
                            <asp:DropDownList ID="DropDownListTanaman" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownListTanaman_SelectedIndexChanged" Width="130px" Height="20px">
                                <asp:ListItem Value="TA001">Padi</asp:ListItem>
                                <asp:ListItem Value="TA002">Jagung</asp:ListItem>
                                <asp:ListItem Value="TA003">Kedelai</asp:ListItem>
                            </asp:DropDownList>
                        </li>
                        <li>
                            <asp:DropDownList ID="DropDownListHama" runat="server" Width="130px" Height="20px"></asp:DropDownList>
                            <br /><a href="request_hama.aspx" class="comments_link">Request Hama</a>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click"  CssClass="link2"
                        ImageUrl="~/images/button/button_lihat_hasil.png" />
                </article>
                <div class="clear"></div>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                    EnableModelValidation="True" ForeColor="#333333" GridLines="None" 
                    EmptyDataText="Data tidak tersedia.">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
		    </div>
	    </div>
    </form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
