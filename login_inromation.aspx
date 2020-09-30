<%@ Page language="c#" Inherits="drugsample.login_inromation" CodeFile="login_inromation.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>login_inromation</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 100; LEFT: 212px; POSITION: absolute; TOP: 92px" runat="server"
				Width="248px" BorderColor="Silver" BorderStyle="Groove" Height="161px">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" Width="227px" Font-Names="Verdana" Font-Size="Small"
								Font-Bold="True" ForeColor="White">Login Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="104px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">User Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_ind_id" runat="server" Height="20px" BorderStyle="Groove" Width="136px" OnTextChanged="txt_ind_id_TextChanged"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px" colSpan="1">
							<asp:Label id="Label2" runat="server" Height="12px" Width="71px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">PassWord</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_pwd" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; height: 28px;">
							<asp:Label id="Label3" runat="server" Height="12px" Width="97px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Profile Name</asp:Label></TD>
						<TD style="height: 28px">
							<asp:DropDownList id="dr_profile_name" runat="server" Width="136px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" AutoPostBack="True">
								<asp:ListItem></asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
                    <tr align="right">
                        <td style="width: 169px; height: 24px">
                        </td>
                        <td style="height: 24px">
                        </td>
                    </tr>
					<TR align="center">
						<TD style="WIDTH: 169px; height: 29px;" colSpan="2">
							</TD>
					</TR>
				</TABLE>
							<asp:Button id="but_save" runat="server" Height="24px" Width="240px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Save " onclick="but_save_Click" style="z-index: 100; left: 0px; position: absolute; top: 120px"></asp:Button>
			</asp:panel>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_pwd"
                ErrorMessage="RegularExpressionValidator" Style="z-index: 101; left: 464px; position: absolute;
                top: 144px" ValidationExpression="^[\w]{4,10}">Enter 4-10 characters</asp:RegularExpressionValidator>
            &nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                Style="z-index: 102; left: 256px; position: absolute; top: 200px" Text="Reg Id"></asp:Label>
            <asp:TextBox ID="txt_reg_id" runat="server" Style="z-index: 103; left: 328px; position: absolute;
                top: 192px" Width="128px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_ind_id"
                ErrorMessage="RequiredFieldValidator" Style="z-index: 105; left: 464px; position: absolute;
                top: 120px">Enter username</asp:RequiredFieldValidator>
		</form>
	</body>
</HTML>
