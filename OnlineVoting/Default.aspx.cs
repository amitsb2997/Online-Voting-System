using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   


    protected void Menu3_MenuItemClick(object sender, MenuEventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string id, ps, typ, nm, usrstus;


        SqlConnection scon;
        SqlCommand scmd;
        SqlDataAdapter sda;
        DataSet ds;

        try
        {
            id = TextBox1.Text;
            ps = TextBox2.Text;


            //scon = new SqlConnection("server=AMITSBHIVAGADE\\SQLEXPRESS2;uid=sa;pwd=amitbhivagade;database=onlinevotingdb");
            DBConnector dbc = new DBConnector();
            scon = dbc.GetDBConnection();

            scmd = new SqlCommand("select * from voters where UID=@a and pswd=@b;", scon);
            scmd.Parameters.AddWithValue("a", id);
            scmd.Parameters.AddWithValue("b", ps);

            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds, "acc");
            int cnt = ds.Tables["acc"].Rows.Count;

            if (cnt > 0)
            {

                nm = Convert.ToString(ds.Tables["acc"].Rows[0]["voternm"]);
                usrstus = Convert.ToString(ds.Tables["acc"].Rows[0]["userstatus"]);
                Session["vtid"] = id;
                Session["vtnm"] = nm;
                Session["userstatus"] = usrstus;
                typ = Convert.ToString(ds.Tables["acc"].Rows[0]["votyp"]);
                if (typ == "voter")
                    Response.Redirect("VoterHome.aspx");
                if (typ == "admin")
                {
                    Response.Redirect("AdminHome.aspx");
                }
                if (typ == "leader")
                {
                    Response.Redirect("LeaderHome.aspx");
                }
            }
            else
                Response.Redirect("Failed.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}