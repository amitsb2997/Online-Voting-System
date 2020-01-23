using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class InfoLeader : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection scon;
        //SqlDataAdapter sda;
        //DataSet ds;

        DataSet ds = new DataSet();

        ds.ReadXml(Server.MapPath("WriteXML\\InfoLeader.xml"));

        GridView1.DataSource = ds;
        GridView1.DataBind();




        //scon = new SqlConnection("server=AMITSBHIVAGADE\\SQLEXPRESS2;uid=sa;pwd=amitbhivagade;database=onlinevotingdb");
        //sda = new SqlDataAdapter("select leader.Name,leader.Age,leader.Gender,leader.Address,leader.PoleNo,leader.MobNo,leaders.SymbolName from leader inner join leaders on leader.UID = leaders.UID",scon);
        //ds = new DataSet();
        //sda.Fill(ds,"us");

        //GridView1.DataSource = ds;
        //GridView1.DataBind();


        

    }
}