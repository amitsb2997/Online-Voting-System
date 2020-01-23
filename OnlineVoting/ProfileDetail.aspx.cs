using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ProfileDetail : System.Web.UI.Page
{
    static string prePage = String.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection scon;
        SqlCommand scmd;
        SqlDataAdapter sda;
        DataSet ds;
        
        if(!IsPostBack)
        {
            prePage=Request.UrlReferrer.ToString();
        }
          
        try
        {
            string d = Convert.ToString(Session["vtid"]);
            Label1.Text = d;

            scon = new SqlConnection("server=AMITSBHIVAGADE\\SQLEXPRESS2;uid=sa;pwd=amitbhivagade;database=onlinevotingdb");
            scmd = new SqlCommand("select * from voter_info where UID=@a", scon);
            scmd.Parameters.AddWithValue("a", d);
            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds,"vt");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect(prePage);
    }
}