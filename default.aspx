<%@ Page language="c#" Inherits="drugsample._default" CodeFile="default.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>default</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:image id="Image2" style="Z-INDEX: 100; LEFT: -76px; POSITION: absolute; TOP: 56px" runat="server"
				Height="24px" Width="874px" BackColor="#63C3A5"></asp:image>
            &nbsp;
			<asp:LinkButton id="LinkButton1" style="Z-INDEX: 101; LEFT: 592px; POSITION: absolute; TOP: 56px"
				runat="server" onclick="LinkButton1_Click" Font-Bold="True">Login</asp:LinkButton>
			<asp:panel id="Panel1" style="Z-INDEX: 102; LEFT: 576px; POSITION: absolute; TOP: 80px" runat="server"
				Width="224px" Height="128px" BorderStyle="Groove" BorderColor="Silver" Visible="False">
				<TABLE id="Table2" style="WIDTH: 196px; HEIGHT: 80px" cellSpacing="1" cellPadding="0" width="196"
					border="0">
					<TR align="center">
						<TD style="HEIGHT: 25px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Width="173px" Height="12px" Font-Names="Verdana" Font-Bold="True"
								ForeColor="White" Font-Size="Small">Login Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 145px; HEIGHT: 1px">
							<asp:Label id="Label1" runat="server" Width="85px" Height="12px" Font-Names="Verdana" Font-Bold="True"
								Font-Size="X-Small">User Name</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:TextBox id="txt_name" runat="server" Width="116px" Height="20px" BorderStyle="Groove"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px; HEIGHT: 1px" align="right">
							<asp:Label id="Label2" runat="server" Width="69px" Height="8px" Font-Names="Verdana" Font-Bold="True"
								Font-Size="X-Small">PassWord</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:TextBox id="txt_pwd" runat="server" Width="116px" Height="20px" BorderStyle="Groove" TextMode="Password"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 145px; HEIGHT: 12px" colSpan="2">
							<asp:Button id="but_Submit" runat="server" Width="206px" Height="24px" Font-Names="Verdana"
								Font-Bold="True" Font-Size="X-Small" Text="Submit" onclick="but_Submit_Click"></asp:Button></TD>
					</TR>
				</TABLE>
            </asp:panel>
			<asp:Image id="Image6" style="Z-INDEX: 103; LEFT: 576px; POSITION: absolute; TOP: 80px" runat="server"
				Width="216px" Height="128px" ImageUrl="Images/mainpic.jpg"></asp:Image>
            &nbsp; &nbsp;&nbsp;
			<asp:image id="Image5" style="Z-INDEX: 105; LEFT: 448px; POSITION: absolute; TOP: 348px" runat="server"
				ImageUrl="Images/7EAAE19BCB00A99AB7F2D15BB97.jpg" Height="64px" Width="97px"></asp:image><asp:image id="Image1" style="Z-INDEX: 106; LEFT: -52px; POSITION: absolute; TOP: 4px" runat="server"
				ImageUrl="Images/DrugLogo1.jpg" Height="52px" Width="850px"></asp:image><asp:image id="Image3" style="Z-INDEX: 107; LEFT: 576px; POSITION: absolute; TOP: 208px" runat="server"
				ImageUrl="Images/untitled.bmp" Height="432px" Width="216px"></asp:image><br>
			<br>
			<br>
			<br>
			<![if !supportLineBreakNewLine]><![endif]>
			<ul style="Z-INDEX: 108; LEFT: -36px; WIDTH: 576px; POSITION: absolute; TOP: 80px; HEIGHT: 560px"
				id="UL1" runat="server">
				<li>
					<h2>Overview</h2>
					<p class="MsoBodyText2" style="MARGIN-TOP: 6pt"><span style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; LETTER-SPACING: normal; TEXT-ALIGN: justify; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                        <strong><em style="font-style: normal">The 
							new drug application (NDA) is the 
                           
                            vehicle through which drug sponsors for
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click1" PostBackUrl="~/change_password.aspx"
                                Style="z-index: 102; left: 656px; position: absolute; top: -22px" Width="120px">change password</asp:LinkButton>
                            mally
							propose that the FDA approve a new pharmaceutical for sale in the United 
							States. To obtain this authorization, a drug manufacturer submits in an NDA 
							nonclinical (animal) and clinical (human) test data and analyses, drug 
							information, and descriptions of manufacturing procedures.</em> </strong></span>
					</p>
					<div></div>
				<li>
					<h4>Under Research
						<asp:image id="Image4" style="Z-INDEX: 101; LEFT: 448px; POSITION: absolute; TOP: 120px" runat="server"
							ImageUrl="heart06.f3.gif" Height="64px" Width="97px"></asp:image><br>
					</h4>
					<br>
					<span style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                        <strong>Includes the initial introduction of an investigational new drug into humans. 
						These studies are closely monitored and may be conducted in patients, but are 
						usually conducted in healthy volunteer subjects. These studies are designed to 
						determine the metabolic and pharmacologic actions of the drug in humans, the </strong> </span>
                    <li><span style="font-size: 12pt; font-family: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman';
                        mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                        <strong>
						side effects associated with increasing doses, and, if possible, to </strong>
                    </span></li>
                    <li><span style="font-size: 12pt; font-family: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman';
                        mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                        <strong>gain early 
						evidence on effectiveness</strong>. </span></li>
				<li>
					<br>
					<h4>
                        Pre Clinical Research</h4>
					<span style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                        <strong>
						Under FDA requirements, a sponsor must first submit data showing that the drug 
						is reasonably safe for use in initial, small-scale clinical studies. Depending 
						on whether the compound has been studied or marketed previously, the sponsor 
						may have several options for fulfilling this requirement: (1) compiling 
						existing nonclinical data from past in vitro laboratory or animal 
						studies on the compound; (2) compiling data from previous clinical testing or 
						marketing of the drug in the United States or another country whose population 
						is relevant to the U.S. population; or (3) undertaking new preclinical studies 
						designed to provide the evidence necessary to support the safety of 
						administering the compound to humans.<br style="mso-special-character: line-break">
						<br style="mso-special-character: line-break">
                        </strong>
					</span>
					<OL>
					</OL>
					<DIV></DIV>
					<br>
				</li>
			</ul>
		</form>
	</body>
</HTML>
