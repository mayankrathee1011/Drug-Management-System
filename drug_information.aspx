<%@ Page language="c#" Inherits="drugsample.drug_information" CodeFile="drug_information.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>drug_information</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="Datagrid1" style="Z-INDEX: 107; LEFT: 24px; POSITION: absolute; TOP: 88px" runat="server"
				Width="508px" BorderColor="#999999" BorderStyle="Solid" Height="96px" ForeColor="Black" AutoGenerateColumns="False"
				BorderWidth="3px" BackColor="#CCCCCC" CellPadding="4" PageSize="5" CellSpacing="2">
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
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
			<asp:Label id="Label14" style="Z-INDEX: 108; LEFT: 212px; POSITION: absolute; TOP: 40px" runat="server"
				ForeColor="DarkCyan" Width="116px" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium"
				Font-Italic="True">Drugs Details</asp:Label>
		</form>
	</body>
</HTML>
