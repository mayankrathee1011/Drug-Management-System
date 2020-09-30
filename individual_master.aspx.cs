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
	/// Summary description for individual_master.
	/// </summary>
	public partial class individual_master : System.Web.UI.Page
	{
		//SqlConnection cn=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
		SqlCommand cmd;
		SqlDataAdapter da;
		SqlCommandBuilder cb;
		DataSet ds;
		DataRow r;
		int id;
	
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
			this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);
			this.DataGrid1.CancelCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_CancelCommand);
			this.DataGrid1.EditCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_EditCommand);
			this.DataGrid1.UpdateCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_UpdateCommand);
			this.DataGrid1.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_DeleteCommand);

		}
		#endregion
//Filldata Method
		private void filldata()
		{
			ds=new DataSet();
			da=new SqlDataAdapter("select * from individual_master",cn);
			da.Fill(ds,"individual");
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
			
		}

		protected void but_new_Click(object sender, System.EventArgs e)
		{
			DataGrid1.Visible=false;
			Panel1.Visible=true;
			but_new.Visible=false;
			
			if(cn.State==ConnectionState.Open)
			{
				cn.Close();
                
			}
			cn.Open();
			
			cmd=new SqlCommand("select count(*) from individual_master",cn);
			id=Convert.ToInt32(cmd.ExecuteScalar());
			cn.Close();
			if(id==0)
			{
				txt_ind_id.Text="1";
			}
			else
			{
				//cmd=new SqlCommand("exec max_individual_id",cn);
                SqlCommand cmd1 = new SqlCommand("Select Max(individual_id)+1 from individual_master", cn);
                cn.Open();
				txt_ind_id.Text=Convert.ToInt32(cmd1.ExecuteScalar()).ToString();
				cn.Close();
			}
			txt_ind_name.Text="";
			txt_ind_dob.Text="";
			txt_ind_address.Text="";
			txt_phone.Text="";
			txt_email.Text="";
            txt_ind_doj.Text = DateTime.Now.ToString();
			
		}

		protected void but_save_Click(object sender, System.EventArgs e)
		{
			filldata();
			r=ds.Tables["individual"].NewRow();
			r[0]=Convert.ToInt32(txt_ind_id.Text);
			r[1]=txt_ind_name.Text.ToString();
			r[2]=Convert.ToDateTime(txt_ind_dob.Text);
            r[3]=dr_gender.SelectedItem.Text;
			r[4]=txt_ind_address.Text.ToString();
			r[5]=Convert.ToInt64(txt_phone.Text);
			r[6]=txt_email.Text.ToString();
            r[7]=Convert.ToDateTime(txt_ind_doj.Text);
			ds.Tables["individual"].Rows.Add(r);
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"individual");
			filldata();
			DataGrid1.Visible=true;
			Panel1.Visible=false;
			but_new.Visible=true;
	
		}

		protected void but_grid_Click(object sender, System.EventArgs e)
		{
			DataGrid1.Visible=true;
			Panel1.Visible=false;
			but_new.Visible=true;
		}

		private void DataGrid1_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex=e.Item.ItemIndex;
			filldata();

		}

		private void DataGrid1_UpdateCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			filldata();
			TextBox a=(TextBox)e.Item .Cells [0].Controls [0];
			TextBox b=(TextBox)e.Item .Cells [1].Controls [0];
			TextBox c=(TextBox)e.Item .Cells [2].Controls [0];
			TextBox d=(TextBox)e.Item .Cells [3].Controls [0];
			TextBox e1=(TextBox)e.Item .Cells [4].Controls [0];
			TextBox f=(TextBox)e.Item .Cells [5].Controls [0];
			TextBox g=(TextBox)e.Item .Cells [6].Controls [0];
            TextBox h = (TextBox)e.Item.Cells[7].Controls[0];
			DataRow r;
			int rownumber;
			rownumber=e.Item.ItemIndex;
			r=ds.Tables["individual"].Rows[rownumber];
			r[0]= a.Text;
			r[1]= b.Text;
			r[2]= c.Text;
			r[3]= d.Text;
			r[4]= e1.Text;
			r[5]= f.Text;
			r[6]= g.Text;
            r[7] = h.Text;
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"individual");
			DataGrid1.EditItemIndex=-1;
			filldata();
		}

		private void DataGrid1_CancelCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex =-1;
			filldata();
		}

		private void DataGrid1_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			filldata();
			int a;
			a=e.Item.ItemIndex;
			ds.Tables["individual"].Rows[a].Delete();
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"individual");
			filldata();
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}




        protected void txt_ind_doj_TextChanged(object sender, EventArgs e)
        {

        }
}
}
