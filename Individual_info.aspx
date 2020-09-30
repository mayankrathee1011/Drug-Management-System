<%@ Page language="c#" Inherits="drugsample.Individual_info" CodeFile="Individual_info.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Individual_info</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="Datagrid1" style="Z-INDEX: 102; LEFT: 16px; POSITION: absolute; TOP: 88px" runat="server" CellPadding="4" BackColor="#CCCCCC" BorderWidth="3px" AutoGenerateColumns="False"
				ForeColor="Black" Height="124px" BorderStyle="Solid" BorderColor="#999999" Width="588px" PageSize="5" onselectedindexchanged="Datagrid1_SelectedIndexChanged" CellSpacing="2" DataSourceID="SqlDataSource2">
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
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
            &nbsp;&nbsp;
			<asp:Label id="Label14" style="Z-INDEX: 103; LEFT: 228px; POSITION: absolute; TOP: 36px" runat="server"
				ForeColor="DarkCyan" Width="144px" Font-Bold="True" Font-Italic="True" Font-Size="Medium"
				Font-Names="Book Antiqua">Personal Details</asp:Label>
		</form>
	</body>
</HTML>
