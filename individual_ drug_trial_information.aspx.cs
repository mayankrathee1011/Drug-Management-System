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

namespace drug
{
	/// <summary>
	/// Summary description for individual__drug_trial_information.
	/// </summary>
	public partial class individual__drug_trial_information : System.Web.UI.Page
	{
		//SqlConnection cn=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
		SqlCommand cmd;
		SqlDataAdapter da;
		SqlCommandBuilder cb;
		DataSet ds;
		int i;
	
		string s;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if( Page.IsPostBack==false)
			{
				filldata();
				Datagrid2.Visible=false;
				Datagrid3.Visible=false;
				
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
			this.Datagrid4.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.Datagrid4_PageIndexChanged);

		}
		#endregion
//Filldata Method
		private void filldata()
		{
			ds=new DataSet();
			da=new SqlDataAdapter("select * from employee_master where employee_no in (select employee_no from drug_trial_master where individual_id="+Convert.ToInt32(Session["reg_id"])+")",cn);
			da.Fill(ds,"employee");
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
			
		}

		protected void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			Datagrid2.Visible=true;
			DataGrid1.Visible=false;
			Datagrid3.Visible=false;
			int j=Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
			da=new SqlDataAdapter("select drug_trial_id,trial_start_date,trial_complet_date,purpose_of_trial,drug_id,trial_result_analy_descr,trial_result_analy_descr,trial_status from drug_trial_master where individual_id="+Session["reg_id"]+" and employee_no="+j+"",cn);
			ds=new DataSet();
			da.Fill(ds,"drug_trial");
			Datagrid2.DataSource=ds;
			Datagrid2.DataBind();
		

		}

		protected void Datagrid2_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			Datagrid2.Visible=false;
			DataGrid1.Visible=false;
			
			but_allergic.Visible=true;
			but_reaction.Visible=true;
			i=Convert.ToInt32(Datagrid2.Items[Datagrid2.SelectedIndex].Cells[0].Text);
			Session["i"]=i.ToString();


	}

		protected void but_allergic_Click(object sender, System.EventArgs e)
		{
			Datagrid3.Visible=false;
			Datagrid4.Visible=true;
			s="select a.individual_name,b.drug_trial_id,c.allergic_id,d.allergic_name from individual_master a,drug_trial_master b,Individual_allergic_master c ,allergic_symp_master d where b.individual_id="+Convert.ToInt32(Session["reg_id"])+"and a.individual_id="+Convert.ToInt32(Session["reg_id"])+" and b.drug_trial_id="+Session["i"]+" and c.drug_trial_id="+Session["i"]+"and c.allergic_id=d.allergic_id";
			da=new SqlDataAdapter(s,cn);
			ds=new DataSet();
			da.Fill(ds,"allregic");
			Datagrid4.DataSource=ds;
			Datagrid4.DataBind();
		}

		protected void but_reaction_Click(object sender, System.EventArgs e)
		{
			Datagrid4.Visible=false;
			Datagrid3.Visible=true;
			string s="select a.individual_name,b.drug_trial_id,c.reaction_agent_id ,d.reaction_short_name from individual_master a,drug_trial_master b,Individual_reaction_master c,reaction_agent_master d where b.individual_id="+Convert.ToInt32(Session["reg_id"])+"and a.individual_id="+Convert.ToInt32(Session["reg_id"])+" and b.drug_trial_id="+Session["i"]+" and c.drug_trial_id="+Session["i"]+" and c.reaction_agent_id=d.reaction_agent_id" ;
			
			da=new SqlDataAdapter(s,cn);
			ds=new DataSet();
			da.Fill(ds,"reaction");
			Datagrid3.DataSource=ds;
			Datagrid3.DataBind();
		}

		private void Datagrid4_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
		
		}

	}
}
