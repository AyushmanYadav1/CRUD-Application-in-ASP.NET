using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TableView
{
    public partial class EmployeeDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var Id = Request.QueryString["ID"];
            string mycon = "Data Source= BHAVNAWKS783; Initial Catalog= master; Integrated Security=true;";
            string myquery = "Select * From Employee_table Where ID="+Id;
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                TXTID.Text = ds.Tables[0].Rows[0]["ID"].ToString();
                txtDOJ.Text = ds.Tables[0].Rows[0]["DateOfJoining"].ToString();
                txtJobTitle.Text = ds.Tables[0].Rows[0]["JobTitle"].ToString();
                txtET.Text = ds.Tables[0].Rows[0]["EmployeeType"].ToString();
            }
            con.Close();
        }
        protected void UploadBtn_Click(object sender, EventArgs e)
        {
            if (flupImage.HasFile)
            {

                flupImage.SaveAs(@"C:\Users\Ayushman.yadav\Desktop\Practice code\POC\TableView\ImageFolder" + flupImage.FileName);
                Label1.Text = "File Uploaded: " + flupImage.FileName;
            }
            else
            {
                Label1.Text = "No File Uploaded.";
            }
        }
    }
}