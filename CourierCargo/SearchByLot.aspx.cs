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

public partial class SearchByLot : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select Origin,Destination,CurrentlyVia,RouteMapNo,Name,TruckNo from TruckRouteView where status = 0 and LotId = '" +  cboLotNo.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                lblOrigin.Text = dr[0].ToString();
                lblDestination.Text = dr[1].ToString();
                lblCurrentlyVia.Text = dr[2].ToString();
                lblRouteMap.Text = dr[3].ToString();
                lblOffice.Text = dr[4].ToString();
                lblStatus.Text = "Lot is not Delivered";
                lblTruckNo.Text =  dr[5].ToString();
                lblContainterNo.Text = "--";
            }

            cmd.ExecuteNonQuery();

            dr.Close();



        }

        catch (Exception ex)
        {


            // Response.Write(ex.Message);
        }

        finally
        {
            con.Close();

        }





        try
        {
            SqlCommand cmd = new SqlCommand("select Origin,Destination,CurrentlyVia,RouteMapNo,Name,ContainerNo,TruckNo from TruckContainerRouteView where status = 0  and LotId = '" + cboLotNo.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                lblOrigin.Text = dr[0].ToString();
                lblDestination.Text = dr[1].ToString();
                lblCurrentlyVia.Text = dr[2].ToString();
                lblRouteMap.Text = dr[3].ToString();
                lblOffice.Text = dr[4].ToString();
                lblStatus.Text = "Lot is Not Delivered";
                lblContainterNo.Text = dr[5].ToString();
                lblTruckNo.Text = dr[6].ToString();
               
            }

            cmd.ExecuteNonQuery();

            dr.Close();



        }

        catch (Exception ex)
        {


            // Response.Write(ex.Message);
        }

        finally
        {
            con.Close();

        }

    }
}
