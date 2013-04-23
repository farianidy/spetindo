<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="informasi_harga_pasar.aspx.cs" Inherits="spetindoProject.informasi_harga_pasar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
    <form id="form1" runat="server">
   <asp:Calendar ID="Calendar1" runat="server" onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
    <asp:GridView ID="GridView1" GridLines="None"
            AllowPaging="true"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            runat="server"></asp:GridView>
    
        <!--<asp:GridView ID="gvCustomres" runat="server"
            DataSourceID="customresDataSource" 
            AutoGenerateColumns="False"
            GridLines="None"
            AllowPaging="true"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt">
            <Columns>
                <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                <asp:BoundField DataField="ContactName" HeaderText="Contact Name" />
                <asp:BoundField DataField="ContactTitle" HeaderText="Contact Title" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:BoundField DataField="City" HeaderText="City" />
                <asp:BoundField DataField="Country" HeaderText="Country" />
            </Columns>
        </asp:GridView>-->
        <asp:XmlDataSource ID="customresDataSource" runat="server" DataFile="~/App_Data/data.xml"></asp:XmlDataSource>
    
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
