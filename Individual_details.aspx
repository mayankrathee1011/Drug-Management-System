<%@ Page language="c#" Inherits="drugsample.Individual_details" CodeFile="Individual_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Individual_details</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="Datagrid2" style="Z-INDEX: 100; LEFT: 0px; POSITION: absolute; TOP: 88px" runat="server"
				Width="584px" BorderColor="#999999" BorderStyle="Solid" Height="112px" ForeColor="Black" AutoGenerateColumns="False"
				BorderWidth="3px" BackColor="#CCCCCC" CellPadding="4" onselectedindexchanged="Datagrid2_SelectedIndexChanged" CellSpacing="2">
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
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
			<asp:Label id="Label3" style="Z-INDEX: 101; LEFT: 196px; POSITION: absolute; TOP: 48px" runat="server"
				ForeColor="DarkCyan" Font-Names="Book Antiqua" Font-Size="Medium" Font-Bold="True" Font-Italic="True">Personal Details</asp:Label>
			<asp:panel id="Panel1" style="Z-INDEX: 102; LEFT: 136px; POSITION: absolute; TOP: 88px" runat="server"
				Width="301px" BorderColor="Silver" BorderStyle="Groove" Height="156px" Visible="False">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD style="HEIGHT: 21px" bgColor="#008a8c" colSpan="2">
							<asp:Label id="Label5" runat="server" ForeColor="White" Height="12px" Width="205px" Font-Names="Verdana"
								Font-Size="Small" Font-Bold="True">Individual Details</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="96px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Individual Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_emp_no" runat="server" Height="20px" BorderStyle="Groove" Width="136px"
								ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px" colSpan="1">
							<asp:Label id="Label2" runat="server" Height="12px" Width="45px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True"> Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_emp_name" runat="server" Height="20px" BorderStyle="Groove" Width="136px"
								ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; HEIGHT: 21px" align="right">
							<asp:Label id="Label4" runat="server" Height="12px" Width="52px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True"> Address</asp:Label></TD>
						<TD style="HEIGHT: 21px">
							<asp:TextBox id="txt_address" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 169px" align="right">
							<asp:Label id="Label6" runat="server" Height="12px" Width="71px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True"> Phone No</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_phone" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 169px" align="right">
							<asp:Label id="Label7" runat="server" Height="12px" Width="63px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True"> Email Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_email" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 169px">
							<asp:Button id="but_save" runat="server" Width="149px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Save Changes" onclick="but_save_Click"></asp:Button></TD>
						<TD>
							<asp:Button id="but_grid" runat="server" Width="133px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Back To Grid" onclick="but_grid_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_phone"
                ErrorMessage="RegularExpressionValidator" Style="z-index: 103; left: 432px; position: absolute;
                top: 184px" ValidationExpression="\d{10}">Enter Valid Number</asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_email"
                ErrorMessage="RegularExpressionValidator" Style="z-index: 105; left: 432px; position: absolute;
                top: 208px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter Valid Email</asp:RegularExpressionValidator>
		</form>
	</body>
</HTML>
