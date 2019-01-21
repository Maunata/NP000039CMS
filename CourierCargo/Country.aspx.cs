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

public partial class Country1 : System.Web.UI.Page
{
    public string str = "data source=.;Database = CourierService;Integrated Security=true";
    public DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddCountry_Click(object sender, EventArgs e)
    {
        //lblMessage.Text = txtCountry.Text;



        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("insert into Country(Country)values(@Country)", con);

            cmd.Parameters.Add(new SqlParameter("@Country", SqlDbType.NVarChar, 50));
            cmd.Parameters["@Country"].Value = txtCountry.Text;

            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Saved";
            Response.Redirect("Country.aspx");
            txtCountry.Text = "";
            txtCountry.Focus();

        }
        catch (Exception ex)
        {
            if (ex.Message == "Violation of PRIMARY KEY constraint 'PK_Container'. Cannot insert duplicate key in object 'Container'. The statement has been terminated")
            {
                lblMessage.Text = "You can add duplicate value of Country";
            }
            else
            {
                lblMessage.Text = ex.Message;
            }
        }
        finally
        {
            con.Close();
        }

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
}
