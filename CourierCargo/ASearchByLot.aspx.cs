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

public partial class ASeaarchByLot : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = true";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);

        try
        {
            SqlCommand cmd = new SqlCommand("select Origin,Destination,CurrentlyVia,RouteMapid,Truckid,TruckRoutestatus from TruckRoute where LotId = '" + cboLotNo.SelectedItem.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                lblOrigin.Text = dr[0].ToString();
                lblDestination.Text = dr[1].ToString();
                lblCurrentlyVia.Text = dr[2].ToString();
                lblRouteMap.Text = dr[3].ToString();
                lblOffice.Text = dr[4].ToString();
                string status = dr[6].ToString();
                if (status == "0")
                {
                    lblStatus.Text = "Lot is not Delivered";
                }
                else
                {
                    lblStatus.Text = "Lot is Delivered";
                }
                lblTruckNo.Text = dr[5].ToString();
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
            SqlCommand cmd = new SqlCommand("select Origin,Destination,CurrentlyVia,RouteMapid,Containerid,Truckid from TruckContainerRoute where Lotid = '" + cboLotNo.SelectedItem.Text + "'", con);
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
            dr.Close();
            cmd.ExecuteNonQuery();

            



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
