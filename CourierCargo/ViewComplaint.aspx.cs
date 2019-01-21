using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class ViewComplaint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnOffice_Click(object sender, EventArgs e)
    {
        Session["OfficeId"] = cboOffice.SelectedValue;
        Session["Office"] = cboOffice.SelectedItem.Text;
        Response.Redirect("ViewComplaintSearchbyUser.aspx");
    }
}
