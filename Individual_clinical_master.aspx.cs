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

    public partial class Individual_clinical_master : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
        int val1, val2;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                insert_values_in_ddl();
                //bindgrid();
                SqlDataAdapter da = new SqlDataAdapter("select *from individual_clinical_master", cn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Panel1.Visible = false;
                GridView1.Visible = true;    
                GridView1.DataSource = ds;
                GridView1.DataBind();

              }


        }
        public void clear_values()
        {
            dr_individual_id.Items.Clear();
            dr_clinical_cond_id.Items.Clear();

        }

        public void insert_values_in_ddl()
        {
            clear_values();
            //SqlDataAdapter da = new SqlDataAdapter("Select allergic_name from allergic_symp_master", cn);
            SqlDataAdapter da = new SqlDataAdapter("Select individual_id from individual_master", cn);
            cn.Open();
            DataSet ds = new DataSet();
            da.Fill(ds);
            cn.Close();
            dr_individual_id.DataSource = ds;
            dr_individual_id.DataTextField = "individual_id";
            dr_individual_id.DataValueField = "individual_id";
            dr_individual_id.DataBind();
            SqlDataAdapter da1 = new SqlDataAdapter("Select clinical_cond_id from clinical_cond_master", cn);
            //SqlDataAdapter da1 = new SqlDataAdapter("Select anti_allerg_drug_sh_name from anti_allergic_drug", cn);
            cn.Open();
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            cn.Close();
            dr_clinical_cond_id.DataSource = ds1;
            dr_clinical_cond_id.DataTextField = "clinical_cond_id";
            dr_clinical_cond_id.DataValueField = "clinical_cond_id";
            dr_clinical_cond_id.DataBind();
            dr_clinical_cond_id.Items.Insert(0, "Select".ToString());
            dr_individual_id.Items.Insert(0, "Select".ToString());


        }



        protected void but_new_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            Panel1.Visible = true; 
            but_save.Enabled = true;
            insert_values_in_ddl();
        }
        protected void but_save_Click(object sender, EventArgs e)
        {
            if (dr_individual_id.SelectedValue != "Select".ToString() & dr_clinical_cond_id.SelectedValue != "Select".ToString())
            {


                SqlCommand cmd = new SqlCommand("Insert into individual_clinical_master values(" + dr_individual_id.SelectedValue + "," + dr_clinical_cond_id.SelectedValue + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", cn);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            but_save.Enabled = false;
            //bindgrid();
            clear_values();
            SqlDataAdapter da = new SqlDataAdapter("select * from individual_clinical_master", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind(); 
 

        }
        protected void but_grid_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            Panel1.Visible = false; 
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}

}