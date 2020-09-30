<%@ Page language="c#" Inherits="drugsample.designation_master" CodeFile="designation_master.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>designation_master</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 100; LEFT: 92px; POSITION: absolute; TOP: 108px" runat="server"
				Width="301px" BorderColor="Silver" BorderStyle="Groove" Height="140px" Visible="False">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="#008a8c" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" Width="227px" ForeColor="White" Font-Bold="True"
								Font-Size="Small" Font-Names="Verdana">Designation Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="112px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Designation Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_desig_id" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px" colSpan="1">
							<asp:Label id="Label2" runat="server" Height="12px" Width="145px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Designation Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_desig_name" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label3" runat="server" Height="12px" Width="97px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Description</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_desig_descr" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 169px">
							<asp:Button id="but_save" runat="server" Width="149px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Save Changes" onclick="but_save_Click"></asp:Button></TD>
						<TD>
							<asp:Button id="but_grid" runat="server" Width="132px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Back To Grid" onclick="but_grid_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:Label id="Label13" style="Z-INDEX: 104; LEFT: 208px; POSITION: absolute; TOP: 40px" runat="server"
				Width="168px" ForeColor="DarkCyan" Font-Bold="True" Font-Size="Medium" Font-Names="Book Antiqua"
				Font-Italic="True">Designation  Details</asp:Label>
			<asp:button id="but_new" style="Z-INDEX: 103; LEFT: 344px; POSITION: absolute; TOP: 88px" runat="server"
				Width="132px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana" Text="New Record" onclick="but_new_Click"></asp:button>
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 96px; POSITION: absolute; TOP: 112px"
				runat="server" Height="112px" BorderStyle="Solid" BorderColor="#999999" Width="388px" ForeColor="Black" PageSize="5" CellPadding="4" BackColor="#CCCCCC" BorderWidth="3px"
				AutoGenerateColumns="False" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="desig_id" HeaderText="Designation Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="desig_name" HeaderText="Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="desig_descr" HeaderText="Description"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
		</form>
	</body>
</HTML>
