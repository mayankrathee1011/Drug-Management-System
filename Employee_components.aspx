<%@ Page language="c#" Inherits="drugsample.Employee_components" CodeFile="Employee_components.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Employee_components</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#669999">
		<form id="Form1" method="post" runat="server">
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 100; LEFT: 4px; POSITION: absolute; TOP: 20px" runat="server"
				NavigateUrl="employee_details.aspx" ForeColor="White" Target="main">MyInfo</asp:HyperLink>
			<asp:HyperLink id="HyperLink4" style="Z-INDEX: 104; LEFT: 4px; POSITION: absolute; TOP: 88px" runat="server"
				Target="main" ForeColor="White" NavigateUrl="drug_trail_master.aspx">Drug Trail Info.</asp:HyperLink>
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 103; LEFT: 4px; POSITION: absolute; TOP: 120px"
				runat="server" Target="main" ForeColor="White" NavigateUrl="employee_individual_details.aspx">Individual Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink2" style="Z-INDEX: 102; LEFT: 4px; POSITION: absolute; TOP: 52px" runat="server"
				NavigateUrl="drug_information.aspx" ForeColor="White" Target="main">Drug Info.</asp:HyperLink>&nbsp;
		</form>
	</body>
</HTML>
