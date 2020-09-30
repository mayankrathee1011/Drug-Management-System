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
	/// Summary description for New_individual_reg.
	/// </summary>
	public partial class New_individual_reg : System.Web.UI.Page
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
			ds=new DataSet();
			da=new SqlDataAdapter("select * from individual_master",cn);
			da.Fill(ds,"individual");
			
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
		private void filldata()
		{
			
			if(cn.State==ConnectionState.Open)
			{
				cn.Close();
                
			}
			cn.Open();
			
			cmd=new SqlCommand("select count(*) from individual_master",cn);
			int id=Convert.ToInt32(cmd.ExecuteScalar());
			cn.Close();
			if(id==0)
			{
				txt_ind_id.Text="1";
			}
			else
			{
				cn.Open();
                cmd = new SqlCommand("select max(individual_id)+1 from individual_master", cn);
				txt_ind_id.Text=Convert.ToInt32(cmd.ExecuteScalar()).ToString();
				cn.Close();
			}
			txt_ind_name.Text="";
			txt_ind_dob.Text="";
			txt_ind_address.Text="";
			txt_phone.Text="";
			txt_email.Text="";
			
		}

		protected void but_save_Click(object sender, System.EventArgs e)
		{
			r=ds.Tables["individual"].NewRow();
			r[0]=Convert.ToInt32(txt_ind_id.Text);
//			Session["individual_id"]=txt_ind_id.Text;
			r[1]=txt_ind_name.Text.ToString();
			r[2]=Convert.ToDateTime(txt_ind_dob.Text);
			r[3]=dr_gender.SelectedItem.Text;
			r[4]=txt_ind_address.Text.ToString();
			r[5]=Convert.ToInt32(txt_phone.Text);
			r[6]=txt_email.Text.ToString();
			ds.Tables["individual"].Rows.Add(r);
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"individual");
			Panel1.Visible=false;
			Panel1.Visible=true;
			pwdcreation();
		}
		private void pwdcreation()
		{
		
			txt_individual_name.Text=txt_ind_name.Text;
			txt_profile.Text="Individual";
			//			txt_pwd.Text=Session["individual_name"].ToString();
//			da=new SqlDataAdapter("select * from profile_master",cn);
//			dr_profile_name.Items.Clear();
//			ds=new DataSet();
//			da.Fill(ds,"profile_master");
//			int i;
//			int count;
//			count= ds.Tables["profile_master"].Rows.Count;
//			Array a=Array.CreateInstance( typeof(String), count, 0 );
//			for (i=0;i<count;i++)
//			{
//				a=ds.Tables["profile_master"].Rows[i].ItemArray;
//				dr_profile_name.Items.Add(a.GetValue(1).ToString());
//				dr_profile_name.Items[dr_profile_name.Items.Count-1].Value=a.GetValue(0).ToString();
//			}
			
		}
//save pwd
		protected void Button1_Click(object sender, System.EventArgs e)
		{
			ds=new DataSet();
			da=new SqlDataAdapter("select * from login_master",cn);
			da.Fill(ds,"login_master");
			r=ds.Tables["login_master"].NewRow();
			r[0]=txt_individual_name.Text;
			r[1]=txt_pwd.Text.ToString();
			r[2]="3";
			r[3]=Convert.ToInt32(txt_ind_id.Text);
			ds.Tables["login_master"].Rows.Add(r);
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"login_master");
			Response.Redirect("default.aspx");
		}
        protected void txt_pwd_TextChanged(object sender, EventArgs e)
        {

        }
}
}
