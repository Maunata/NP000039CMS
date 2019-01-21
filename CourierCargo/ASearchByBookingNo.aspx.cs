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

public partial class aSearchByBookingNo1 : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    public string LotId;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void searchbtn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);


        try
        {
            SqlCommand cmd = new SqlCommand("select LotId from BookingLotLink where BookingId = '" + cboBookingNo.SelectedItem.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                LotId = dr[0].ToString();
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


        try
        {
            SqlCommand cmd = new SqlCommand("select * from TruckRoute where LotId = '" + LotId + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                lblOrigin.Text = dr[4].ToString();
                lblDestination.Text = dr[5].ToString();
                lblCurrentlyVia.Text = dr[6].ToString();
                lblRouteMap.Text = dr[2].ToString();
                lblOffice.Text = dr[8].ToString();
                string status = dr[7].ToString();
                if (status == "0")
                {
                    lblStatus.Text = "Lot is not Delivered";
                }
                else
                {
                    lblStatus.Text = "Lot is Delivered";
                }
                lblTruckNo.Text = dr[1].ToString();
                lblContainterNo.Text = "--";
                lblLotNo.Text = dr[3].ToString();
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
