<%@ Page language="c#" Inherits="drugsample.LoginForm1" CodeFile="LoginForm1.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>LoginForm1</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 100; LEFT: 192px; POSITION: absolute; TOP: 112px" runat="server"
				BorderStyle="Groove" Height="136px" Width="320px" BorderColor="Silver">
				<TABLE id="Table1" style="WIDTH: 293px; HEIGHT: 74px" cellSpacing="1" cellPadding="0" width="293"
					border="0">
					<TR align="center">
						<TD style="HEIGHT: 25px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Width="173px" Height="12px" Font-Names="Verdana" Font-Bold="True"
								ForeColor="White" Font-Size="Small">Login Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 145px; HEIGHT: 1px">
							<asp:Label id="Label1" runat="server" Width="97px" Height="12px" Font-Names="Verdana" Font-Bold="True"
								Font-Size="X-Small">User Name</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:TextBox id="txt_name" runat="server" Width="150px" Height="20px" BorderStyle="Groove"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px; HEIGHT: 1px" align="right">
							<asp:Label id="Label2" runat="server" Width="69px" Height="8px" Font-Names="Verdana" Font-Bold="True"
								Font-Size="X-Small">PassWord</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:TextBox id="txt_pwd" runat="server" Width="152px" Height="20px" BorderStyle="Groove" TextMode="Password"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 145px; HEIGHT: 12px" colSpan="2">
							<asp:Button id="but_Submit" runat="server" Width="296px" Height="24px" Font-Names="Verdana"
								Font-Bold="True" Font-Size="X-Small" Text="Submit" onclick="but_Submit_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:linkbutton id="LinkButton1" style="Z-INDEX: 101; LEFT: 224px; POSITION: absolute; TOP: 80px"
				runat="server" onclick="LinkButton1_Click">Administrator</asp:linkbutton>
			<asp:linkbutton id="LinkButton2" style="Z-INDEX: 102; LEFT: 328px; POSITION: absolute; TOP: 80px"
				runat="server" onclick="LinkButton2_Click">Employee</asp:linkbutton>
			<asp:linkbutton id="LinkButton3" style="Z-INDEX: 103; LEFT: 404px; POSITION: absolute; TOP: 80px"
				runat="server" onclick="LinkButton3_Click">Individual</asp:linkbutton>
            &nbsp; &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_pwd"
                ErrorMessage="RegularExpressionValidator" Style="z-index: 106; left: 280px; position: absolute;
                top: 216px" ValidationExpression="\w{4,10}">enter  4-10 characters</asp:RegularExpressionValidator>
		</form>
	</body>
</HTML>
