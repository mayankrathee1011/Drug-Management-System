<%@ Page language="c#" Inherits="drugsample.anti_allergic_symp_drug" CodeFile="anti_allergic_symp_drug.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>anti_allergic_symp_drug</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
            &nbsp;
			<asp:Label id="Label13" style="Z-INDEX: 100; LEFT: 168px; POSITION: absolute; TOP: 40px" runat="server"
				Width="248px" ForeColor="DarkCyan" Font-Names="Book Antiqua" Font-Size="Medium" Font-Bold="True"
				Font-Italic="True">Anti Allergic Drugs Symptoms</asp:Label>
			<asp:button id="but_new" style="Z-INDEX: 101; LEFT: 368px; POSITION: absolute; TOP: 88px" runat="server"
				Width="80px" Font-Bold="True" Text="New" Font-Size="X-Small" Font-Names="Verdana" OnClick="but_new_Click"></asp:button>
            &nbsp;
            <br />
            <br />
            <br />
            <br />
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px; z-index: 106; left: 144px; position: absolute; top: 112px; border-left-color: #000000; border-bottom-color: #000000; border-top-style: double; border-top-color: #000000; border-right-style: double; border-left-style: double; border-right-color: #000000; border-bottom-style: double;" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="#008a8c" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" Width="245px" ForeColor="White" Font-Bold="True"
								Font-Size="Small" Font-Names="Verdana">Anti Allergic Symptons Drug</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="154px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Anti Aller Drug Name</asp:Label></TD>
						<TD>
							<asp:DropDownList id="dr_anti_drug_id" runat="server" Width="136px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" AutoPostBack="True" OnSelectedIndexChanged="dr_anti_drug_id_SelectedIndexChanged">
								<asp:ListItem></asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px" colSpan="1">
							<asp:Label id="Label2" runat="server" Height="12px" Width="104px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Allergic Name</asp:Label></TD>
						<TD>
							<asp:DropDownList id="dr_allergic_id" runat="server" Width="136px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" AutoPostBack="True" OnSelectedIndexChanged="dr_allergic_id_SelectedIndexChanged">
								<asp:ListItem></asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label3" runat="server" Height="12px" Width="97px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Special Descr</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_desig_descr" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 169px; height: 24px;">
            <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="16px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></TD>
						<TD style="height: 24px">
            <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="16px"></asp:TextBox></TD>
					</TR>
				</TABLE>
            <br />
            <br />
            <br />
            &nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="but_save" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                Style="z-index: 103; left: 216px; position: absolute;
                top: 248px" Text="Save" Width="72px" OnClick="but_save_Click" Enabled="False" />
            &nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                Style="z-index: 104; left: 320px; position: absolute;
                top: 248px" Text="Refresh" Width="72px" OnClick="Button3_Click" />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black"
                Style="z-index: 105; left: 80px; position: absolute; top: 288px" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="4" DataKeyNames="anti_allerg_drug_id" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                <FooterStyle BackColor="#CCCCCC" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <HeaderStyle BackColor="DarkCyan" Font-Bold="True" ForeColor="White" />
                <Columns>
                    <asp:BoundField DataField="anti_allerg_drug_id" HeaderText="anti_allerg_drug_id"
                        SortExpression="anti_allerg_drug_id" />
                    <asp:BoundField DataField="allergic_id" HeaderText="allergic_id" SortExpression="allergic_id" />
                    <asp:BoundField DataField="any_special_instru" HeaderText="any_special_instru" SortExpression="any_special_instru" />
                    <asp:CommandField ShowEditButton="True" ShowHeader="True" />
                </Columns>
            </asp:GridView>
            &nbsp;
                
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:drugmanagementConnectionString %>"
                SelectCommand="SELECT * FROM [anti_allerg_symp_drug]" UpdateCommand="update anti_allerg_symp_drug set anti_allerg_drug_id=@anti_allerg_drug_id,allergic_id=@allergic_id,any_special_instru=@any_special_instru where anti_allerg_drug_id=@anti_allerg_drug_id">
                <UpdateParameters>
                <asp:Parameter Type ="string" Name="anti_allerg_drug_id" />
                <asp:Parameter Type ="string" Name ="allergic_id" />
                <asp:Parameter Type ="string" Name ="any_special_instru" />                   
                </UpdateParameters> 
                </asp:SqlDataSource>
		</form>
	</body>
</HTML>
