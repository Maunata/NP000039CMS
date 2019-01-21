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

public partial class frmSearchContainerByContainerNo1 : System.Web.UI.Page
{
    public string str = "data source=.;Database = CourierService;Integrated Security=true";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void fill()
    {
        SqlConnection con = new SqlConnection(str);

        try
        {
            SqlCommand cmd = new SqlCommand("select Distinct Origin,Destination,CurrentlyVia,RouteMapNo,Name,TruckNo from TruckContainerRouteView where status = 0  and ContainerId = '" + cboContainerNo.SelectedValue + "'", con);
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
        lblOffice.Text = "";
        lblOrigin.Text = "";
        lblRouteMap.Text = "";
        lblStatus.Text = "";
        lblTruckNo.Text = "";


        int flag = 0;
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("select ContainerStatus,OfOffice from ContainerView where ContainerId = '" + cboContainerNo.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {


                if (dr[0].ToString() == "0")
                {
                    lblOffice.Text = dr[1].ToString();
                    lblStatus.Text = "Container is staying";
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
}
