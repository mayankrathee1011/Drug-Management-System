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
	/// Summary description for employee_master.
	/// </summary>
	public partial class employee_master : System.Web.UI.Page
	{
		//SqlConnection cn=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection cn = new SqlConnection("Data Source=.; Initial Catalog=drugmanagement; Integrated Security=True");
		SqlCommand cmd;
		SqlDataAdapter da;
		SqlCommandBuilder cb;
		DataSet ds;
		DataRow r;
		int id;
//Pageload Event
		protected void Page_Load(object sender, System.EventArgs e)
		{          
            if( Page.IsPostBack==false)
			{
				filldata();
				
				da=new SqlDataAdapter("select * from department_master",cn);
				dr_dept_name.Items.Clear();
				da.Fill(ds,"dept_master");
				int i;
				int count;
				count= ds.Tables["dept_master"].Rows.Count;
				Array a=Array.CreateInstance( typeof(String), count, 0 );
				for (i=0;i<count;i++)
				{
					a=ds.Tables["dept_master"].Rows[i].ItemArray;
					dr_dept_name.Items.Add(a.GetValue(1).ToString());
					dr_dept_name.Items[dr_dept_name.Items.Count-1].Value=a.GetValue(0).ToString();
				}
				da=new SqlDataAdapter("select * from designation_master",cn);
				dr_desig_name.Items.Clear();
				da.Fill(ds,"desig_master");
				int i1;
				int count1;
				count1= ds.Tables["desig_master"].Rows.Count;
				Array a1=Array.CreateInstance( typeof(String), count, 0 );
				for (i1=0;i1<count1;i1++)
				{
					a1=ds.Tables["desig_master"].Rows[i1].ItemArray;
					dr_desig_name.Items.Add(a1.GetValue(1).ToString());
					dr_desig_name.Items[dr_desig_name.Items.Count-1].Value=a1.GetValue(0).ToString();
				}
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
			da=new SqlDataAdapter("select * from employee_master",cn);
			da.Fill(ds,"employee");
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
			
		}
//NewRecord Button
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
			
			cmd=new SqlCommand("select count(*) from employee_master",cn);
			id=Convert.ToInt32(cmd.ExecuteScalar());
			cn.Close();
			if(id==0)
			{
				txt_emp_no.Text="1";
			}
			else
			{
				cn.Open();
				cmd=new SqlCommand("select max(employee_no)+1 from employee_master",cn);
				txt_emp_no.Text=Convert.ToInt32(cmd.ExecuteScalar()).ToString();
				cn.Close();
			}
			txt_emp_name.Text="";
			txt_dob.Text="";
			txt_address.Text="";
			txt_phone.Text="";
			txt_email.Text="";
            //txt_gender.Text="";
			txt_doj.Text=DateTime.Now.ToString();

		}
//Save Button
		protected void but_save_Click(object sender, System.EventArgs e)
		{
						
			filldata();

			r=ds.Tables["employee"].NewRow();
			r[0]=Convert.ToInt32(txt_emp_no.Text);
			r[1]=txt_emp_name.Text.ToString();
            r[2]=Convert.ToDateTime(txt_dob.Text);
			r[3]=txt_address.Text.ToString();
			r[4]=Convert.ToInt64(txt_phone.Text);
            r[5] = txt_email.Text.ToString();
            //r[6]=txt_gender.Text.ToString();
			r[7]=Convert.ToDateTime(txt_doj.Text);
            //if ((Convert.ToInt32(txt_doj.Text.ToString())) - (Convert.ToInt32(txt_dob.Text.ToString())) < 20)
            //{
            //    txt_doj.Text = "";
            //}
            cmd = new SqlCommand("Select dept_no from department_master where dept_name='"+dr_dept_name.SelectedValue+"'", cn);
            cn.Open();
           // dr_dept_name = cmd.ExecuteScalar().ToString();
            //r[8] = cmd.ExecuteScalar();  
            //cn.Close();
            r[8] = Convert.ToInt32(dr_dept_name.SelectedItem.Value);
            cn.Close();
            SqlCommand cmd1 = new SqlCommand("select desig_id from designation_master where desig_name='"+dr_desig_name.SelectedValue+"'", cn);
            cn.Open();
            //dr_dept_name = cmd.ExecuteScalar().ToString();
            //r[9] = cmd1.ExecuteScalar();
            ////cn.Close();
            r[9] = Convert.ToInt32(dr_desig_name.SelectedItem.Value);
            cn.Close();
			ds.Tables["employee"].Rows.Add(r);
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"employee");
			filldata();
			DataGrid1.Visible=true;
			Panel1.Visible=false;
			but_new.Visible=true;

		}
//Button Back To Grid
		protected void but_grid_Click(object sender, System.EventArgs e)
		{
			DataGrid1.Visible=true;
			Panel1.Visible=false;
			but_new.Visible=true;

		}
//DataGrid1_EditCommand
		private void DataGrid1_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex=e.Item.ItemIndex;
			filldata();

		}
//DataGrid1_UpdateCommand
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
			TextBox h=(TextBox)e.Item .Cells [7].Controls [0];
			TextBox i=(TextBox)e.Item .Cells [8].Controls [0];
			TextBox j=(TextBox)e.Item .Cells [9].Controls [0];
			DataRow r;

			
			int rownumber;
			rownumber=e.Item.ItemIndex;
			r=ds.Tables["employee"].Rows[rownumber];
			r[0]= b.Text;
			r[1]= a.Text;
			r[2]= c.Text;
			r[3]= d.Text;
			r[4]= e1.Text;
			r[5]= f.Text;
			r[6]= g.Text;
			r[7]= h.Text;
			r[8]= i.Text;
			r[9]= j.Text;
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"employee");
			DataGrid1.EditItemIndex=-1;
			filldata();
		}
//DataGrid1_CancelCommand
		private void DataGrid1_CancelCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex =-1;
			filldata();
		}
//DataGrid1_DeleteCommand
		private void DataGrid1_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			
			filldata();
			int a;
			a=e.Item.ItemIndex;
			ds.Tables["employee"].Rows[a].Delete();
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"employee");
			filldata();
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}




        protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
protected void  dr_dept_name_SelectedIndexChanged(object sender, EventArgs e)
{

}
        protected void txt_emp_name_TextChanged(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void DataGrid1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        
           

        

}





}
