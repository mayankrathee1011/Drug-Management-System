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
	/// Summary description for drug_trail_master.
	/// </summary>
	public partial class drug_trail_master : System.Web.UI.Page
	{
		
		//SqlConnection cn=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
		SqlCommand cmd;
		SqlDataAdapter da;
		SqlCommandBuilder cb;
		DataSet ds;
		DataRow r;
		int j;
		int id;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
            
			if( Page.IsPostBack==false)
			{
				filldata();
				da=new SqlDataAdapter("select* from drug_trial_master ",cn);
				da.Fill(ds,"drug_trail");
				da=new SqlDataAdapter("select * from individual_master",cn);
				dr_indivi_name.Items.Clear();
				da.Fill(ds,"individual");
				int i;
				int count;
				count= ds.Tables["individual"].Rows.Count;
				Array a=Array.CreateInstance( typeof(String), count, 0 );
				for (i=0;i<count;i++)
				{
					a=ds.Tables["individual"].Rows[i].ItemArray;
					dr_indivi_name.Items.Add(a.GetValue(1).ToString());
					dr_indivi_name.Items[dr_indivi_name.Items.Count-1].Value=a.GetValue(0).ToString();
				}

                Panel2.Visible = false; 
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
			this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);
			this.Datagrid2.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.Datagrid2_PageIndexChanged);

		}
		#endregion
//Filldata Method
		private void filldata()
		{
			ds=new DataSet();
			da=new SqlDataAdapter("select * from drug_reg_master where drug_id in (select drug_id from drug_trial_master where employee_no="+Convert.ToInt32(Session["reg_id"])+")",cn);
			da.Fill(ds,"drug");
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();

			
			
		}

// Selected Index Change Code
		protected void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			j=Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
			txt_drug.Text=j.ToString();
			Panel1.Visible=true;
			Button2.Visible=false;
			DataGrid1.Visible=false;
			if(cn.State==ConnectionState.Open)
			{
				cn.Close();
                
			}
			cn.Open();
			
			cmd=new SqlCommand("select count(*) from drug_trial_master",cn);
			id=Convert.ToInt32(cmd.ExecuteScalar());
			cn.Close();
			if(id==0)
			{
				txt_trial_id.Text="1";
			}
			else
			{
				cn.Open();
				cmd=new SqlCommand("select max(drug_trial_id)+1 from drug_trial_master",cn);
				txt_trial_id.Text=Convert.ToInt32(cmd.ExecuteScalar()).ToString();
				cn.Close();
			}
			txt_invest.Text=Session["reg_id"].ToString();
			txt_start_date.Text=DateTime.Now.ToString();
			txt_comp.Text="";
			txt_purpose.Text="";
			txt_result.Text="";
			
		}

//Save Button
		protected void but_save_Click(object sender, System.EventArgs e)
        {
            try
            {
                if (dr_status.SelectedItem.Text == "completed")
                {
                    txt_comp.Text = DateTime.Now.ToString();
                    cmd = new SqlCommand("insert into drug_trial_master values (" + txt_trial_id.Text + ",'" + Convert.ToDateTime(txt_start_date.Text) + "','" + Convert.ToDateTime(txt_comp.Text) + "','" + txt_purpose.Text + "'," + txt_invest.Text + "," + dr_indivi_name.SelectedItem.Value.ToString() + "," + txt_drug.Text + ",'" + txt_result.Text + "','" + dr_status.SelectedItem.Text + "')", cn);
                    if (cn.State == ConnectionState.Open)
                    {
                        cn.Close();
                    }
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }
                else
                {
                    cmd = new SqlCommand("insert into drug_trial_master values (" + txt_trial_id.Text + ",'" + Convert.ToDateTime(txt_start_date.Text) + "',null,'" + txt_purpose.Text + "'," + txt_invest.Text + "," + dr_indivi_name.SelectedItem.Value.ToString() + "," + txt_drug.Text + ",'" + txt_result.Text + "','" + dr_status.SelectedItem.Text + "')", cn);
                    if (cn.State == ConnectionState.Open)
                    {
                        cn.Close();
                    }
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }
            }
            catch { }
            {
            }

            but_reaction.Visible = true;
            but_allergic.Visible = true;

        }

		protected void but_allergic_Click(object sender, System.EventArgs e)
		{
			Panel2.Visible=true;
			Panel1.Visible=false;
			Label11.Text="AllergicName";
			Button1.Text="Allergic Saving";
			txt_drug_trial.Text=txt_trial_id.Text;
			da=new SqlDataAdapter("select* from allergic_symp_master ",cn);
			ds=new DataSet();
			da.Fill(ds,"allergic");
			dr_reaction.Items.Clear();
			int i;
			int count;
			count= ds.Tables["allergic"].Rows.Count;
			Array a=Array.CreateInstance( typeof(String), count, 0 );
			for (i=0;i<count;i++)
			{
				a=ds.Tables["allergic"].Rows[i].ItemArray;
				dr_reaction.Items.Add(a.GetValue(1).ToString());
				dr_reaction.Items[dr_reaction.Items.Count-1].Value=a.GetValue(0).ToString();
			}


		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			if (Button1.Text=="Reaction Saving")
			{
				da=new SqlDataAdapter("select* from individual_reaction_master ",cn);
				ds=new DataSet();
				da.Fill(ds,"reaction_master");
				r=ds.Tables["reaction_master"].NewRow();
				r[0]=Convert.ToInt32(txt_drug_trial.Text).ToString();
				r[1]=Convert.ToInt32(dr_reaction.SelectedItem.Value).ToString();
				ds.Tables["reaction_master"].Rows.Add(r);
				cb=new SqlCommandBuilder(da);
				da.Update(ds,"reaction_master");
				Panel1.Visible=true;
				Panel2.Visible=false;
			}
			else
			{
				da=new SqlDataAdapter("select * from individual_allergic_master",cn);
				ds=new DataSet();
				da.Fill(ds,"allergic_master");
				r=ds.Tables["allergic_master"].NewRow();
				r[0]=Convert.ToInt32(txt_drug_trial.Text).ToString();
				r[1]=Convert.ToInt32(dr_reaction.SelectedItem.Value).ToString();
				ds.Tables["allergic_master"].Rows.Add(r);
				cb=new SqlCommandBuilder(da);
				da.Update(ds,"allergic_master");
				Panel1.Visible=true;
				Panel2.Visible=false;

			}


		}

		protected void but_reaction_Click(object sender, System.EventArgs e)
		{
			Panel2.Visible=true;
			Panel1.Visible=false;
			Label11.Text="Reaction Name";
			Button1.Text="Reaction Saving";
			txt_drug_trial.Text=txt_trial_id.Text;
			da=new SqlDataAdapter("select* from reaction_agent_master ",cn);
			ds=new DataSet();
			da.Fill(ds,"reaction");
			dr_reaction.Items.Clear();
			int i;
			int count;
			count= ds.Tables["reaction"].Rows.Count;
			Array a=Array.CreateInstance( typeof(String), count, 0 );
			for (i=0;i<count;i++)
			{
				a=ds.Tables["reaction"].Rows[i].ItemArray;
				dr_reaction.Items.Add(a.GetValue(1).ToString());
				dr_reaction.Items[dr_reaction.Items.Count-1].Value=a.GetValue(0).ToString();
			}

		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			DataGrid1.Visible=false;
			Datagrid2.Visible=true;
			Button2.Visible=false;
            Panel2.Visible = false;
			da=new SqlDataAdapter("select * from drug_reg_master",cn);
			ds=new DataSet();
			da.Fill(ds,"drug_master");
			Datagrid2.DataSource=ds;
			Datagrid2.DataBind();

		}
//		//Filldata Method
//		private void filldata()
//		{
//			ds=new DataSet();
//			da=new SqlDataAdapter("select * from drug_reg_master ",cn);
//			da.Fill(ds,"drug");
//			DataGrid1.DataSource=ds;
//			DataGrid1.DataBind();
//			
//		}


		protected void Datagrid2_SelectedIndexChanged_1(object sender, System.EventArgs e)
		{
			int i;
			i=Convert.ToInt32(Datagrid2.Items[Datagrid2.SelectedIndex].Cells[0].Text);
			txt_drug.Text=i.ToString();
			Panel1.Visible=true;
			Datagrid2.Visible=false;
			Button2.Visible=false;
			if(cn.State==ConnectionState.Open)
			{
				cn.Close();
                
			}
			cn.Open();
			
			cmd=new SqlCommand("select count(*) from drug_trial_master",cn);
			id=Convert.ToInt32(cmd.ExecuteScalar());
			cn.Close();
			if(id==0)
			{
				txt_trial_id.Text="1";
			}
			else
			{
				cn.Open();
				cmd=new SqlCommand("select max(drug_trial_id)+1 from drug_trial_master",cn);
				txt_trial_id.Text=Convert.ToInt32(cmd.ExecuteScalar()).ToString();
				cn.Close();
			}
			txt_invest.Text=Session["reg_id"].ToString();
            txt_start_date.Text = DateTime.Now.ToString();
			txt_comp.Text="";
			txt_purpose.Text="";
			txt_result.Text="";
			
		}
      
		private void Datagrid2_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			Datagrid2.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
				
		}





        protected void txt_comp_TextChanged(object sender, EventArgs e)
        {

        }
        protected void txt_start_date_TextChanged(object sender, EventArgs e)
        {

        }
}
	}

