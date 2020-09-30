<%@ Page language="c#" Inherits="drugsample.condition_master" CodeFile="condition_master.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>condition_master</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	
<script language="javascript" type="text/javascript">
<!--

function Table1_onclick() {

}

// -->
</script>
</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 104px; POSITION: absolute; TOP: 120px"
				runat="server" Height="92px" BorderStyle="Solid" BorderColor="#999999" Width="332px" ForeColor="Black" CellPadding="4" BackColor="#CCCCCC" BorderWidth="3px" AutoGenerateColumns="False"
				PageSize="5" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="condition_id" HeaderText="Condition ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="condition_name" HeaderText="Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="condition_descr" HeaderText="Description"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
			<asp:Label id="Label13" style="Z-INDEX: 101; LEFT: 232px; POSITION: absolute; TOP: 40px" runat="server"
				ForeColor="DarkCyan" Width="148px" Font-Size="Medium" Font-Names="Book Antiqua" Font-Bold="True"
				Font-Italic="True">Condition Details</asp:Label>
			<asp:button id="but_new" style="Z-INDEX: 102; LEFT: 304px; POSITION: absolute; TOP: 96px" runat="server"
				Width="132px" Font-Bold="True" Text="New Record" Font-Names="Verdana" Font-Size="X-Small" onclick="but_new_Click"></asp:button>
            &nbsp;
			<asp:panel id="Panel1" style="Z-INDEX: 103; LEFT: 112px; POSITION: relative; TOP: 96px" runat="server"
				Height="128px" BorderStyle="Groove" BorderColor="Silver" Width="280px" Visible="False">
				<TABLE id="Table1" style="WIDTH: 264px; HEIGHT: 120px; z-index: 104; left: 0px; position: absolute; top: 0px;" cellSpacing="1" cellPadding="0"
					border="0" language="javascript" onclick="return Table1_onclick()">
					<TR align="center">
						<TD bgColor="#008a8c" colSpan="2" style="height: 7px; background-color: #339999; color: #ffffff;">
                            Condition Details</TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 195px; height: 28px;">
							<asp:Label id="Label1" runat="server" Width="89px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Condition Id</asp:Label></TD>
						<TD style="height: 28px; width: 156px;">
                            <asp:TextBox ID="txt_cond_id" runat="server" Style="width: 145px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 195px; height: 22px;" colSpan="1">
							<asp:Label id="Label2" runat="server" Width="53px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Name</asp:Label></TD>
						<TD style="height: 22px; width: 156px;">
							<asp:DropDownList id="dr_cond_name" runat="server" Width="96px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True" OnSelectedIndexChanged="dr_cond_name_SelectedIndexChanged">
								<asp:ListItem Value="Begning">Begning</asp:ListItem>
								<asp:ListItem Value="Advanced">Advanced</asp:ListItem>
								<asp:ListItem Value="Acute">Acute</asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 195px">
							<asp:Label id="Label3" runat="server" Width="97px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Description</asp:Label></TD>
						<TD style="width: 156px">
							<asp:TextBox id="txt_descr" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 195px">
							<asp:Button id="but_save" runat="server" Width="118px" Font-Size="X-Small" Font-Names="Verdana"
								Text="Save Changes" Font-Bold="True" onclick="but_save_Click"></asp:Button></TD>
						<TD style="width: 156px">
							<asp:Button id="but_grid" runat="server" Width="134px" Font-Size="X-Small" Font-Names="Verdana"
								Text="Back To Grid" Font-Bold="True" onclick="but_grid_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
		</form>
	</body>
</HTML>
