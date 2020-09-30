<%@ Page language="c#" Inherits="drugsample.drug" CodeFile="drug.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>drug</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 48px; POSITION: absolute; TOP: 136px" runat="server"
				Width="424px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
				<Columns>
					<asp:BoundColumn DataField="individual_id" HeaderText="ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_name" HeaderText="name"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_dob" HeaderText="dob" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_gender" HeaderText="gender"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_address" HeaderText="addr"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_phone" HeaderText="phone"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_email" HeaderText="email"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
				</Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditItemStyle BackColor="#999999" />
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
			</asp:DataGrid>
		</form>
	</body>
</HTML>
