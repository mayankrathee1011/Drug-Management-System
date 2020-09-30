<%@ Page language="c#" Inherits="drugsample.New_individual_reg" CodeFile="New_individual_reg.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>New_individual_reg</title>
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
			<asp:panel id="Panel1" style="Z-INDEX: 100; LEFT: 168px; POSITION: absolute; TOP: 124px" runat="server"
				Height="248px" BorderStyle="Groove" BorderColor="Silver" Width="284px">
			</asp:panel>
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 101; LEFT: 620px; POSITION: absolute; TOP: 52px"
				runat="server" ForeColor="Black" BackColor="#63C3A5" NavigateUrl="default.aspx">Home</asp:HyperLink>
			<asp:Image id="Image1" style="Z-INDEX: 102; LEFT: -44px; POSITION: absolute; TOP: 0px" runat="server"
				Height="56px" Width="850px" ImageUrl="Images/DrugLogo1.jpg"></asp:Image>
			<asp:Image id="Image2" style="Z-INDEX: 103; LEFT: -36px; POSITION: absolute; TOP: 52px" runat="server"
				Height="20px" Width="846px" BackColor="#63C3A5"></asp:Image>
            &nbsp;
			<asp:Label id="Label9" style="Z-INDEX: 104; LEFT: 236px; POSITION: absolute; TOP: 84px" runat="server"
				Width="152px" Font-Names="Book Antiqua" Font-Size="Medium" Font-Bold="True" ForeColor="DarkCyan"
				Font-Italic="True">Registration Form</asp:Label>
			<asp:ValidationSummary id="ValidationSummary1" style="Z-INDEX: 105; LEFT: 504px; POSITION: absolute; TOP: 176px"
				runat="server"></asp:ValidationSummary>
				<TABLE id="Table2" style="WIDTH: 216px; HEIGHT: 134px; z-index: 108; left: 480px; position: absolute; top: 312px;" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="#008a8c" colSpan="2" style="height: 9px">
							<asp:Label id="Label13" runat="server" Width="167px" Height="12px" ForeColor="White" Font-Bold="True"
								Font-Size="Small" Font-Names="Verdana">Login Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; height: 26px;">
							<asp:Label id="Label12" runat="server" Width="81px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">User Name</asp:Label></TD>
						<TD style="width: 152px; height: 26px">
							<asp:TextBox id="txt_individual_name" runat="server" Width="136px" BorderStyle="Groove" Height="20px"
								ReadOnly="True" style="z-index: 100; left: 104px; position: absolute; top: 24px"></asp:TextBox>
							</TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px" colSpan="1">
							<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="Enter password" ControlToValidate="txt_pwd">*</asp:RequiredFieldValidator>
							<asp:Label id="Label11" runat="server" Width="71px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">PassWord</asp:Label></TD>
						<TD style="width: 152px">
							<asp:TextBox id="txt_pwd" runat="server" Width="136px" BorderStyle="Groove" Height="20px" OnTextChanged="txt_pwd_TextChanged"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; HEIGHT: 19px">
							<asp:Label id="Label10" runat="server" Width="97px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Profile Name</asp:Label></TD>
						<TD style="HEIGHT: 19px; width: 152px;">
							<asp:TextBox id="txt_profile" runat="server" Width="136px" BorderStyle="Groove" Height="20px"
								ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 169px" colSpan="2">
							<asp:Button id="Button1" runat="server" Width="240px" Height="24px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Save " onclick="Button1_Click"></asp:Button></TD>
					</TR>
				</TABLE>
				<TABLE id="Table1" style="WIDTH: 280px; HEIGHT: 221px; z-index: 109; left: 168px; position: absolute; top: 136px;" cellSpacing="1" cellPadding="0"
					width="280" border="0" language="javascript" onclick="return Table1_onclick()">
					<TR align="center">
						<TD style="HEIGHT: 20px" bgColor="#008a8c" colSpan="2">
							<asp:Label id="Label5" runat="server" Width="227px" Height="12px" ForeColor="White" Font-Bold="True"
								Font-Size="Small" Font-Names="Verdana">Individual Master Details</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 135px">
							<asp:Label id="Label1" runat="server" Width="96px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Individual Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_ind_id" runat="server" Width="144px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 135px" colSpan="1">
							<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="txt_ind_name">*</asp:RequiredFieldValidator>
							<asp:Label id="Label2" runat="server" Width="118px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Individual Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_ind_name" runat="server" Width="144px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 135px">
							<asp:Label id="Label3" runat="server" Width="97px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Date Of Birth</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_ind_dob" runat="server" Width="144px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 135px; HEIGHT: 21px" align="right">
							<asp:Label id="Label4" runat="server" Width="58px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana"> Gender</asp:Label></TD>
						<TD style="HEIGHT: 21px">
							<asp:DropDownList id="dr_gender" runat="server" Width="144px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">
								<asp:ListItem Value="Male" Selected="True">Male</asp:ListItem>
								<asp:ListItem Value="Female">Female</asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 135px" align="right">
							<asp:Label id="Label6" runat="server" Width="57px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana"> Address</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_ind_address" runat="server" Width="144px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 135px" align="right">
							<asp:Label id="Label7" runat="server" Width="70px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Phone No</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_phone" runat="server" Width="144px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 135px" align="right">
							<asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="enter e-mail id" ControlToValidate="txt_email"
								ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
							<asp:Label id="Label8" runat="server" Width="68px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Email ID</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_email" runat="server" Width="144px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD colSpan="2">
							<asp:Button id="but_save" runat="server" Width="275px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Save " onclick="but_save_Click"></asp:Button></TD>
					</TR>
				</TABLE>
		</form>
	</body>
</HTML>
