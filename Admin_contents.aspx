<%@ Page language="c#" Inherits="drugsample.Admin_contents" CodeFile="Admin_contents.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Admin_contents</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#669999">
		<form id="Form1" method="post" runat="server">
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 100; LEFT: 8px; POSITION: absolute; TOP: 8px" runat="server"
				ForeColor="LightCyan" NavigateUrl="employee_master.aspx" Target="main" Width="112px">Employee Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink12" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 344px"
				runat="server" Width="104px" Target="main" NavigateUrl="individual_master.aspx" ForeColor="LightCyan">Individual Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink11" style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 296px"
				runat="server" Width="152px" Target="main" NavigateUrl="clinical_condition_master.aspx" ForeColor="LightCyan">Clinical Condition Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink10" style="Z-INDEX: 103; LEFT: 8px; POSITION: absolute; TOP: 272px"
				runat="server" Width="104px" Target="main" NavigateUrl="condition_master.aspx" ForeColor="LightCyan">Condition Details</asp:HyperLink>
            <asp:HyperLink ID="HyperLink13" runat="server" Font-Underline="True" ForeColor="LightCyan"
                NavigateUrl="Individual_clinical_master.aspx" Style="z-index: 104; left: 8px;
                position: absolute; top: 320px" Target="main" Width="176px">Individual Clinical Condition</asp:HyperLink>
			<asp:HyperLink id="HyperLink9" style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 248px"
				runat="server" Target="main" NavigateUrl="anti_allergic_symp_drug.aspx" ForeColor="LightCyan"
				Width="156px"> AntiAllergyDrugSymptoms </asp:HyperLink>
			<asp:HyperLink id="HyperLink8" style="Z-INDEX: 106; LEFT: 8px; POSITION: absolute; TOP: 224px"
				runat="server" Target="main" NavigateUrl="anti_allergic_drugs.aspx" ForeColor="LightCyan" Width="120px">Anti Allergic Drugs</asp:HyperLink>
			<asp:HyperLink id="HyperLink7" style="Z-INDEX: 107; LEFT: 8px; POSITION: absolute; TOP: 200px"
				runat="server" Target="main" NavigateUrl="allergic_symptoms_master.aspx" ForeColor="LightCyan"
				Width="144px">Allegic Symptoms Info.</asp:HyperLink>
			<asp:HyperLink id="HyperLink6" style="Z-INDEX: 108; LEFT: 8px; POSITION: absolute; TOP: 176px"
				runat="server" Target="main" NavigateUrl="reaction_agent_master.aspx" ForeColor="LightCyan"
				Width="140px">Reaction Agent Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink5" style="Z-INDEX: 109; LEFT: 8px; POSITION: absolute; TOP: 128px"
				runat="server" Target="main" NavigateUrl="usage_condition_master.aspx" ForeColor="LightCyan"
				Width="136px">Usage Condition Info</asp:HyperLink>
			<asp:HyperLink id="HyperLink4" style="Z-INDEX: 110; LEFT: 8px; POSITION: absolute; TOP: 104px" runat="server"
				Target="main" NavigateUrl="drug_reg_master.aspx" ForeColor="LightCyan" Width="112px">Drug Registration</asp:HyperLink>
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 111; LEFT: 8px; POSITION: absolute; TOP: 56px" runat="server"
				ForeColor="LightCyan" NavigateUrl="designation_master.aspx" Target="main" Width="120px">Designation Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink2" style="Z-INDEX: 112; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				ForeColor="LightCyan" NavigateUrl="department_master.aspx" Target="main" Width="120px">Department Details</asp:HyperLink>&nbsp; &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink14" runat="server" Font-Underline="True" ForeColor="LightCyan"
                NavigateUrl="individual_allergic_master.aspx" Style="z-index: 113; left: 8px;
                position: absolute; top: 152px" Target="main" Width="152px">Drug Usage Conditions</asp:HyperLink>
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink15" runat="server" ForeColor="LightCyan" NavigateUrl="~/login_inromation.aspx"
                Style="z-index: 115; left: 8px; position: absolute; top: 80px" Target="main">Login_Info</asp:HyperLink>
		</form>
	</body>
</HTML>
