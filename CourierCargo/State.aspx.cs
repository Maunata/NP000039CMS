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

public partial class State1 : System.Web.UI.Page
{
    public string str = "data source =.;Database = CourierService;Integrated Security=true";
    public DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddState_Click(object sender, EventArgs e)
    {
        //lblMessage.Text = txtCountry.Text;



        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("insert into State(State)values(@State)", con);

            cmd.Parameters.Add(new SqlParameter("@State", SqlDbType.NVarChar, 50));
            cmd.Parameters["@State"].Value = txtstate.Text;

            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Saved";
            // Response.Redirect("State.aspx");
            txtstate.Text = "";
            txtstate.Focus();

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
