<%@ Page language="c#" Inherits="drugsample.drug_trail_individual" CodeFile="drug_trail_individual.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>drug_trail_individual</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 102; LEFT: 12px; POSITION: absolute; TOP: 100px"
				runat="server" CellPadding="4" BackColor="#CCCCCC" BorderWidth="3px"
				AutoGenerateColumns="False" ForeColor="Black" Height="124px" BorderStyle="Solid" BorderColor="#999999"
				Width="632px" PageSize="5" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="drug_trial_id" HeaderText=" Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="trial_start_date" HeaderText="Starting Date " DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="trial_complet_date" HeaderText="Complition Data" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="purpose_of_trial" HeaderText="Purpose"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_name" HeaderText="Employee Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_short_name" HeaderText="Drug"></asp:BoundColumn>
					<asp:BoundColumn DataField="trial_result_analy_descr" HeaderText="Result"></asp:BoundColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
			<asp:Label id="Label13" style="Z-INDEX: 105; LEFT: 244px; POSITION: absolute; TOP: 28px" runat="server"
				BackColor="Transparent" ForeColor="DarkCyan" Width="156px" Font-Bold="True" Font-Italic="True"
				Font-Names="Book Antiqua" Font-Size="Medium">Drug Trail Details</asp:Label>
		</form>
	</body>
</HTML>
