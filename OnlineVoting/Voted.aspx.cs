using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Voted : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection scon;
        SqlCommand scmd;
       
        string id = Convert.ToString(Session["vtid"]);
        try
        {

            scon = new SqlConnection("server=AMITSBHIVAGADE\\SQLEXPRESS2;uid=sa;pwd=amitbhivagade;database=onlinevotingdb");
            scon.Open();
            scmd = new SqlCommand("update voters set userstatus='deactive' where UID=@a;", scon);
            scmd.Parameters.AddWithValue("a", id);
            int cnt=scmd.ExecuteNonQuery();
            if(cnt>0)
            {
                Response.Redirect("Out.aspx");
            }

            Label1.Text = "id" + id;
            scmd.Dispose();
            scon.Close();   
        }
        catch(Exception ex)
        {

            Response.Write(ex.Message);
        }
    }
}