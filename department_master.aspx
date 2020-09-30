<%@ Page language="c#" Inherits="drugsample.department_master" CodeFile="department_master.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>department_master</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 101; LEFT: 128px; POSITION: absolute; TOP: 88px" runat="server"
				Visible="False" Height="164px" BorderStyle="Groove" BorderColor="Silver" Width="296px">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="#008a8c" colSpan="2">
							<asp:Label id="Label5" runat="server" Width="227px" Height="12px" ForeColor="White" Font-Bold="True"
								Font-Size="Small" Font-Names="Verdana">Department Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label1" runat="server" Width="112px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Department Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_dept_id" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px" colSpan="1">
							<asp:Label id="Label2" runat="server" Width="145px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Department Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_dept_name" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label3" runat="server" Width="97px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Description</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_dept_descr" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 169px" align="right">
							<asp:Label id="Label6" runat="server" Width="120px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Highest Desig ID</asp:Label></TD>
						<TD>
							<asp:DropDownList id="dr_desig_id" runat="server" Width="136px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">
								<asp:ListItem></asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 169px">
							<asp:Button id="but_save" runat="server" Width="149px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Save Changes" onclick="but_save_Click"></asp:Button></TD>
						<TD>
							<asp:Button id="but_grid" runat="server" Width="134px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Back To Grid" onclick="but_grid_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:Label id="Label13" style="Z-INDEX: 105; LEFT: 208px; POSITION: absolute; TOP: 32px" runat="server"
				Width="168px" Font-Names="Book Antiqua" Font-Size="Medium" Font-Bold="True" ForeColor="DarkCyan"
				Font-Italic="True">Department Details</asp:Label>
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 104; LEFT: 72px; POSITION: absolute; TOP: 88px" runat="server"
				Width="516px" BorderColor="#999999" BorderStyle="Solid" Height="124px" ForeColor="Black"
				PageSize="5" AutoGenerateColumns="False" BorderWidth="3px" BackColor="#CCCCCC" CellPadding="4" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="dept_no" HeaderText="Department Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="dept_name" HeaderText="Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="dept_descr" HeaderText="Description"></asp:BoundColumn>
					<asp:BoundColumn DataField="hig_desig_id" HeaderText="Highest Desig Id"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
			<asp:button id="but_new" style="Z-INDEX: 103; LEFT: 432px; POSITION: absolute; TOP: 64px" runat="server"
				Width="132px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana" Text="New Record" onclick="but_new_Click"></asp:button>
		</form>
	</body>
</HTML>
