using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;
namespace drugsample
{

    public partial class individual_allergic_master : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
        int val1, val2;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page . IsPostBack==false )
            {
                insert_values_in_ddl();
               //bindgrid();
                GridView1.Visible = true;
                Panel1.Visible = false;
                SqlDataAdapter da = new SqlDataAdapter("select * from drug_usage_cond_master", cn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
   
            }

        }
        public void clear_values()
        {
            dr_drug_id.Items.Clear();
            dr_drug_cond_id.Items.Clear();
           
        }
        //public void Gridview_PageIndexChanged(object source, System.Web.UI.WebControls.GridViewPageEventArgs e)
        //{
        //    GridView1.  = e.NewPageIndex; 

        //}

        public void insert_values_in_ddl()
        {
            clear_values();
            //SqlDataAdapter da = new SqlDataAdapter("Select allergic_name from allergic_symp_master", cn);
            SqlDataAdapter da = new SqlDataAdapter("Select drug_long_name from drug_reg_master", cn);
            cn.Open();
            DataSet ds = new DataSet();
            da.Fill(ds);
            cn.Close();
            dr_drug_id.DataSource = ds;
            dr_drug_id.DataTextField = "drug_long_name";
            dr_drug_id.DataValueField = "drug_long_name";
            dr_drug_id.DataBind();
            SqlDataAdapter da1 = new SqlDataAdapter("Select drug_cond_descr from usage_condition_master", cn);
            //SqlDataAdapter da1 = new SqlDataAdapter("Select anti_allerg_drug_sh_name from anti_allergic_drug", cn);
            cn.Open();
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            cn.Close();
            dr_drug_cond_id.DataSource = ds1;
            dr_drug_cond_id.DataTextField = "drug_cond_descr";
            dr_drug_cond_id.DataValueField = "drug_cond_descr";
            dr_drug_cond_id.DataBind();
            dr_drug_cond_id.Items.Insert(0, "Select".ToString());
            dr_drug_id.Items.Insert(0, "Select".ToString());


        }

        protected void but_new_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            GridView1.Visible = false;  
            but_save.Enabled = true;
            insert_values_in_ddl();


        }
        protected void but_save_Click(object sender, EventArgs e)
        {
            if (dr_drug_id.SelectedValue != "Select".ToString() & dr_drug_cond_id.SelectedValue != "Select".ToString())
            {


                SqlCommand cmd = new SqlCommand("Insert into drug_usage_cond_master values(" + TextBox1.Text + "," + TextBox2.Text + ")", cn);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            but_save.Enabled = false;
            //bindgrid();
            clear_values();
            SqlDataAdapter da = new SqlDataAdapter("select * from  drug_usage_cond_master", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;  
            GridView1.DataBind();
            GridView1.Visible = true; 
            Panel1.Visible = false;
 

        }
      
        protected void but_grid_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            Panel1.Visible = false;  
        }
        protected void dr_drug_id_SelectedIndexChanged1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select drug_cond_id from usage_condition_master where drug_cond_descr='" + dr_drug_cond_id.SelectedValue + "'", cn);
            cn.Open();
            //val2 = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            TextBox2.Text = cmd.ExecuteScalar().ToString();
            cn.Close();
        }
        protected void dr_drug_cond_id_SelectedIndexChanged1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select drug_id from drug_reg_master where drug_long_name='" + dr_drug_id.SelectedValue + "'", cn);
            cn.Open();
            //val1 = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            TextBox1.Text = cmd.ExecuteScalar().ToString();
            cn.Close();
        }
}
}