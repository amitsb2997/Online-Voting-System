using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Register(object sender, EventArgs e)
    {
        string uid, vnm,ps, dob,gen="", mob, adrs, sq, an;
        int ag,pn;

        SqlConnection scon;
        SqlCommand scmd;
        SqlDataAdapter sda;
        DataSet ds;
        try
        {
            uid = TextBox1.Text;
            vnm = TextBox2.Text;
            ps = TextBox4.Text;
            dob = TextBox5.Text;
            ag = Convert.ToInt16(TextBox6.Text);
            if (RadioButton1.Checked)
                gen = "Male";
            else
                gen = "Female";
            mob = TextBox8.Text;
            pn = Convert.ToInt16(TextBox9.Text);
            adrs = TextBox3.Text;
            sq = DropDownList1.SelectedItem.Text;
            an = TextBox7.Text;

            scon = new SqlConnection("server=AMITSBHIVAGADE\\SQLEXPRESS2;uid=sa;pwd=amitbhivagade;database=onlinevotingdb");
            scmd = new SqlCommand("insert into voters values(@vid,@vtnm,@vps,default,default);", scon);
            scmd.Parameters.AddWithValue("vid", uid);
            scmd.Parameters.AddWithValue("vtnm", vnm);
            scmd.Parameters.AddWithValue("vps", ps);
            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds);

            scmd = new SqlCommand("insert into voter_info values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,default);", scon);
            scmd.Parameters.AddWithValue("a",uid);
            scmd.Parameters.AddWithValue("b",vnm);
            scmd.Parameters.AddWithValue("c",dob);
            scmd.Parameters.AddWithValue("d",ag);
            scmd.Parameters.AddWithValue("e",gen);
            scmd.Parameters.AddWithValue("f",adrs);
            scmd.Parameters.AddWithValue("g",pn);
            scmd.Parameters.AddWithValue("h",mob);
            scmd.Parameters.AddWithValue("i",sq);
            scmd.Parameters.AddWithValue("j",an);
            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds);

            Response.Redirect("RegistrationSuccessfull.aspx");

   }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}