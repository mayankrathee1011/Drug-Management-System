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
	/// Summary description for Individual_details.
	/// </summary>
	public partial class Individual_details : System.Web.UI.Page
	{
		//SqlConnection cn=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
		SqlCommand cmd;
		SqlDataAdapter da;
		SqlCommandBuilder cb;
		DataSet ds;
		DataRow r;
	
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

		}
		#endregion
//Filldata Method
		private void filldata()
		{
			ds=new DataSet();
			da=new SqlDataAdapter("select * from individual_master where individual_id= "+Convert.ToInt32(Session["reg_id"]) +" ",cn);
			da.Fill(ds,"individual");
			Datagrid2.DataSource=ds;
			Datagrid2.DataBind();
			
		}

		protected void Datagrid2_SelectedIndexChanged(object sender, System.EventArgs e)
		{
				Datagrid2.Visible=false;
				Panel1.Visible=true;
				txt_emp_no.Text=Datagrid2.Items[Datagrid2.SelectedIndex].Cells[0].Text;
				txt_emp_name.Text=Datagrid2.Items[Datagrid2.SelectedIndex].Cells[1].Text;
				txt_address.Text=Datagrid2.Items[Datagrid2.SelectedIndex].Cells[4].Text;
				txt_phone.Text=Datagrid2.Items[Datagrid2.SelectedIndex].Cells[5].Text;
				txt_email.Text=Datagrid2.Items[Datagrid2.SelectedIndex].Cells[6].Text;

		
		}

		protected void but_save_Click(object sender, System.EventArgs e)
		{
			cmd=new SqlCommand("update individual_master set individual_address='"+txt_address.Text+"',individual_phone="+txt_phone.Text+",individual_email='"+txt_email.Text+"'where individual_id="+txt_emp_no.Text+"",cn);
			cn.Open();
			cmd.ExecuteNonQuery();
			cn.Close();
			filldata();

		}

		protected void but_grid_Click(object sender, System.EventArgs e)
		{
		
			Datagrid2.Visible=true;
			Panel1.Visible=false;
		}



		
	}
}
