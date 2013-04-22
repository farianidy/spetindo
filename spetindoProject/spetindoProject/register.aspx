<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="spetindoProject.register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="topheader">
		   <div class="logo"></div>
		 </div>
		 <div id="header_strip"></div>
		
		<div id="reg_area">
			<div id="regarea">
				<div class="register_area">
						  <div class="register_top"></div>
						  <div class="register_bodyarea">
							<div class="register_head">
							  <div align="center">ISI DATA ANDA DISINI</div>
							</div>
							<div class="register_textbox">
								<table>
									<tr>
										<td>Nama</td>
										<td><asp:TextBox ID="textboxLoginNama" runat="server" Width="130px" Height="20px"></asp:TextBox></td>
									</tr>
									<tr>
										<td>Alamat</td>
										<td><asp:TextBox ID="textboxLoginAl" runat="server" Width="130px" Height="20px"></asp:TextBox></td>
									</tr>
									<tr>
										<td>Nomor HP</td>
										<td><asp:TextBox ID="textboxLoginHP" runat="server" Width="130px" Height="20px"></asp:TextBox></td>
									</tr>
									<tr>
										<td>ID</td>
										<td><asp:TextBox ID="textboxLoginId" runat="server" Width="130px" Height="20px"></asp:TextBox></td>
									</tr>
									<tr>
										<td>Password</td>
										<td><asp:TextBox ID="textboxLoginPass" runat="server" Width="130px" Height="20px" TextMode="Password"></asp:TextBox></td>
									</tr>
									<tr>
										<td colspan="2"></td>
									</tr>
									<tr>
										<td>Luas Tanah</td>
										<td><asp:TextBox ID="textboxLuasTanah" runat="server" Width="130px" Height="20px"></asp:TextBox> m<sup>2</sup></td>
									</tr>
									<tr>
										<td>Status Kepemilikan Tanah</td>
										<td><asp:DropDownList ID="dropdownStatus" runat="server" Width="130px" Height="20px"></asp:DropDownList></td>
									</tr>
									<tr>
										<td>Jenis Tanah</td>
										<td><asp:DropDownList ID="dropdownJenis" runat="server" Width="130px" Height="20px"></asp:DropDownList></td>
									</tr>
								</table>
								<div align="none" style="padding:10px"><a href="#" class="daftar"></a></div>
							</div>
							
						
						  </div>
						  <div class="register_bottom"></div>
				</div>
			</div></div>
			<div id="logofooter"><div class="logofoo"></div>
		</div>
    	<div id="fotter">
		  <div class="fotter_copyrights">
			<div align="center">Copyright &copy; Vincitore 2012. All Rights Reserved</div>
		  </div>
		</div>
    </form>
</body>
</html>
