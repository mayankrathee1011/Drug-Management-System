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
	/// Summary description for drug_trail_individual.
	/// </summary>
	public partial class drug_trail_individual : System.Web.UI.Page
	{
		//SqlConnection con=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
		SqlDataAdapter da;
		DataSet ds = new DataSet();

	
		protected void Page_Load(object sender, System.EventArgs e)
		{
		da = new SqlDataAdapter("select drug_trial_id,trial_start_date,trial_complet_date,purpose_of_trial,employee_name,drug_short_name,trial_result_analy_descr from drug_trial_master as a,employee_master as b,drug_reg_master as c where individual_id = "+Session["reg_id"]+" and a.employee_no = b.employee_no and a.drug_id = c.drug_id",cn);
			 da.Fill(ds,"drug_trail_indi");
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
			this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);

		}
		#endregion
		private void filldata()
		{
		DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}
	}
}
