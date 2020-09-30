<%@ Page language="c#" Inherits="drugsample.clinical_condition_master" CodeFile="clinical_condition_master.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>clinical_condition_master</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 48px; POSITION: absolute; TOP: 120px"
				runat="server" CellPadding="4" BackColor="#CCCCCC" BorderWidth="3px"
				AutoGenerateColumns="False" ForeColor="Black" Height="96px" BorderStyle="Solid" BorderColor="#999999"
				Width="424px" PageSize="5" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="clinical_cond_id" HeaderText="Clinical Cond Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="clinical_cond_name" HeaderText="Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="clinical_cond_commant" HeaderText="Description"></asp:BoundColumn>
					<asp:BoundColumn DataField="condition_id" HeaderText="Condition Id"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
			<asp:Label id="Label13" style="Z-INDEX: 101; LEFT: 152px; POSITION: absolute; TOP: 40px" runat="server"
				Width="224px" ForeColor="DarkCyan" Font-Size="Medium" Font-Names="Book Antiqua" Font-Bold="True"
				Font-Italic="True">Clinical Condition Details</asp:Label>
			<asp:button id="but_new" style="Z-INDEX: 102; LEFT: 336px; POSITION: absolute; TOP: 96px" runat="server"
				Width="132px" Font-Bold="True" Text="New Record" Font-Names="Verdana" Font-Size="X-Small" onclick="but_new_Click"></asp:button>
			<asp:panel id="Panel1" style="Z-INDEX: 103; LEFT: 128px; POSITION: absolute; TOP: 120px" runat="server"
				Height="160px" BorderStyle="Groove" BorderColor="Silver" Width="280px" Visible="False">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="#008a8c" colSpan="2" style="font-weight: bold; font-size: small; color: white">
                            Clinical Condition info</TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 226px">
							<asp:Label id="Label1" runat="server" Width="120px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Clinical Cond ID</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_cli_id" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 226px" colSpan="1">
							<asp:Label id="Label2" runat="server" Width="53px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_cli_name" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 226px">
							<asp:Label id="Label3" runat="server" Width="64px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Comment</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_cli_comm" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 226px; height: 22px;" align="right">
							<asp:Label id="Label6" runat="server" Width="92px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Condition </asp:Label></TD>
						<TD style="height: 22px">
							<asp:DropDownList id="dr_cond_id" runat="server" Width="136px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">
								<asp:ListItem></asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
                    <tr align="center">
                        <td style="width: 226px; height: 25px">
                        </td>
                        <td style="height: 25px">
                        </td>
                    </tr>
				</TABLE>
							<asp:Button id="but_save" runat="server" Width="128px" Font-Size="X-Small" Font-Names="Verdana"
								Text="Save Changes" Font-Bold="True" onclick="but_save_Click" style="z-index: 100; left: 0px; position: absolute; top: 112px"></asp:Button>
							<asp:Button id="but_grid" runat="server" Width="132px" Font-Size="X-Small" Font-Names="Verdana"
								Text="Back To Grid" Font-Bold="True" onclick="but_grid_Click" style="z-index: 102; left: 128px; position: absolute; top: 112px"></asp:Button>
			</asp:panel>
            &nbsp;
		</form>
	</body>
</HTML>
