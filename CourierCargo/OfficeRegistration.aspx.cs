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

public partial class OfficeRegistratio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = true";

    protected void btnNext_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("insert into OfficeRegistration(Name,Address1,Address2,Phone1,Phone2,Cell,EMail,CountryId,StateId,CityId,RegDateDay,RegDateMonth,RegDateYear,Handles)values(@Name,@Address1,@Address2,@Phone1,@Phone2,@Cell,@EMail,@CountryId,@StateId,@CityId,@RegDateDay,@RegDateMonth,@RegDateYear,@Handles)", con);

            cmd.Parameters.Add(new SqlParameter("@Name", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Address1", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Address2", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Phone1", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Phone2", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Cell", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@EMail", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@CountryId", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@StateId", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@CityId", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@RegDateDay", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@RegDateMonth", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@RegDateYear", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Handles", SqlDbType.NVarChar, 50));

            cmd.Parameters["@Name"].Value = txtname.Text;
            cmd.Parameters["@Address1"].Value = txtaddress1.Text;
            cmd.Parameters["@Address2"].Value = txtaddress2.Text;
            cmd.Parameters["@Phone1"].Value = txtphone1.Text;
            cmd.Parameters["@Phone2"].Value = txtphone2.Text;
            cmd.Parameters["@Cell"].Value = txtcell.Text;
            cmd.Parameters["@EMail"].Value = txtemail.Text;
            cmd.Parameters["@CountryId"].Value = txtcountry.Text;
            cmd.Parameters["@StateId"].Value = txtstate.Text;
            cmd.Parameters["@CityId"].Value = txtcity.Text;
            cmd.Parameters["@RegDateDay"].Value = cboregDate.SelectedItem.Text.ToString();
            cmd.Parameters["@RegDateMonth"].Value = cboregMonth.SelectedItem.Text.ToString();
            cmd.Parameters["@RegDateYear"].Value = cboregYear.SelectedItem.Text.ToString();
            cmd.Parameters["@Handles"].Value = txthandlers.Text;

            cmd.ExecuteNonQuery();



        }
        catch (Exception ex)
        {


            Response.Write(ex.Message);
        }

        finally
        {
            con.Close();
        }
        Response.Redirect("AdminArea.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}
