using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

namespace drugsample
{
	/// <summary>
	/// Summary description for Individual_info.
	/// </summary>
	public partial class Individual_info : System.Web.UI.Page
	{
		//SqlConnection con=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
		SqlDataAdapter da;
		DataSet ds=new DataSet();
		
		SqlCommandBuilder cmb;


	
		protected void Page_Load(object sender, System.EventArgs e)
		{
		da=new SqlDataAdapter("select * from individual_master where individual_id = "+Session["reg_id"]+")",cn);
			da.Fill(ds,"individual");
			filldata();
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.Datagrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.Datagrid1_PageIndexChanged);
			this.Datagrid1.CancelCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.Datagrid1_CancelCommand);
			this.Datagrid1.EditCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.Datagrid1_EditCommand);
			this.Datagrid1.UpdateCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.Datagrid1_UpdateCommand);

		}
		#endregion
		private void filldata()
		{
		Datagrid1.DataSource=ds;
			Datagrid1.DataBind();
		}

		private void Datagrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			Datagrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}

		private void Datagrid1_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			Datagrid1.EditItemIndex=e.Item.ItemIndex;
			filldata();
		}

		private void Datagrid1_UpdateCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			filldata();
			TextBox a=(TextBox)e.Item .Cells [0].Controls [0];
			TextBox b=(TextBox)e.Item .Cells [1].Controls [0];
			TextBox c=(TextBox)e.Item .Cells [2].Controls [0];
			TextBox d=(TextBox)e.Item .Cells [3].Controls [0];
			TextBox e1=(TextBox)e.Item .Cells [4].Controls [0];
			TextBox f=(TextBox)e.Item .Cells [5].Controls [0];
			TextBox g=(TextBox)e.Item .Cells [6].Controls [0];
			DataRow r;
			int rownumber;
			rownumber=e.Item.ItemIndex;
			r=ds.Tables["individual"].Rows[rownumber];
			r[0]= a.Text;
			r[1]= b.Text;
			r[2]= c.Text;
			r[3]= d.Text;
			r[4]= e1.Text;
			r[5]= f.Text;
			r[6]= g.Text;
			cmb=new SqlCommandBuilder(da);
			da.Update(ds,"individual");
			Datagrid1.EditItemIndex=-1;
			filldata();
	

		}

		private void Datagrid1_CancelCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			Datagrid1.EditItemIndex=-1;
			filldata();
		}

		protected void Datagrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}
	}
}
