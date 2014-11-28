using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        Username.Text = System.Security.Principal.WindowsIdentity.GetCurrent().Name.Replace("MISYSROOT", string.Empty);
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hi" + System.Security.Principal.WindowsIdentity.GetCurrent().Name.Replace("MISYSROOT", string.Empty) + "Please Enter the Relevent detials and Click Update');", true);

        }


        
    }
    protected void DL_Prod_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("Select distinct Version from FBE_New where Products like '%" + DL_Prod.Text.Replace("\r\n", string.Empty) + "%'", new SqlConnection(ConfigurationManager.ConnectionStrings["FBEConnectionString"].ConnectionString));
        cmd.Connection.Open();

        SqlDataReader ddlValues;
        ddlValues = cmd.ExecuteReader();
    
        DL_Vers.DataSource = ddlValues;
        DL_Vers.DataValueField = "version";
        DL_Vers.DataTextField = "version";
        DL_Vers.DataBind();

        cmd.Connection.Close();
        cmd.Connection.Dispose();
    }
   
    protected void Btn_Update_Click(object sender, EventArgs e)
    {

      


        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["FBEConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand("INSERT INTO FBE_New (Title,Products,Version,Certification,Date_of_Certification) VALUES('" + TB_Title.Text + "','" + DL_Prod.Text + "','" + DL_Vers.Text + "','" + DL_Cert.Text + "','" + TBD_DOC.Text + "' )", con);

        con.Open();

        cmd.ExecuteNonQuery();

        con.Close();




        string display = "Value Submitted!";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
 
    }



    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TBD_DOC.Text = Calendar1.SelectedDate.ToShortDateString();


    }
}