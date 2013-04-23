<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="informasi_harga_pasar.aspx.cs" Inherits="spetindoProject.informasi_harga_pasar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">

<div class="inside1">
	    <div class="wrap row-2">
            <form id="form2" runat="server">
		    <article class="col-21">
			    <h2 class="extra">Lengkapi Data Sawah Anda Disini</h2>
		    </article>
		    <article class="col-22">
			    
                            <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged" BackColor="White" 
                    BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                    ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                   <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                   <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                       VerticalAlign="Bottom" />
                   <OtherMonthDayStyle ForeColor="#999999" />
                   <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                   <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                       Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                   <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
		    </article>
            
            <asp:GridView ID="GridView1" GridLines="None"
            AllowPaging="true"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            runat="server" ></asp:GridView>

            </form>
		    <div class="clear"></div>
	    </div>
    </div>

   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
