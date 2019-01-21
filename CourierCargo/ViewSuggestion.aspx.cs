using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class ViewSuggestion1 : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnOffice_Click1(object sender, EventArgs e)
    {
        Session["SOfficeId"] = cboOffice.SelectedValue;
        Session["SOffice"] = cboOffice.SelectedItem.Text;
        Response.Redirect("ViewSuggestionSearchbyUser.aspx");
    }
}
