<%@ Page language="c#" Inherits="drugsample.employee_details" CodeFile="employee_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>employee_details</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 102; LEFT: 4px; POSITION: absolute; TOP: 64px" runat="server"
				PageSize="5" Width="725px" BorderColor="#999999" BorderStyle="Solid" Height="156px" ForeColor="Black"
				AutoGenerateColumns="False" BorderWidth="3px" BackColor="#CCCCCC" CellPadding="4" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="employee_no" HeaderText=" Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_name" HeaderText="Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_dob" HeaderText="DOB" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_phone" HeaderText="Phone No"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_email" HeaderText="Email Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_gender" HeaderText="Gender"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_doj" HeaderText="DOJ" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="dept_no" HeaderText="Dept No"></asp:BoundColumn>
					<asp:BoundColumn DataField="desig_id" HeaderText="Desig No"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid><asp:label id="Label13" style="Z-INDEX: 104; LEFT: 252px; POSITION: absolute; TOP: 20px" runat="server"
				Width="148px" ForeColor="DarkCyan" Font-Italic="True" Font-Names="Book Antiqua" Font-Size="Medium" Font-Bold="True">Personal  Details</asp:label></form>
	</body>
</HTML>
