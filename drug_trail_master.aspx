<%@ Page language="c#" Inherits="drugsample.drug_trail_master" CodeFile="drug_trail_master.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>drug_trail_master</title>
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 144px; POSITION: absolute; TOP: 104px"
				runat="server" PageSize="5" Width="336px" BorderColor="#999999" BorderStyle="Solid"
				Height="138px" ForeColor="Black" AutoGenerateColumns="False" BorderWidth="3px" BackColor="#CCCCCC"
				CellPadding="4" onselectedindexchanged="DataGrid1_SelectedIndexChanged" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="drug_id" HeaderText="Drug Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_short_name" HeaderText="Short Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_long_name" HeaderText="Long Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_general_descr" HeaderText="Grneral Descr"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_chemical_analysis" HeaderText="Chemical Analysis"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid><asp:label id="Label14" style="Z-INDEX: 101; LEFT: 172px; POSITION: absolute; TOP: 28px" runat="server"
				Width="164px" ForeColor="DarkCyan" Font-Italic="True" Font-Bold="True" Font-Size="Medium" Font-Names="Book Antiqua">Drugs Trail Details</asp:label><asp:datagrid id="Datagrid2" style="Z-INDEX: 102; LEFT: 96px; POSITION: absolute; TOP: 104px"
				runat="server" PageSize="5" Width="424px" BorderColor="#999999" BorderStyle="Solid" Height="120px" ForeColor="Black" AutoGenerateColumns="False" BorderWidth="3px" BackColor="#CCCCCC" CellPadding="4" Visible="False" onselectedindexchanged="Datagrid2_SelectedIndexChanged_1" CellSpacing="2">
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
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                    <ItemStyle BackColor="White" />
			</asp:datagrid><asp:button id="Button2" style="Z-INDEX: 103; LEFT: 376px; POSITION: absolute; TOP: 72px" runat="server"
				Width="133px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana" Text="New Drug Info" onclick="Button2_Click"></asp:button><asp:button id="but_allergic" style="Z-INDEX: 104; LEFT: 72px; POSITION: absolute; TOP: 72px"
				runat="server" Width="168px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana" Visible="False" Text="Any Allergic Symptons" onclick="but_allergic_Click"></asp:button><asp:button id="but_reaction" style="Z-INDEX: 105; LEFT: 240px; POSITION: absolute; TOP: 72px"
				runat="server" Width="133px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana" Visible="False" Text="Any Reaction" onclick="but_reaction_Click"></asp:button><asp:panel id="Panel1" style="Z-INDEX: 106; LEFT: 80px; POSITION: absolute; TOP: 104px" runat="server"
				Width="288px" BorderColor="Silver" BorderStyle="Groove" Height="256px" Visible="False">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD style="HEIGHT: 23px" bgColor="#008a8c" colSpan="2">
							<asp:Label id="Label5" runat="server" Width="227px" Height="12px" ForeColor="White" Font-Bold="True"
								Font-Size="Small" Font-Names="Verdana">Drug Trial Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label1" runat="server" Width="90px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Drug Trial Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_trial_id" runat="server" Width="136px" BorderStyle="Groove" Height="20px"
								ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; HEIGHT: 18px" colSpan="1">
							<asp:Label id="Label3" runat="server" Width="80px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Start Date</asp:Label></TD>
						<TD style="HEIGHT: 18px">
							<asp:TextBox id="txt_start_date" runat="server" Width="136px" BorderStyle="Groove" Height="20px"
								ReadOnly="True" OnTextChanged="txt_start_date_TextChanged"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; height: 22px;">
							<asp:Label id="Label2" runat="server" Width="113px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Target Date</asp:Label></TD>
						<TD style="height: 22px">
							<asp:TextBox id="txt_comp" runat="server" Width="136px" BorderStyle="Groove" Height="20px" OnTextChanged="txt_comp_TextChanged"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; HEIGHT: 22px" align="right">
							<asp:Label id="Label4" runat="server" Width="145px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Purpose Of Trial</asp:Label></TD>
						<TD style="HEIGHT: 22px">
							<asp:TextBox id="txt_purpose" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 169px" align="right">
							<asp:Label id="Label6" runat="server" Width="109px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Employee Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_invest" runat="server" Width="136px" BorderStyle="Groove" Height="20px"
								ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 169px" align="right">
							<asp:Label id="Label7" runat="server" Width="109px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Individual Id</asp:Label></TD>
						<TD>
							<asp:DropDownList id="dr_indivi_name" runat="server" Width="136px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">
								<asp:ListItem></asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 169px" align="right">
							<asp:Label id="Label8" runat="server" Width="62px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Drug Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_drug" runat="server" Width="136px" BorderStyle="Groove" Height="20px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 169px" align="right">
							<asp:Label id="Label9" runat="server" Width="80px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Trial Result</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_result" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 169px" align="right">
							<asp:Label id="Label10" runat="server" Width="89px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Trial Status</asp:Label></TD>
						<TD>
							<asp:DropDownList id="dr_status" runat="server" Width="136px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">
								<asp:ListItem Value="Not Completed">Not Completed</asp:ListItem>
								<asp:ListItem Value="Completed">Completed</asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 169px" colSpan="2">
							<asp:Button id="but_save" runat="server" Width="286px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Save Changes" onclick="but_save_Click"></asp:Button></TD>
					</TR>
				</TABLE>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_start_date"
                        ControlToValidate="txt_comp" ErrorMessage="must be greater than" Operator="GreaterThan"
                        Style="z-index: 100; left: 296px; position: absolute; top: 80px" Width="144px">Greater than start date</asp:CompareValidator>
			</asp:panel><asp:panel id="Panel2" style="Z-INDEX: 107; LEFT: 80px; POSITION: absolute; TOP: 96px" runat="server"
				Width="296px" BorderColor="Silver" BorderStyle="Groove" Height="108px" Visible="False">
				<TABLE id="Table2" style="WIDTH: 292px; HEIGHT: 84px; z-index: 109; left: 0px; position: absolute; top: 0px;" cellSpacing="1" cellPadding="0" width="292"
					border="0">
					<TR align="center">
						<TD style="HEIGHT: 21px; font-weight: bold; font-size: small; color: #ffffff;" bgColor="#008a8c" colSpan="2">
                            Allergic Reaction Agent</TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; HEIGHT: 13px">
							<asp:Label id="Label12" runat="server" Width="112px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Drug Trial Id</asp:Label></TD>
						<TD style="HEIGHT: 13px; width: 137px;">
							<asp:TextBox id="txt_drug_trial" runat="server" Width="136px" BorderStyle="Groove" Height="20px" ></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; HEIGHT: 1px" colSpan="1">
							<asp:Label id="Label11" runat="server" Width="145px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Reaction Name</asp:Label></TD>
						<TD style="HEIGHT: 1px; width: 137px;">
							<asp:DropDownList id="dr_reaction" runat="server" Width="136px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">
								<asp:ListItem></asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 169px" colSpan="2">
							<asp:Button id="Button1" runat="server" Width="283px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana"
								Text="Save Changes" onclick="Button1_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
            &nbsp; &nbsp;&nbsp;&nbsp;
			</form>
	</body>
</HTML>
