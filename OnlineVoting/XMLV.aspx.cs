using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class XMLV : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection scon;
        SqlDataAdapter sda;
        DataSet ds;






        scon = new SqlConnection("server=AMITSBHIVAGADE\\SQLEXPRESS2;uid=sa;pwd=amitbhivagade;database=onlinevotingdb");
        sda = new SqlDataAdapter("select UID,voternm,DOB,age,gen,adrs,poleno,mobno from voters where votyp='voter'", scon);
        ds = new DataSet();
        sda.Fill(ds, "us");

        ds.WriteXml(Server.MapPath("WriteXML\\InfoLeader.xml"));

        Response.Write("Xml file successfully Download");


    }
}
