using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineVotingLibrary1;
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Show(object sender, EventArgs e)
    {
        string typ;

        typ = TextBox1.Text;

        WriteXML wx = new WriteXML();
        wx.votertype = typ;
        wx.WriteXMLVoterType();
        Label1.Text = "name:" + wx.name + "dob:" + wx.dob;
    }
}