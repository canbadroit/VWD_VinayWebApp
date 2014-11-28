using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ADD : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        


        
    }
    protected void DL_Prod_SelectedIndexChanged(object sender, EventArgs e)
    {

    //    SqlCommand cmd = new SqlCommand("Select distinct Version from FBE_New where Products like '%" + DL_Cross_Prod.Text.Replace("\r\n", string.Empty) + "%'", new SqlConnection(ConfigurationManager.ConnectionStrings["FBEConnectionString"].ConnectionString));
    //    cmd.Connection.Open();

    //    SqlDataReader ddlValues;
    //    ddlValues = cmd.ExecuteReader();
    //.data
    //    TB_Vers.DataSource = ddlValues;
    //    TB_Vers.DataValueField = "version";
    //    TB_Vers.DataTextField = "version";
    //    TB_Vers.DataBind();

    //    cmd.Connection.Close();
    //    cmd.Connection.Dispose();
    }
   
    protected void Btn_Update_Click(object sender, EventArgs e)
    {

      


        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["FBEConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand("INSERT INTO FBE_New (Title,Products,Version,Certification,Date_of_Certification) VALUES('" + DL_Prod.Text + "','" + DL_Cross_Prod.Text + "','" + TB_Vers.Text + "','" + DL_Cert.Text + "','" + TBD_DOC.Text + "' )", con);

        con.Open();

        cmd.ExecuteNonQuery();

        con.Close();




        string display = "Value Submitted!";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
 
    }



    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        //TBD_DOC.Text = Calendar1.SelectedDate.ToShortDateString();


    }
}