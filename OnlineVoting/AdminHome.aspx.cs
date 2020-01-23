using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string vid = Convert.ToString(Session["vtid"]);
        Label4.Text = "Logged in as :" + vid;
        string vnm = Convert.ToString(Session["vtnm"]);
        Label5.Text = ":" + vnm;
        Image2.ImageUrl = "images/" + vid + ".jpg";
         
    }
}