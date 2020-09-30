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
	/// Summary description for _default.
	/// </summary>
	public partial class _default : System.Web.UI.Page
	{
		//SqlConnection cn=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
		SqlDataAdapter da;
		DataSet ds=new DataSet();
		SqlCommand cmd;

	
		protected void Page_Load(object sender, System.EventArgs e)
		{da=new SqlDataAdapter("select * from login_master",cn);
			da.Fill(ds,"login");
	
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
//Administrator
		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
		
			Panel1.Visible=true;
			Image6.Visible=false;
		}

        public void msg(string s)
        {
            this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + s + "')</script></body><.html>");
        }

		protected void but_Submit_Click(object sender, System.EventArgs e)
		{
			
			int i;
			int count;
			count=ds.Tables["login"].Rows.Count;
			Array a=Array.CreateInstance(typeof(String),count,0);
			for(i=0;i<count;i++)
			{
			a=ds.Tables["login"].Rows[i].ItemArray;
				string name=a.GetValue(0).ToString();
				string pwd=a.GetValue(1).ToString();
				Session["reg_id"]=a.GetValue(3);
                if (txt_name.Text == name && txt_pwd.Text == pwd)
                {
                    int p;
                    p = Convert.ToInt32(a.GetValue(2));

                    cmd = new SqlCommand("select profile_name from profile_master where profile_id=" + p + "", cn);
                    cn.Open();
                    string profile_name = cmd.ExecuteScalar().ToString();
                    cn.Close();
                    if (profile_name == "Administrator")
                    {
                        Response.Redirect("Administrator.htm");
                    }
                    else if (profile_name == "Employee")
                    {
                        Response.Redirect("Employee.htm");
                    }
                    else
                    {
                        Response.Redirect("Individual.htm");
                    }
                }
                else
                {
                    msg("Invalid Username or Password, Ple Check");
                }


                
			}

			

		}
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //SqlCommand cmd = new SqlCommand("Select count(*) from Login_master where User_Name='" + txt_name.Text + "' and Password='" + txt_pwd.Text + "'", con);
            //con.Open();
            //int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            //con.Close();
           
            Server.Transfer("change_password.aspx");

        }
        protected void LinkButton2_Click1(object sender, EventArgs e)
        {

        }
}
}
