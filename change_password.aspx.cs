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

public partial class change_password : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if ((TextBox1.Text != "") & (TextBox2.Text != ""))
        {
            if (TextBox3.Text == TextBox4.Text)
            {
                SqlCommand cmd1 = new SqlCommand("Update login_master set password='" + TextBox3.Text + "' where user_name='" + TextBox1.Text + "'", cn);
                cn.Open();
                cmd1.ExecuteNonQuery();
                cn.Close();
                


            }
            else
            {
                msg("Password and Confirm not Match");
            }
        }
        else
        {
            msg("Enter Password and Confirm Password");
        }

    }
    public void msg(string s)
    {
        this.RegisterStartupScript("clientscript", "<html><body><script>alert('" + s + "')</script></body></html>");

    }

}
