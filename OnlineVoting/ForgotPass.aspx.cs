using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ForgotPass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection scon;
        SqlCommand scmd;
        SqlDataAdapter sda;
        DataSet ds;

        string uid,secque, ans,newpass;

        
            uid = TextBox1.Text;
            secque = DropDownList1.SelectedItem.Text;
            ans = TextBox2.Text;

            scon = new SqlConnection("server=AMITSBHIVAGADE\\SQLEXPRESS2;uid=sa;pwd=amitbhivagade;database=onlinevotingdb");
            scmd = new SqlCommand("select * from voter_info where UID=@a and SecQues=@b and answer=@c;", scon);
            scmd.Parameters.AddWithValue("a", uid);
            scmd.Parameters.AddWithValue("b", secque);
            scmd.Parameters.AddWithValue("c", ans);

            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds, "vot");

            int cnt = ds.Tables["vot"].Rows.Count;
        if (cnt > 0)
        {
            newpass = uid.Substring(1, 4) + "%" + "010";
            Label1.Text = "Your new Password is " + newpass;
            scmd = new SqlCommand("update voters set pswd=@a where UID=@b;", scon);
            scmd.Parameters.AddWithValue("a", newpass);
            scmd.Parameters.AddWithValue("b", uid);
            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds);

        }

        else
            Response.Write("Authentication Failed..!!");

            

    }

}