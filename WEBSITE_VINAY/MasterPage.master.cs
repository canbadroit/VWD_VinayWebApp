using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Username.Text = System.Security.Principal.WindowsIdentity.GetCurrent().Name.Replace("MISYSROOT", string.Empty);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hi" + System.Security.Principal.WindowsIdentity.GetCurrent().Name.Replace("MISYSROOT", string.Empty) + "Please Enter the Relevent detials and Click Update');", true);

        }
    }
}
