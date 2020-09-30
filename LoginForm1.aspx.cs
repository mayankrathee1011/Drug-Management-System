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
    /// Summary description for LoginForm1.
    /// </summary>
    public partial class LoginForm1 : System.Web.UI.Page
    {
        //SqlConnection cn=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlCommandBuilder cb;
        DataSet ds = new DataSet();




        protected void Page_Load(object sender, System.EventArgs e)
        {

            da = new SqlDataAdapter("select* from login_master", cn);
            da.Fill(ds, "login_master");
            da = new SqlDataAdapter("select individual_name,individual_id from individual_master", cn);
            da.Fill(ds, "individual");
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


        protected void LinkButton2_Click(object sender, System.EventArgs e)
        {
            but_Submit.Text = "Employee";
        }

        protected void LinkButton3_Click(object sender, System.EventArgs e)
        {
            but_Submit.Text = "Individual";
        }

        protected void LinkButton1_Click(object sender, System.EventArgs e)
        {
            but_Submit.Text = "Administrator";
        }
        public void msg(string s)
        {
            this.RegisterStartupScript("ClientScript","<html><body><script>alert('"+s+"')</script></body><.html>");
        }

        protected void but_Submit_Click(object sender, System.EventArgs e)
        {

            if (but_Submit.Text == "Administrator")
            {
                int i;
                int count;
                count = ds.Tables["login_master"].Rows.Count;
                Array a = Array.CreateInstance(typeof(String), count, 0);
                for (i = 0; i < count; i++)
                {
                    a = ds.Tables["login_master"].Rows[i].ItemArray;
                    string name = a.GetValue(0).ToString();
                    string pwd = a.GetValue(1).ToString();
                    Session["admin_name"] = name;
                    cn.Close();
                    //if (TextBox1.Text == name && TextBox2.Text == pwd)
                    //{
                    //    Response.Redirect("policies_registration.aspx");
                    //}

                }

            }
            if (but_Submit.Text == "Employee")
            {
                int i;
                int count;
                
                count = ds.Tables["login_master"].Rows.Count;
                Array a = Array.CreateInstance(typeof(String), count, 0);
                for (i = 0; i < count; i++)
                {
                    a = ds.Tables["login_master"].Rows[i].ItemArray;
                    string user_id = a.GetValue(0).ToString() ;
                    string pwd1 = a.GetValue(1).ToString();
                    Session["employee_id"] = user_id; 

                    cn.Close();
                    if (txt_name.Text == user_id.ToString()  && txt_pwd.Text == pwd1.ToString())
                    {
                        Response.Redirect("employee_individual_details.aspx");
                    }


                }

            }
            if (but_Submit.Text=="Individual")
            {
                int i;
                int count;
                count=ds.Tables["individual"].Rows.Count;
                Array a= Array.CreateInstance(typeof(String),count,0);
                //				cmd=new SqlCommand("select cust_id from 
                for(i=0;i<count;i++)
                {
                    a=ds.Tables["individual"].Rows[i].ItemArray;

                    string name=a.GetValue(0).ToString();
                    string pwd=a.GetValue(1).ToString();
                    Session["individual_id"]=pwd;
                    if (txt_name.Text==name && txt_pwd.Text==pwd.ToString())
                    {
                        Response.Redirect("individual_master.aspx");
                    }

            	}
               // msg("sudmitted successfully");

            }


            	}
        }
    } 

