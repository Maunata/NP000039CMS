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

public partial class MSearchTruckByTruckNo : System.Web.UI.Page
{

    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void fill()
    {
        SqlConnection con = new SqlConnection(str);

        try
        {
            SqlCommand cmd = new SqlCommand("select Distinct Origin,Destination,CurrentlyVia,RouteMapNo,Name from TruckRouteView where status = 0 and TruckId = '" + cboTruckNo.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                lblOrigin.Text = dr[0].ToString();
                lblDestination.Text = dr[1].ToString();
                lblCurrentlyVia.Text = dr[2].ToString();
                lblRouteMap.Text = dr[3].ToString();
                lblOffice.Text = dr[4].ToString();
                lblStatus.Text = "Truck is running";
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
            SqlCommand cmd = new SqlCommand("select Distinct Origin,Destination,CurrentlyVia,RouteMapNo,Name from TruckContainerRouteView where status = 0  and TruckId = '" + cboTruckNo.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                lblOrigin.Text = dr[0].ToString();
                lblDestination.Text = dr[1].ToString();
                lblCurrentlyVia.Text = dr[2].ToString();
                lblRouteMap.Text = dr[3].ToString();
                lblOffice.Text = dr[4].ToString();
                lblStatus.Text = "Truck is running";
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
    protected void btnSearch_Click(object sender, EventArgs e)
    {


        lblCurrentlyVia.Text = "";
        lblDestination.Text = "";
        lblOffice.Text  = "";
        lblOrigin.Text = "";
        lblRouteMap.Text = "";
        lblStatus.Text = "";
       
        
        int flag = 0;
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("select TruckStatus,OfOffice from TruckView where TruckId = '" + cboTruckNo.SelectedValue + "'", con);       
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {


                if (dr[0].ToString() == "0")
                {
                    lblOffice.Text = dr[1].ToString();
                    lblStatus.Text = "Truck is staying";
                }

                else
                    flag = 1;
            }

            cmd.ExecuteNonQuery();

            dr.Close();



        }

        catch (Exception ex)
        {


      //  Response.Write(ex.Message);
        }

        finally
        {
            con.Close();

        }

        if (flag == 1)
        {

            fill();
        }


    }
    protected void cboTruckNo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
