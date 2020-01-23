using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class InfoVoters : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection scon;
        SqlDataAdapter sda;
        DataSet ds;


        try
        {
            scon = new SqlConnection("server=AMITSBHIVAGADE\\SQLEXPRESS2;uid=sa;pwd=amitbhivagade;database=onlinevotingdb");
            sda = new SqlDataAdapter("select voternm 'VoterName',age 'Age',gen 'Gender',adrs 'Address',poleno 'PoleNo',mobno 'MobNo' from voter_info where votyp='voter'", scon);
            ds = new DataSet();
            sda.Fill(ds, "vt");

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}