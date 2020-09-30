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
	/// Summary description for employee_individual_details.
	/// </summary>
	public partial class employee_individual_details : System.Web.UI.Page
	{
		//SqlConnection cn=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
		SqlCommand cmd;
		SqlDataAdapter da;
		SqlCommandBuilder cb;
		DataSet ds;
		int j;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if( Page.IsPostBack==false)
			{
				filldata();
				Datagrid2.Visible=false;
				
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
			this.Datagrid2.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.Datagrid2_PageIndexChanged);
			this.Datagrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.Datagrid1_PageIndexChanged);

		}
		#endregion
//Filldata Method
		private void filldata()
		{
			ds=new DataSet();
			da=new SqlDataAdapter("select * from individual_master ",cn);
			da.Fill(ds,"individual");
			Datagrid1.DataSource=ds;
			Datagrid1.DataBind();
			
		}

		protected void Datagrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			Datagrid1.Visible=false;
			Datagrid2.Visible=true;
			Button1.Visible=true;
			filldata1();

		}
		private void filldata1()
		{
			j=Convert.ToInt32(Datagrid1.Items[Datagrid1.SelectedIndex].Cells[0].Text);
			da=new SqlDataAdapter("select drug_trial_id,trial_start_date,trial_complet_date,purpose_of_trial,drug_id,trial_result_analy_descr,trial_status from drug_trial_master where individual_id="+j+"",cn);
			ds=new DataSet();
			da.Fill(ds,"individual_drug");
			Datagrid2.DataSource=ds;
			Datagrid2.DataBind();

		}

		private void Datagrid2_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			Datagrid1.CurrentPageIndex=e.NewPageIndex;
			filldata1();
		}

		private void Datagrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
	{
			Datagrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			Datagrid1.Visible=true;
			Button1.Visible=false;
            Datagrid2.Visible = false;
			}
	}
}
