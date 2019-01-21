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
using System.Data.SqlClient;

public partial class SearchByContainer : System.Web.UI.Page
{

    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
            SqlConnection con = new SqlConnection(str);

            try
            {
                SqlCommand cmd = new SqlCommand("select Distinct Origin,Destination,CurrentlyVia,RouteMapNo,Name,TruckNo from TruckContainerRouteView where status = 0  and ContainerId = '" +  cboContainerNo.SelectedValue + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();


                if (dr.Read())
                {
                    lblOrigin.Text = dr[0].ToString();
                    lblDestination.Text = dr[1].ToString();
                    lblCurrentlyVia.Text = dr[2].ToString();
                    lblRouteMap.Text = dr[3].ToString();
                    lblOffice.Text = dr[4].ToString();
                    lblTruckNo.Text = dr[5].ToString();
                    lblStatus.Text = "Container is on Running Truck";
                }

                cmd.ExecuteNonQuery();

                dr.Close();



            }

            catch (Exception ex)
            {


                 //Response.Write(ex.Message);
            }

            finally
            {
                con.Close();

            }

    }
}
