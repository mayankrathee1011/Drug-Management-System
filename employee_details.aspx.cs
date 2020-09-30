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
	/// Summary description for employee_details.
	/// </summary>
	public partial class employee_details : System.Web.UI.Page
	{
		//SqlConnection cn=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
		SqlCommand cmd;
		SqlDataAdapter da;
		SqlCommandBuilder cb;
		DataSet ds;
		DataRow r;
		int id;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if( Page.IsPostBack==false)
			{
				filldata();
			}

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
			this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);
			this.DataGrid1.CancelCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_CancelCommand);
			this.DataGrid1.EditCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_EditCommand);
			this.DataGrid1.UpdateCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_UpdateCommand);

		}
		#endregion
//Filldata Method
		private void filldata()
		{
			ds=new DataSet();
			da=new SqlDataAdapter("select * from employee_master where employee_no= "+Convert.ToInt32(Session["reg_id"])+"",cn);
			da.Fill(ds,"employee");
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
			
		}

//DataGrid1_EditCommand
		private void DataGrid1_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex=e.Item.ItemIndex;
			filldata();

		}

//DataGrid1_UpdateCommand
		private void DataGrid1_UpdateCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			filldata();
			TextBox a=(TextBox)e.Item .Cells [0].Controls [0];
			TextBox b=(TextBox)e.Item .Cells [1].Controls [0];
			TextBox c=(TextBox)e.Item .Cells [2].Controls [0];
			TextBox d=(TextBox)e.Item .Cells [3].Controls [0];
			TextBox e1=(TextBox)e.Item .Cells [4].Controls [0];
			TextBox f=(TextBox)e.Item .Cells [5].Controls [0];
			TextBox g=(TextBox)e.Item .Cells [6].Controls [0];
			TextBox h=(TextBox)e.Item .Cells [7].Controls [0];
			TextBox i=(TextBox)e.Item .Cells [8].Controls [0];
			TextBox j=(TextBox)e.Item .Cells [9].Controls [0];
			DataRow r;
			
			int rownumber;
			rownumber=e.Item.ItemIndex;
			r=ds.Tables["employee"].Rows[rownumber];
			r[0]= a.Text;
			r[1]= b.Text;
			r[2]= c.Text;
			r[3]= d.Text;
			r[4]= e1.Text;
			r[5]= f.Text;
			r[6]= g.Text;
			r[7]= h.Text;
			r[8]= i.Text;
			r[9]= j.Text;
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"employee");
			DataGrid1.EditItemIndex=-1;
			filldata();
		}

//DataGrid1_CancelCommand
		private void DataGrid1_CancelCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex =-1;
			filldata();
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}
		
	}
}
