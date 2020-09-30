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
	/// Summary description for login_inromation.
	/// </summary>
	public partial class login_inromation : System.Web.UI.Page
	{
		//SqlConnection cn=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
		SqlDataAdapter da;
		SqlCommandBuilder cb;
		DataSet ds;
		DataRow r;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			//txt_ind_id.Text=Session["individual_id"].ToString();
//			txt_pwd.Text=Session["individual_name"].ToString();

            if (!IsPostBack)
            {
                da = new SqlDataAdapter("select * from profile_master", cn);
                dr_profile_name.Items.Clear();
                ds = new DataSet();
                da.Fill(ds, "profile_master");
                int i;
                int count;
                count = ds.Tables["profile_master"].Rows.Count;
                Array a = Array.CreateInstance(typeof(String), count, 0);
                for (i = 0; i < count; i++)
                {
                    a = ds.Tables["profile_master"].Rows[i].ItemArray;
                    dr_profile_name.Items.Add(a.GetValue(1).ToString());
                    dr_profile_name.Items[dr_profile_name.Items.Count - 1].Value = a.GetValue(0).ToString();
                }
            }

        }
        public void clear_values()
        {
            txt_ind_id.Text = "";
            txt_pwd.Text = "";
            //dr_profile_name.Items.Clear();
            txt_reg_id.Text = "";
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
			da=new SqlDataAdapter("select * from login_master",cn);
			da.Fill(ds,"login_master");
			
		}

		protected void but_save_Click(object sender, System.EventArgs e)
		{
			filldata();
			r=ds.Tables["login_master"].NewRow();
			r[0]=txt_ind_id.Text.ToString();
			r[1]=txt_pwd.Text.ToString();
			r[2]=dr_profile_name.SelectedItem.Value;
            r[3] = Convert.ToInt32(txt_reg_id.Text);
            ds.Tables["login_master"].Rows.Add(r);
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"login_master");
            clear_values();

            //Response.Redirect("default.aspx");
		}
        protected void txt_ind_id_TextChanged(object sender, EventArgs e)
        {

        }
}
}
