using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class FrmAdmi : System.Web.UI.Page
{
    public string str = "data source=.;Database = CourierService;Integrated Security=true";

    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Text = "";
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("select * from AdminLogin", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (txtAdminId.Text == dr[1].ToString() && txtPassword1.Value == dr[2].ToString() && txtPassword2.Value == dr[3].ToString())
                {
                    Response.Redirect("AdminArea.aspx");

                }
                else
                {
                    lblMessage.Text = "You are Not a authorized user";
                }

            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
}
