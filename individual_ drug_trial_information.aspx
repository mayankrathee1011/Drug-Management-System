<%@ Page language="c#" Inherits="drug.individual__drug_trial_information" CodeFile="individual_ drug_trial_information.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>individual_ drug_trial_information</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="Datagrid2" style="Z-INDEX: 100; LEFT: 52px; POSITION: absolute; TOP: 84px" runat="server"
				Width="528px" BorderColor="#999999" BorderStyle="Solid" Height="116px" ForeColor="Black" AutoGenerateColumns="False"
				BorderWidth="3px" BackColor="#CCCCCC" CellPadding="4" Visible="False" onselectedindexchanged="Datagrid2_SelectedIndexChanged" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="drug_trial_id" HeaderText="Trial Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="trial_start_date" HeaderText="Start Date"></asp:BoundColumn>
					<asp:BoundColumn DataField="trial_complet_date" HeaderText="Complet Date"></asp:BoundColumn>
					<asp:BoundColumn DataField="purpose_of_trial" HeaderText="Purpose"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_id" HeaderText="Drug ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="trial_result_analy_descr" HeaderText="Trial Result"></asp:BoundColumn>
					<asp:BoundColumn DataField="trial_status" HeaderText="Status"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
			<asp:Label id="Label13" style="Z-INDEX: 107; LEFT: 188px; POSITION: absolute; TOP: 24px" runat="server"
				ForeColor="DarkCyan" Width="244px" Font-Names="Book Antiqua" Font-Size="Medium" Font-Bold="True"
				Font-Italic="True">Individual Drug Trial Details</asp:Label><asp:button id="but_reaction" style="Z-INDEX: 106; LEFT: 336px; POSITION: absolute; TOP: 60px"
				runat="server" Width="133px" Visible="False" Font-Bold="True" Text="Any Reaction" Font-Size="X-Small" Font-Names="Verdana" onclick="but_reaction_Click"></asp:button>
			<asp:button id="but_allergic" style="Z-INDEX: 104; LEFT: 164px; POSITION: absolute; TOP: 60px"
				runat="server" Width="168px" Visible="False" Font-Bold="True" Text="Any Allergic Symptons"
				Font-Size="X-Small" Font-Names="Verdana" onclick="but_allergic_Click"></asp:button>
			<asp:datagrid id="Datagrid4" style="Z-INDEX: 105; LEFT: 120px; POSITION: absolute; TOP: 88px"
				runat="server" Width="412px" BorderColor="#999999" BorderStyle="Solid" Height="104px" ForeColor="Black"
				AutoGenerateColumns="False" BorderWidth="3px" BackColor="#CCCCCC" CellPadding="4"
				PageSize="5" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="individual_name" HeaderText="Individual Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_trial_id" HeaderText="Drug Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="allergic_id" HeaderText="Allergic ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="allergic_name" HeaderText="Allerigc Name"></asp:BoundColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
			<asp:datagrid id="Datagrid3" style="Z-INDEX: 102; LEFT: 112px; POSITION: absolute; TOP: 88px"
				runat="server" Width="412px" BorderColor="#999999" BorderStyle="Solid" Height="116px" ForeColor="Black"
				AutoGenerateColumns="False" BorderWidth="3px" BackColor="#CCCCCC" CellPadding="4" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="individual_name" HeaderText="Individual Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_trial_id" HeaderText="Drug Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="reaction_agent_id" HeaderText="Reaction ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="reaction_short_name" HeaderText="Reaction Name"></asp:BoundColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 72px; POSITION: absolute; TOP: 88px" runat="server" CellPadding="4" BackColor="#CCCCCC" BorderWidth="3px" AutoGenerateColumns="False"
				ForeColor="Black" Height="124px" BorderStyle="Solid" BorderColor="#999999" Width="492px" onselectedindexchanged="DataGrid1_SelectedIndexChanged" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="employee_no" HeaderText="Employee Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_name" HeaderText="Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_phone" HeaderText="Phone No"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_email" HeaderText="Email Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_gender" HeaderText="Gender"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid></form>
	</body>
</HTML>
