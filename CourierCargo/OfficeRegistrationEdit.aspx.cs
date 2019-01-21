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
public partial class OfficeRegistrationEdi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = true";

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("select Name,Address1,Address2,Phone1,Phone2,cell,Email,Countryid,Stateid,Cityid,RegDateDay,RegDateMonth,RegDateYear,Handles from OfficeRegistration where Id = '" + cboSearch.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                for (int j = 0; j < cboSearch.Items.Count; j++)
                {
                    if (cboSearch.Items[j].Value == dr[0].ToString())
                    {
                        cboSearch.SelectedItem.Text = cboSearch.Items[j].Text;

                    }
                }


                //  cboOfOffice.SelectedItem.Text = dr[2].ToString();
                txtname.Text = dr[0].ToString();
                txtaddress1.Text = dr[1].ToString();
                txtaddress2.Text = dr[2].ToString();
                txtphone1.Text = dr[3].ToString();
                txtphone2.Text = dr[4].ToString();
                txtcell.Text = dr[5].ToString();
                txtemail.Text = dr[6].ToString();
                txtcountry.Text = dr[7].ToString();
                txtstate.Text = dr[8].ToString();
                txtcity.Text = dr[9].ToString();

                cboregDate.SelectedValue = dr[10].ToString();
                cboregMonth.SelectedValue = dr[11].ToString();
                cboregYear.SelectedValue = dr[12].ToString();
                txthandlers.Text = dr[13].ToString();

            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        btnUpdate.Visible = true;
        btnDelete.Visible = true;

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("update OfficeRegistration set Name=@Name,Address1=@Address1,Address2=@Address2,Phone1=@Phone1,Phone2=@Phone2,Cell=@Cell,EMail=@EMail,CountryId=@CountryId,StateId=@StateId,CityId=@CityId,RegDateDay=@RegDateDay,RegDateMonth=@RegDateMonth,RegDateYear=@RegDateYear,Handles=@Handles where id='" + cboSearch.SelectedValue + "'", con);

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
            lblMessage.Text = "Update...";
            Response.Redirect("OfficeRegistration.aspx");


        }
        catch (Exception ex)
        {


            Response.Write(ex.Message);
        }

        finally
        {
            con.Close();
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("Delete from OfficeRegistration where ID='" + cboSearch.SelectedValue.ToString() + "'", con);


            con.Open();

            cmd.ExecuteNonQuery();
            lblMessage.Text = "Deleted !";
            txtname.Text = "";
            txtaddress1.Text = "";
            Response.Redirect("OfficeRegistration.aspx");


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
