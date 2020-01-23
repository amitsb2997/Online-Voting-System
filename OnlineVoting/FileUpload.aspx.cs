using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FileUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try { 
        FileUpload1.SaveAs(Server.MapPath("Images\\" + FileUpload1.FileName));
            Label1.Text = "Successfully upload image";
        }
        catch(Exception ex)
        {
            Label1.Text = ex.Message;
        }
        }


}