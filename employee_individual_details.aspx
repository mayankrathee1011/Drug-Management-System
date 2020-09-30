<%@ Page language="c#" Inherits="drugsample.employee_individual_details" CodeFile="employee_individual_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>employee_individual_details</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="Datagrid2" style="Z-INDEX: 101; LEFT: 52px; POSITION: absolute; TOP: 104px"
				runat="server" Visible="False" CellPadding="4" BackColor="#CCCCCC" BorderWidth="3px"
				AutoGenerateColumns="False" ForeColor="Black" Height="144px" BorderStyle="Solid" BorderColor="#999999"
				Width="552px" PageSize="5" AllowPaging="True" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="drug_trial_id" HeaderText="Trial Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="trial_start_date" HeaderText="Start Date" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="trial_complet_date" HeaderText="Complet Date" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="purpose_of_trial" HeaderText="Purpose"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_id" HeaderText="Drug ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="trial_result_analy_descr" HeaderText="Trial Result"></asp:BoundColumn>
					<asp:BoundColumn DataField="trial_status" HeaderText="Status"></asp:BoundColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
			<asp:Button id="Button1" style="Z-INDEX: 104; LEFT: 524px; POSITION: absolute; TOP: 80px" runat="server"
				Visible="False" Text="Back" onclick="Button1_Click"></asp:Button>
			<asp:Label id="Label14" style="Z-INDEX: 103; LEFT: 228px; POSITION: absolute; TOP: 52px" runat="server"
				Width="164px" ForeColor="DarkCyan" Font-Bold="True" Font-Italic="True" Font-Size="Medium"
				Font-Names="Book Antiqua">Individual Details</asp:Label>
			<asp:datagrid id="Datagrid1" style="Z-INDEX: 102; LEFT: 48px; POSITION: absolute; TOP: 104px"
				runat="server" Width="588px" BorderColor="#999999" BorderStyle="Solid" Height="124px" ForeColor="Black"
				AutoGenerateColumns="False" BorderWidth="3px" BackColor="#CCCCCC" CellPadding="4" PageSize="5" onselectedindexchanged="Datagrid1_SelectedIndexChanged" AllowCustomPaging="True" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="individual_id" HeaderText="Individual Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_name" HeaderText="Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_dob" HeaderText="Dob" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_gender" HeaderText="Gender"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_phone" HeaderText="Phone"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_email" HeaderText="EMali Id"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>&nbsp;
		</form>
	</body>
</HTML>
