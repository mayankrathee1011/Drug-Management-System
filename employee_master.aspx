<%@ Page language="c#" Inherits="drugsample.employee_master" CodeFile="employee_master.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>employee_master</title>
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body style="position: absolute">
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 100; LEFT: 24px; POSITION: absolute; TOP: 88px" runat="server"
				Visible="False" Height="288px" BorderStyle="Groove" BorderColor="Silver" Width="440px">
				<TABLE id="Table1" style="WIDTH: 464px; HEIGHT: 134px; left: 0px; position: relative; top: 0px;" cellSpacing="1" cellPadding="0" border="0">
					<TR align="center">
						<TD bgColor="#008a8c" colSpan="2" style="height: 18px">
							<asp:Label id="Label5" runat="server" Width="205px" Height="12px" Font-Names="Verdana" Font-Size="Small"
								Font-Bold="True" ForeColor="White">Employee Registration</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 152px; height: 21px;">
							<asp:Label id="Label1" runat="server" Width="96px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" style="left: 144px; position: absolute; top: 24px">Employee No</asp:Label></TD>
						<TD style="width: 127px; height: 21px">
							<asp:TextBox id="txt_emp_no" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 152px; height: 22px;" colSpan="1">
							<asp:Label id="Label2" runat="server" Width="118px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" style="left: 120px; position: absolute; top: 48px">Employee Name</asp:Label></TD>
						<TD style="width: 127px; height: 22px">
							<asp:TextBox id="txt_emp_name" runat="server" Width="136px" BorderStyle="Groove" Height="20px" OnTextChanged="txt_emp_name_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_emp_name"
                                ErrorMessage="RequiredFieldValidator" Style="z-index: 100; left: 376px; position: absolute;
                                top: 40px" Width="80px">Enter Name</asp:RequiredFieldValidator>
                        </TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 152px; height: 22px;">
							<asp:Label id="Label3" runat="server" Width="104px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" style="left: 136px; position: absolute; top: 72px">Date Of Birth</asp:Label></TD>
						<TD style="width: 127px; height: 22px">
							<asp:TextBox id="txt_dob" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_dob"
                                MaximumValue="12/31/1990" MinimumValue="1/1/1950" Style="z-index: 100; left: 376px;
                                position: absolute; top: 72px" Type="Date" Width="64px">valid dob</asp:RangeValidator>
                        </TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 152px; HEIGHT: 21px" align="right">
							<asp:Label id="Label4" runat="server" Width="52px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" style="left: 176px; position: absolute; top: 96px"> Address</asp:Label></TD>
						<TD style="HEIGHT: 21px; width: 127px;">
							<asp:TextBox id="txt_address" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox>&nbsp;&nbsp;
                        </TD>
					</TR>
					<TR>
						<TD style="WIDTH: 152px; height: 8px;" align="right">
							<asp:Label id="Label6" runat="server" Width="71px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" style="left: 168px; position: absolute; top: 120px"> Phone No</asp:Label></TD>
						<TD style="width: 127px; height: 8px;">
							<asp:TextBox id="txt_phone" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox>&nbsp;
                        </TD>
					</TR>
					<TR>
						<TD style="WIDTH: 152px; height: 22px;" align="right">
							<asp:Label id="Label7" runat="server" Width="63px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" style="left: 176px; position: absolute; top: 144px"> Email Id</asp:Label></TD>
						<TD style="width: 127px; height: 22px;">
							<asp:TextBox id="txt_email" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox>&nbsp;&nbsp;
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"
                                Style="z-index: 100; left: 376px; position: absolute; top: 136px" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="112px">Enter valid E-mail</asp:RegularExpressionValidator>
                        </TD>
					</TR>
					<TR>
						<TD style="WIDTH: 152px; height: 28px;" align="right">
							<asp:Label id="Label8" runat="server" Width="57px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" style="left: 176px; position: absolute; top: 168px"> Gender</asp:Label></TD>
						<TD style="width: 127px; height: 28px;">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="1px" Style="z-index: 100;
                                left: 248px; position: absolute; top: 160px" Width="128px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </TD>
					</TR>
					<TR>
						<TD style="WIDTH: 152px; height: 28px;" align="right">
							<asp:Label id="Label9" runat="server" Width="114px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" style="left: 112px; position: absolute; top: 192px">Date Of Joining</asp:Label></TD>
						<TD style="width: 127px; height: 28px;">
							<asp:TextBox id="txt_doj" runat="server" Width="136px" BorderStyle="Groove" Height="20px" style="left: 248px; position: absolute; top: 192px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 152px; HEIGHT: 16px" align="right">
							<asp:Label id="Label10" runat="server" Width="139px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" style="left: 104px; position: absolute; top: 216px">Department Name</asp:Label></TD>
						<TD style="HEIGHT: 16px; width: 127px;">
							<asp:DropDownList id="dr_dept_name" runat="server" Width="136px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" OnSelectedIndexChanged="dr_dept_name_SelectedIndexChanged">
								<asp:ListItem></asp:ListItem>
							</asp:DropDownList>&nbsp;
                        </TD>
					</TR>
					<TR>
						<TD style="WIDTH: 152px" align="right">
							<asp:Label id="Label11" runat="server" Width="140px" Height="12px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" style="left: 96px; position: absolute; top: 240px">Designation Name</asp:Label></TD>
						<TD style="width: 127px">
							<asp:DropDownList id="dr_desig_name" runat="server" Width="136px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">
								<asp:ListItem></asp:ListItem>
							</asp:DropDownList>&nbsp;
                        </TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 152px; height: 28px;">
							<asp:Button id="but_save" runat="server" Width="149px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Save Changes" onclick="but_save_Click" style="position: absolute; left: 80px; top: 264px;"></asp:Button></TD>
						<TD style="width: 127px; height: 28px;">
							<asp:Button id="but_grid" runat="server" Width="133px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Back To Grid" onclick="but_grid_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:Label id="Label13" style="Z-INDEX: 101; LEFT: 136px; POSITION: absolute; TOP: 16px" runat="server"
				Width="228px" ForeColor="DarkGreen" Font-Bold="True" Font-Size="Medium" Font-Names="Book Antiqua"
				Font-Italic="True" BackColor="Transparent">Employee Complete Details</asp:Label><asp:button id="but_new" style="Z-INDEX: 102; LEFT: 352px; POSITION: absolute; TOP: 56px" runat="server"
				Width="132px" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True" Text="New Record" onclick="but_new_Click"></asp:button><asp:datagrid id="DataGrid1" style="Z-INDEX: 103; LEFT: 8px; POSITION: absolute; TOP: 80px" runat="server"
				Height="153px" BorderStyle="Solid" BorderColor="#999999" Width="776px" ForeColor="Black" CellPadding="4" BackColor="#CCCCCC" BorderWidth="3px" AutoGenerateColumns="False"
				AllowPaging="True" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged1" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan" BorderStyle="Solid"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="employee_name" HeaderText="Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_no" HeaderText="Emp Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_dob" HeaderText="Dob" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_phone" HeaderText="Phone No"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_email" HeaderText="Email Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_gender" HeaderText="Gender"></asp:BoundColumn>
					<asp:BoundColumn DataField="employee_doj" HeaderText="Doj" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="dept_no" HeaderText="Dept No"></asp:BoundColumn>
					<asp:BoundColumn DataField="desig_id" HeaderText="Desig No"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                    <ItemStyle BackColor="White" />
			</asp:datagrid>
            &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_phone"
                ErrorMessage="RegularExpressionValidator" Style="z-index: 107; left: 408px; position: absolute;
                top: 208px" ValidationExpression="\d{11}" Width="120px">Enter valid number</asp:RegularExpressionValidator>
		</form>
	</body>
</HTML>
