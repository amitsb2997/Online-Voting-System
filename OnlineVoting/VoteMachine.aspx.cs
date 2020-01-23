using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {
        string usrt = Convert.ToString(Session["userstatus"]);
        if (usrt == "active")
        {


            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

            string nm = Convert.ToString(Session["vtnm"]);

            Label1.Text = "Hi," + nm;
        }
        else
        {
            string nm = Convert.ToString(Session["vtnm"]);

            Label1.Text = "Hi," + nm;
            Response.Redirect("SorryVote.aspx");
        }

        }


    
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        

            if (e.CommandName == "votee")
        {
            try
            {



                int cr;
                cr = Convert.ToInt32(e.CommandArgument.ToString());
                int ser = Convert.ToInt32(GridView1.Rows[cr].Cells[0].Text);
                string party = GridView1.Rows[cr].Cells[2].Text;

                SqlConnection scon;
                SqlCommand scmd;
                SqlDataAdapter sda;
                DataSet ds;







                scon = new SqlConnection("server=AMITSBHIVAGADE\\SQLEXPRESS2;uid=sa;pwd=amitbhivagade;database=onlinevotingdb");

                scon.Open();
                scmd = new SqlCommand("update vote_bank set TotalVotes=TotalVotes+1 where PartyNm=@b and SrNo=@a;", scon);
                scmd.Parameters.AddWithValue("a", ser);
                scmd.Parameters.AddWithValue("b", party);
                int cnt = scmd.ExecuteNonQuery();
                if (cnt > 0)
                {
                    Response.Redirect("Voted.aspx");
                }
                scmd.Dispose();
                scon.Close();




            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
   
    }


   
}