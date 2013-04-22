﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="informasi_pupuk.aspx.cs" Inherits="spetindoProject.informasi_pupuk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" runat="server">
    <div class="inside bot-indent">
	    <div id="slogan">
		    <div class="inside">
		        <h2><span>Your Domain Name</span> Helps the World  to Find You</h2>
				<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>
			</div>
		</div>
    </div>
	<h2 class="extra">Pemilihan Pupuk</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentTemplate" runat="server">
    <div class="inside1">
	    <div class="wrap row-2">
            <form id="form1" runat="server">
			    <article class="col-1">
				    <h2>Rekomendasi Pemupukan</h2>
                </article>
				<article class="col-2">
                    <ul class="list1">
					    <li>Tanaman: </li>
					</ul>
				</article>
                <article class="col-3">
                    <ul class="list2">
					    <li>
                            <asp:DropDownList ID="DropDownListTanaman" runat="server">
                                <asp:ListItem Value="TA001">Padi</asp:ListItem>
                                <asp:ListItem Value="TA002">Jagung</asp:ListItem>
                                <asp:ListItem Value="TA003">Kedelai</asp:ListItem>
                            </asp:DropDownList>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click"  CssClass="link2"
                        ImageUrl="~/images/button/button_lihat_hasil.png" />
                </article>
            </form>
            <div class="clear"></div>
		</div>
	</div>

    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
        EnableModelValidation="True" ForeColor="Black" GridLines="None"
        EmptyDataText="Data tidak tersedia." AllowPaging="true" PageSize="10" AllowSorting="true"
        DataKeyNames="" OnSorting="GridView1_Sorting" OnPageIndexChanging="GridView1_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>

    <div class="inside1">
	    <div class="wrap row-2">
            <form id="form2" runat="server">
			    <article class="col-4">
				    <h2>Cek Status Hara</h2>
                </article>
				<article class="col-5">
                    <ul class="list3">
					    <li>Provinsi: </li>
                        <li>Kabupaten/Kota: </li>
					</ul>
				</article>
                <article class="col-6">
                    <ul class="list4>
					    <li>
                            <asp:DropDownList ID="ListProvinsi" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ListProvinsi_SelectedIndexChanged"></asp:DropDownList>
                        </li>
                        <li>
                            <asp:DropDownList ID="ListKota" runat="server"></asp:DropDownList>
                        </li>
                    </ul>
                    <asp:ImageButton ID="ImageButton2" runat="server" onclick="ImageButton2_Click"  CssClass="link2"
                        ImageUrl="~/images/button/button_lihat_hasil.png" />
                </article>
            </form>
            <div class="clear"></div>
		</div>
	</div>

    <h2>Status Unsur Hara P</h2>
    <asp:GridView ID="GridViewHaraP" runat="server" CellPadding="4" 
        EnableModelValidation="True" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>

    <h2>Status Unsur Hara K</h2>
    <asp:GridView ID="GridViewHaraK" runat="server" CellPadding="4" 
        EnableModelValidation="True" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentAsideTemplate" runat="server">
</asp:Content>
