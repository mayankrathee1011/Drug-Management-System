<%@ Page language="c#" Inherits="drugsample.individual_master" CodeFile="individual_master.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>individual_master</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 100; LEFT: 160px; POSITION: absolute; TOP: 88px" runat="server"
				Height="233px" BorderStyle="Groove" BorderColor="Silver" Width="296px" Visible="False">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 144px" cellSpacing="1" cellPadding="0" border="0">
					<TR align="center">
						<TD bgColor="#008a8c" colSpan="2">
							<asp:Label id="Label5" runat="server" Width="227px" Height="12px" Font-Names="Verdana" Font-Size="Small"
								Font-Bold="True" ForeColor="White">Individual Master Details</asp:Label></TD>
                        <td bgcolor="#008a8c" colspan="1" style="width: 3973px">
                        </td>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; height: 22px;">
							<asp:Label id="Label1" runat="server" Width="96px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Individual Id</asp:Label></TD>
						<TD style="width: 173px; height: 22px;">
							<asp:TextBox id="txt_ind_id" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
                        <td style="width: 3973px; height: 22px">
                        </td>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px" colSpan="1">
							<asp:Label id="Label2" runat="server" Width="118px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Individual Name</asp:Label></TD>
						<TD style="width: 173px">
							<asp:TextBox id="txt_ind_name" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
                        <td style="width: 3973px">
                        </td>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label3" runat="server" Width="97px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Date Of Birth</asp:Label></TD>
						<TD style="width: 173px">
							<asp:TextBox id="txt_ind_dob" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
                        <td style="width: 3973px">
                        </td>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; HEIGHT: 21px" align="right">
							<asp:Label id="Label4" runat="server" Width="58px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True"> Gender</asp:Label></TD>
						<TD style="HEIGHT: 21px; width: 173px;">
							<asp:DropDownList id="dr_gender" runat="server" Width="134px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">
								<asp:ListItem Value="Male" Selected="True">Male</asp:ListItem>
								<asp:ListItem Value="Female">Female</asp:ListItem>
							</asp:DropDownList></TD>
                        <td style="width: 3973px; height: 21px">
                        </td>
					</TR>
					<TR>
						<TD style="WIDTH: 169px; height: 30px;" align="right">
							<asp:Label id="Label6" runat="server" Width="57px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True"> Address</asp:Label></TD>
						<TD style="height: 30px; width: 173px;">
							<asp:TextBox id="txt_ind_address" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
                        <td style="width: 3973px; height: 30px">
                        </td>
					</TR>
					<TR>
						<TD style="WIDTH: 169px" align="right">
							<asp:Label id="Label7" runat="server" Width="70px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Phone No</asp:Label></TD>
						<TD style="width: 173px">
							<asp:TextBox id="txt_phone" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
                        <td style="width: 3973px">
                        </td>
					</TR>
					<TR>
						<TD style="WIDTH: 169px; height: 23px;" align="right">
							<asp:Label id="Label8" runat="server" Width="68px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Email ID</asp:Label></TD>
						<TD style="height: 23px; width: 173px;">
							<asp:TextBox id="txt_email" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
                        <td style="width: 3973px; height: 23px">
                        </td>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 169px; height: 23px;">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Style="z-index: 100; left: 8px; position: absolute; top: 192px" Text="Date Of Joining"
                                Width="112px"></asp:Label>
                        </TD>
						<TD style="width: 173px; height: 23px">
                            <asp:TextBox ID="txt_ind_doj" runat="server" OnTextChanged="txt_ind_doj_TextChanged"
                                Style="z-index: 100; left: 120px; position: absolute; top: 192px" Width="136px"></asp:TextBox>
                        </TD>
                        <td style="width: 3973px; height: 23px">
                        </td>
					</TR>
                    <tr align="center">
                        <td style="width: 169px; height: 26px">
                        </td>
                        <td style="width: 173px; height: 26px">
							<asp:Button id="but_grid" runat="server" Width="132px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Back To Grid" onclick="but_grid_Click" style="z-index: 100; left: 120px; position: absolute; top: 216px"></asp:Button>
                        </td>
                        <td style="width: 3973px; height: 26px">
                        </td>
                    </tr>
				</TABLE>
							<asp:Button id="but_save" runat="server" Width="120px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Save Changes" onclick="but_save_Click" style="z-index: 100; left: 0px; position: absolute; top: 216px"></asp:Button>
			</asp:panel>
			<asp:Label id="Label13" style="Z-INDEX: 101; LEFT: 160px; POSITION: absolute; TOP: 32px" runat="server"
				Width="152px" Font-Names="Book Antiqua" Font-Size="Medium" Font-Bold="True" ForeColor="DarkCyan"
				Font-Italic="True">Individual Details</asp:Label>
			<asp:button id="but_new" style="Z-INDEX: 102; LEFT: 384px; POSITION: absolute; TOP: 64px" runat="server"
				Width="132px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana" Text="New Record" onclick="but_new_Click"></asp:button>
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 103; LEFT: 24px; POSITION: absolute; TOP: 88px" runat="server"
				Width="612px" BorderColor="#999999" BorderStyle="Solid" Height="108px" ForeColor="Black" AutoGenerateColumns="False"
				BorderWidth="3px" BackColor="#CCCCCC" CellPadding="4" PageSize="5" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="individual_id" HeaderText="Individual Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_name" HeaderText="Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_dob" HeaderText="Date Of Birth" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_gender" HeaderText="Gender"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_phone" HeaderText="Phone No"></asp:BoundColumn>
					<asp:BoundColumn DataField="individual_email" HeaderText="Email Id"></asp:BoundColumn>
                    <asp:BoundColumn DataField="individual_doj" DataFormatString="{0:d}" HeaderText="Date Of joining">
                    </asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_ind_name"
                ErrorMessage="RequiredFieldValidator" Style="z-index: 109; left: 424px; position: absolute;
                top: 136px">Enter Name</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email"
                ErrorMessage="Enter Valid Email Id" Style="z-index: 105; left: 424px; position: absolute;
                top: 256px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">enter valid email</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_ind_address"
                ErrorMessage="Enter Address" Style="z-index: 106; left: 424px; position: absolute;
                top: 208px" Width="88px">enter address</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_phone"
                ErrorMessage="RegularExpressionValidator" Style="z-index: 107; left: 424px; position: absolute;
                top: 240px" ValidationExpression="\d{11}">Enter valid number</asp:RegularExpressionValidator>
            &nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_ind_dob"
                ErrorMessage="RangeValidator" MaximumValue="12/31/2000" MinimumValue="1/1/1950"
                Style="z-index: 108; left: 424px; position: absolute; top: 160px" Type="Date">Enter valid dob</asp:RangeValidator>
		</form>
	</body>
</HTML>
