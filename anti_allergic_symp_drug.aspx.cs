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

    public partial class anti_allergic_symp_drug : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
        int val1, val2;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.SmartNavigation = true;
            if (!IsPostBack)
            {
                insert_values_in_ddl();
              //  bindgrid();
            }
            
        }

        public void bindgrid()
        {
            //SqlDataAdapter da = new SqlDataAdapter("Select * from anti_allerg_symp_drug", cn);
            //cn.Open();
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
            //cn.Close();
        }

        public void clear_values()
        {
            dr_allergic_id.Items.Clear();
            dr_anti_drug_id.Items.Clear();
            txt_desig_descr.Text = "";
        }

        public void insert_values_in_ddl()
        {
            clear_values();
            //SqlDataAdapter da = new SqlDataAdapter("Select allergic_name from allergic_symp_master", cn);
            SqlDataAdapter da = new SqlDataAdapter("Select anti_allerg_drug_sh_name from anti_allergic_drug", cn);
            cn.Open();
            DataSet ds = new DataSet();
            da.Fill(ds);
            cn.Close();
            dr_anti_drug_id.DataSource = ds;
            dr_anti_drug_id.DataTextField = "anti_allerg_drug_sh_name";
            dr_anti_drug_id.DataValueField = "anti_allerg_drug_sh_name";
            dr_anti_drug_id.DataBind();
            SqlDataAdapter da1 = new SqlDataAdapter("Select allergic_name from allergic_symp_master", cn);
            //SqlDataAdapter da1 = new SqlDataAdapter("Select anti_allerg_drug_sh_name from anti_allergic_drug", cn);
            cn.Open();
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            cn.Close();
            dr_allergic_id.DataSource = ds1;
            dr_allergic_id.DataTextField = "allergic_name";
            dr_allergic_id.DataValueField = "allergic_name";
            dr_allergic_id.DataBind();
            dr_allergic_id.Items.Insert(0, "Select".ToString());
            dr_anti_drug_id.Items.Insert(0, "Select".ToString());
            

        }
        protected void but_new_Click(object sender, EventArgs e)
        {
            but_save.Enabled = true;
            insert_values_in_ddl();
           

        }
        protected void but_save_Click(object sender, EventArgs e)
        {
            if (dr_allergic_id.SelectedValue != "Select".ToString() & dr_anti_drug_id.SelectedValue != "Select".ToString())
            {


                SqlCommand cmd = new SqlCommand("Insert into anti_allerg_symp_drug values(" + TextBox1.Text + "," + TextBox2.Text + ",'" + txt_desig_descr.Text + "')", cn);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            but_save.Enabled = false;
          //  bindgrid();
            clear_values();
        }

        protected void dr_anti_drug_id_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select anti_allerg_drug_id from anti_allergic_drug where anti_allerg_drug_sh_name='" + dr_anti_drug_id.SelectedValue + "'", cn);
            cn.Open();
            //val2 = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            TextBox1.Text = cmd.ExecuteScalar().ToString();
            cn.Close();
           
        }

        protected void dr_allergic_id_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select allergic_id from allergic_symp_master where allergic_name='" + dr_allergic_id.SelectedValue + "'", cn);
            cn.Open();
            //val1 = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            TextBox2.Text = cmd.ExecuteScalar().ToString();
            cn.Close(); 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            insert_values_in_ddl();
           // bindgrid();
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
}
}
