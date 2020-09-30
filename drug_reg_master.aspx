<%@ Page language="c#" Inherits="drugsample.drug_reg_master" CodeFile="drug_reg_master.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>drug_reg_master</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 101; LEFT: 80px; POSITION: absolute; TOP: 88px" runat="server"
				Visible="False" Height="156px" BorderStyle="Groove" BorderColor="Silver" Width="301px">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="#008a8c" colSpan="2">
							<asp:Label id="Label5" runat="server" Width="227px" Height="12px" Font-Names="Verdana" Font-Size="Small"
								Font-Bold="True" ForeColor="White">Drug Registration</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label1" runat="server" Width="60px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Drug ID</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_drug_id" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; HEIGHT: 18px" colSpan="1">
							<asp:Label id="Label3" runat="server" Width="97px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Short Name</asp:Label></TD>
						<TD style="HEIGHT: 18px">
							<asp:TextBox id="txt_short_name" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label2" runat="server" Width="85px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True"> Long Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_long_name" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px;" align="right">
							<asp:Label id="Label4" runat="server" Width="145px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True"> General Description</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_general_descr" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 169px" align="right">
							<asp:Label id="Label6" runat="server" Width="137px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Chemical Analysis</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_chemical" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 169px">
							<asp:Button id="but_save" runat="server" Width="149px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Save Changes" onclick="but_save_Click"></asp:Button></TD>
						<TD>
							<asp:Button id="but_grid" runat="server" Width="132px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Back To Grid" onclick="but_grid_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:Label id="Label13" style="Z-INDEX: 104; LEFT: 136px; POSITION: absolute; TOP: 24px" runat="server"
				Width="188px" Font-Names="Book Antiqua" Font-Size="Medium" Font-Bold="True" ForeColor="DarkCyan"
				Font-Italic="True">New Drug Registration</asp:Label>
			<asp:button id="but_new" style="Z-INDEX: 103; LEFT: 464px; POSITION: absolute; TOP: 64px" runat="server"
				Width="132px" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True" Text="New Record" onclick="but_new_Click"></asp:button>
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 102; LEFT: 40px; POSITION: absolute; TOP: 88px"
				runat="server" Width="580px" BorderColor="#999999" BorderStyle="Solid" Height="100px" ForeColor="Black"
				AutoGenerateColumns="False" BorderWidth="3px" BackColor="#CCCCCC" CellPadding="4"
				PageSize="5" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="drug_id" HeaderText="Drug Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_short_name" HeaderText="Short Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_long_name" HeaderText="Long Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_general_descr" HeaderText="General Description"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_chemical_analysis" HeaderText="Chemical Analysis"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
		</form>
	</body>
</HTML>
