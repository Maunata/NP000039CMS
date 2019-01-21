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

public partial class UserBoooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("insert into Booking(Booked_Item,Booked_Weight,Whether,Origin_CityId,Destination_CityId)values(@Booked_Item,@Booked_Weight,@Whether,@Origin_CityId,@Destination_CityId)", con);


            cmd.Parameters.Add(new SqlParameter("@Booked_Item", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Booked_Weight", SqlDbType.NVarChar, 50));

            cmd.Parameters.Add(new SqlParameter("@Whether", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Origin_CityId", SqlDbType.BigInt, 8));
            cmd.Parameters.Add(new SqlParameter("@Destination_CityId", SqlDbType.BigInt, 8));

            cmd.Parameters["@Booked_Item"].Value = txtItem.Text;
            cmd.Parameters["@Booked_Weight"].Value = txtWeigth.Text;
            cmd.Parameters["@Whether"].Value = cboWhether.Text;
            cmd.Parameters["@Origin_CityId"].Value = int.Parse(cboOrigin.SelectedValue);
            cmd.Parameters["@Destination_CityId"].Value = int.Parse(cboDestination.SelectedValue);
            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Your Item has been booked by us.   Thankyou!";
            //Response.Redirect("http://localhost:1088/CargoSevice/Container.aspx");
            txtWeigth.Text = "";
            txtItem.Text = "";

        }
        catch (Exception ex)
        {
            if (ex.Message == "Violation of PRIMARY KEY constraint 'PK_Container'. Cannot insert duplicate key in object 'Container'. The statement has been terminated")
            {
                lblMessage.Text = "You cannot add duplicate value of Container No";
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
}
