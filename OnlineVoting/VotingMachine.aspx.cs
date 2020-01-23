using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class VotingMachine : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       /* SqlConnection scon;
        SqlDataAdapter sda;
        DataSet ds;
        scon = new SqlConnection("server=AMITSBHIVAGADE\\SQLEXPRESS2;uid=sa;pwd=amitbhivagade;database=onlinevotingdb");
        sda = new SqlDataAdapter("select srno 'srno',voternm 'voternm',SymbolName 'SymbolName' from leaders;", scon);
        ds = new DataSet();
        sda.Fill(ds, "vt");
        ?*/
        GridView1.DataSource =SqlDataSource1;
       GridView1.DataBind();
  
    }




    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName =="votee")
        {
            int cr;
            cr = Convert.ToInt32(e.CommandArgument.ToString());
            int ser = Convert.ToInt32(GridView1.Rows[cr].Cells[0].Text);
            string party = GridView1.Rows[cr].Cells[2].Text;
            SqlConnection scon;
            SqlCommand scmd;
            SqlDataAdapter sda;
            DataSet ds;
          
            try
            {
                scon = new SqlConnection("server=AMITSBHIVAGADE\\SQLEXPRESS2;uid=sa;pwd=amitbhivagade;database=onlinevotingdb");
                scmd = new SqlCommand("insert into votebank values(srno=@a and party=@b)", scon);
                scmd.Parameters.AddWithValue("a", ser);
                scmd.Parameters.AddWithValue("b", party);
                sda = new SqlDataAdapter(scmd);
                ds = new DataSet();
                sda.Fill(ds);

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }

 
}