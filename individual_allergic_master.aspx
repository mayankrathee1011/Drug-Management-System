<%@ Page Language="C#" AutoEventWireup="true" CodeFile="individual_allergic_master.aspx.cs" Inherits="drugsample.individual_allergic_master" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="152px" Style="z-index: 100; left: 136px;
            position: absolute; top: 136px" Width="384px">
        <table style="z-index: 104; left: 8px; position: absolute; top: 8px; width: 360px; height: 136px; border-left-color: #000000; border-bottom-color: #000000; border-top-style: double; border-top-color: #000000; border-right-style: double; border-left-style: double; border-right-color: #000000; border-bottom-style: double;" id="TABLE1" onclick="return TABLE1_onclick()">
            <tr>
                <td style="font-weight: bold; font-size: large; color: #ffffff; background-color: #669999;" colspan="2">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Drug Usage Condition</td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px;">
                    &nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                        Style="z-index: 100; left: 16px; position: absolute; top: 32px" Text="Drug Name"
                        Width="96px"></asp:Label>
                </td>
                <td style="width: 115px; height: 26px;">
                    <asp:DropDownList ID="dr_drug_id" runat="server" 
                        Style="z-index: 100; left: 176px; position: absolute; top: 32px" OnSelectedIndexChanged="dr_drug_id_SelectedIndexChanged1">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 27px;">
                    &nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                        Style="z-index: 100; left: 8px; position: absolute; top: 64px" Text="Drug Cond Name"
                        Width="128px"></asp:Label>
                </td>
                <td style="width: 115px; height: 27px;">
                    &nbsp;
                    <asp:DropDownList ID="dr_drug_cond_id" runat="server" Style="z-index: 100; left: 184px;
                        position: absolute; top: 64px" OnSelectedIndexChanged="dr_drug_cond_id_SelectedIndexChanged1">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 27px">
                    &nbsp; &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 80px; position: absolute;
                        top: 88px" Width="16px" Visible="False"></asp:TextBox>
                </td>
                <td style="width: 115px; height: 27px">
                    &nbsp; &nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 100; left: 216px; position: absolute;
                        top: 88px" Width="16px" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 21px" colspan="2">
                    &nbsp;&nbsp;
                    <asp:Button ID="but_save" runat="server" OnClick="but_save_Click" Style="z-index: 100;
                        left: 8px; position: absolute; top: 112px" Text="save changes" Font-Bold="True" Font-Names="Verdana" />
                    <asp:Button ID="but_grid" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                        OnClick="but_grid_Click" Style="z-index: 102; left: 176px; position: absolute;
                        top: 112px" Text="Back to grid" />
                </td>
            </tr>
        </table>
        </asp:Panel>
        &nbsp;
        <asp:Button ID="but_new" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
            OnClick="but_new_Click" Style="z-index: 101; left: 288px; position: absolute;
            top: 112px" Text="new record" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Verdana"
            Font-Size="Large" ForeColor="Teal" Style="z-index: 102; left: 200px; position: absolute;
            top: 72px" Text="Drug Usage Condition Details"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black"
            Style="z-index: 103; left: 208px; position: absolute; top: 136px" Width="248px" PageSize="5" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <FooterStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <HeaderStyle BackColor="DarkCyan" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
