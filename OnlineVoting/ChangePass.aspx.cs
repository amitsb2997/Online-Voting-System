using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ChangePass : System.Web.UI.Page
{
    static string prePage = String.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string uid, cps, nps, cfps;

        SqlConnection scon;
        SqlCommand scmd;
        SqlDataAdapter sda;
        DataSet ds;

        if (!IsPostBack)
        {
            prePage = Request.UrlReferrer.ToString();
        }



        uid = TextBox1.Text;
        cps = TextBox2.Text;
        nps = TextBox3.Text;
        cfps = TextBox4.Text;
        if (nps == cfps)
        {
            scon = new SqlConnection("server=AMITSBHIVAGADE\\SQLEXPRESS2;uid=sa;pwd=amitbhivagade;database=onlinevotingdb");
            scon.Open();
            scmd = new SqlCommand("update voters set pswd=@a where UID=@b and pswd=@c;", scon);
            scmd.Parameters.AddWithValue("a", nps);
            scmd.Parameters.AddWithValue("b", uid);
            scmd.Parameters.AddWithValue("c", cps);
          
            int cnt = scmd.ExecuteNonQuery();
            if (cnt > 0)
                
                    Response.Write("password changed successfully");
                else
                    Response.Write("authentication failed");

            scmd.Dispose();
            scon.Close();
        }
        else
        {
            Response.Write("New passwords mismatched..update failed");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect(prePage);
    }
}