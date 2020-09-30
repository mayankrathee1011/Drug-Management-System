<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Individual_clinical_master.aspx.cs" Inherits="drugsample.Individual_clinical_master" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="208px" Style="z-index: 100; left: 72px;
            position: absolute; top: 88px" Width="408px">
        <table style="z-index: 104; left: 8px; position: absolute; top: 0px; width: 376px; border-left-color: #000000; border-bottom-color: #000000; border-top-style: double; border-top-color: #000000; border-right-style: double; border-left-style: double; border-right-color: #000000; border-bottom-style: double; height: 208px;" id="TABLE1" onclick="return TABLE1_onclick()">
            <tr>
                <td style="font-weight: bold; font-size: larger; color: #ffffff; background-color: #669999; height: 21px;" colspan="2">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    Individual Clinical Conditions</td>
            </tr>
            <tr>
                <td style="width: 120px; height: 28px;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                        Style="z-index: 100; left: 96px; position: absolute; top: 32px" Text="individual ID"
                        Width="96px"></asp:Label>
                </td>
                <td style="width: 100px; height: 28px;">
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 208px; position: absolute;
                        top: 88px"></asp:TextBox>
                    <asp:DropDownList ID="dr_individual_id" runat="server" Style="z-index: 102; left: 208px;position: absolute; top: 32px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 120px; height: 22px;">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                        Style="z-index: 100; left: 72px; position: absolute; top: 64px" Text="Clinical Cond ID"
                        Width="120px"></asp:Label>
                </td>
                <td style="width: 100px; height: 22px;">
                    &nbsp;
                    <asp:DropDownList ID="dr_clinical_cond_id" runat="server" Style="z-index: 100; left: 208px;
                        position: absolute; top: 56px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 120px; height: 25px;">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                        Style="z-index: 100; left: 40px; position: absolute; top: 88px" Text="First Diagnosis Date"
                        Width="152px"></asp:Label>
                </td>
                <td style="width: 100px; height: 25px;">
                </td>
            </tr>
            <tr>
                <td style="width: 120px; height: 26px;">
                    &nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                        Style="z-index: 100; left: 32px; position: absolute; top: 120px" Text="Initial Symptom Descr"
                        Width="168px"></asp:Label>
                </td>
                <td style="width: 100px; height: 26px;">
                    &nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 100; left: 208px; position: absolute;
                        top: 120px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px; height: 25px;">
                    &nbsp;
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                        Style="z-index: 100; left: 64px; position: absolute; top: 152px" Text="Status Condition"
                        Width="120px"></asp:Label>
                </td>
                <td style="width: 100px; height: 25px;">
                    &nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 100; left: 208px; position: absolute;
                        top: 144px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 22px">
                    &nbsp; &nbsp;
                    <asp:Button ID="but_save" runat="server" OnClick="but_save_Click" Style="z-index: 100;
                        left: 56px; position: absolute; top: 168px" Text="save changes" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" />
                    <asp:Button ID="but_grid" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                        OnClick="but_grid_Click" Style="z-index: 102; left: 232px; position: absolute;
                        top: 168px" Text="Back to grid" />
                </td>
            </tr>
        </table>
        </asp:Panel>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Verdana"
            Font-Size="Large" ForeColor="Teal" Style="z-index: 101; left: 192px; position: absolute;
            top: 32px" Text="individual Clinical Details" Width="264px"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="but_new" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
            OnClick="but_new_Click" Style="z-index: 102; left: 312px; position: absolute;
            top: 64px" Text="new record" />
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="RangeValidator" MaximumValue="4/30/2007" MinimumValue="1/31/2003"
            Style="z-index: 105; left: 464px; position: absolute; top: 176px" Width="104px">Enter valid date</asp:RangeValidator>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black"
            Style="z-index: 104; left: 80px; position: absolute; top: 88px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <FooterStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <HeaderStyle BackColor="DarkCyan" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        &nbsp;
    </form>
</body>
</html>
