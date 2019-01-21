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

public partial class SearchByBooking : System.Web.UI.Page
{

    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    public string LotId;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);


        try
        {
            //SqlCommand cmd = new SqlCommand("select LotId from BookingLotLink where BookingId = '" +   cboBookingNo.SelectedValue + "'", con);
            //con.Open();
            //SqlDataReader dr = cmd.ExecuteReader();


            //if (dr.Read())
            //{
            //    LotId = dr[0].ToString();
            //}

            //cmd.ExecuteNonQuery();

          SqlDataAdapter  da = new SqlDataAdapter("select LotId from BookingLotLink where BookingId = '" +   cboBookingNo.SelectedValue + "'", con);
          DataSet ds = new DataSet();
          da.Fill(ds);
          
         foreach (DataRow dr in ds.Tables[0].Rows)
          {
              LotId = dr[0].ToString();
          }

       



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
            SqlDataAdapter  cmd = new SqlDataAdapter("select Origin,Destination,CurrentlyVia,RouteMapNo,Name,TruckNo,LotNo from TruckRouteView where status = 0 and LotId = '" + LotId + "'", con);
            
            //SqlDataReader dr = cmd.ExecuteReader();
            DataSet ds1 = new DataSet();
            cmd.Fill(ds1);
            foreach(DataRow dr in ds1.Tables[0].Rows )
            {
                lblOrigin.Text = dr[0].ToString();
                lblDestination.Text = dr[1].ToString();
                lblCurrentlyVia.Text = dr[2].ToString();
                lblRouteMap.Text = dr[3].ToString();
                lblOffice.Text = dr[4].ToString();
                lblStatus.Text = "Lot is not Delivered";
                lblTruckNo.Text = dr[5].ToString();
                lblContainterNo.Text = "--";
                lblLotNo.Text = dr[6].ToString();
            }

            //cmd.ExecuteNonQuery();

           // dr.Close();



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
            SqlDataAdapter da = new SqlDataAdapter("select Origin,Destination,CurrentlyVia,RouteMapNo,Name,ContainerNo,TruckNo,LotNo from TruckContainerRouteView where status = 0  and LotId = '" + LotId + "'", con);
            //con.Open();
            //SqlDataReader dr = cmd.ExecuteReader();
            DataSet ds2 = new DataSet();
            da.Fill(ds2);

           foreach(DataRow dr in ds2.Tables[0].Rows)
            {
                lblOrigin.Text = dr[0].ToString();
                lblDestination.Text = dr[1].ToString();
                lblCurrentlyVia.Text = dr[2].ToString();
                lblRouteMap.Text = dr[3].ToString();
                lblOffice.Text = dr[4].ToString();
                lblStatus.Text = "Lot is Not Delivered";
                lblContainterNo.Text = dr[5].ToString();
                lblTruckNo.Text = dr[6].ToString();
                lblLotNo.Text = dr[7].ToString();

            }

            //cmd.ExecuteNonQuery();

            //dr.Close();



        }

        catch (Exception ex)
        {


            // Response.Write(ex.Message);
        }

        finally
        {
           // con.Close();

        }

    }
}
