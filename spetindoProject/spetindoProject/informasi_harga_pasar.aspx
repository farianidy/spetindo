<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="informasi_harga_pasar.aspx.cs" Inherits="spetindoProject.informasi_harga_pasar" %>

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
    <h2 class="extra">Informasi Harga Pasar</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
    <form id="form1" runat="server">
        <div class="inside1">
	        <div class="wrap row-1">
		        <article class="col-1">
			        <h2 class="extra">Masukkan tanggal yang ingin anda ketahui</h2><br />
		        </article>
		        <article class="col-2">
                    <asp:Calendar ID="Calendar1" runat="server" 
                        onselectionchanged="Calendar1_SelectionChanged" BackColor="White" 
                        BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" 
                        ForeColor="Black" Height="180px" Width="200px" CellPadding="4" 
                        DayNameFormat="Shortest">
                       <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
                       <NextPrevStyle 
                           VerticalAlign="Bottom" />
                       <OtherMonthDayStyle ForeColor="#808080" />
                       <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                        <SelectorStyle BackColor="#CCCCCC" />
                       <TitleStyle BackColor="#999999" BorderColor="Black" 
                           Font-Bold="True" />
                       <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
		        </article>
                <!--<asp:Panel ID="Panel1" runat="server" Visible="false"><img alt="" src="images/harga pasar cr.png"/></asp:Panel>-->
		        <div class="clear"></div>
	        </div>
        </div>
        <asp:GridView ID="GridView1" GridLines="None" AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" runat="server">
        </asp:GridView>
    </form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
