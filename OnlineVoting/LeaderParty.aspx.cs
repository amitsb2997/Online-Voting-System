using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Leader_Party : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownList1.Items.Add("Narendra Modi");
        DropDownList1.Items.Add("Arvind Kezriwal");
        DropDownList1.Items.Add("Rahul Gandhi");
        DropDownList1.Items.Add("Uddhao Thakhare");

    }


    protected void Show(object sender, EventArgs e)
    {
        string leadernm = DropDownList1.SelectedItem.Text;
        string partynm = "";

        switch(leadernm)
        {
            case "Narendra Modi":
                partynm = "BJP";
                break;

            case "Arvind Kezriwal":
                partynm = "AAP";
                break;

            case "Rahul Gandhi":
                partynm = "CONGRESS";
                break;

            case "Uddhao Thakhare":
                partynm = "ShivShena";
                break;
        

        }
        Label1.Text ="party:" + partynm;
    }
}