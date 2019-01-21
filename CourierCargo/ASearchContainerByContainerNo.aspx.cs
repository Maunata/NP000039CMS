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

public partial class ASerchContainerByContainerNo : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = true";

    protected void Page_Load(object sender, EventArgs e)
    {

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
            SqlCommand cmd = new SqlCommand("select ContainerStatus,OfOfficeId from Container where ContainerNo= '" + cboContainerNo.SelectedItem.Text+ "'", con);
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
                {
                    flag = 1;
                }
            }
            dr.Close();
            cmd.ExecuteNonQuery();

            



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
    public void fill()
    {
        SqlConnection con = new SqlConnection(str);

        try
        {
            SqlCommand cmd = new SqlCommand("select* from TruckContainerRoute where ContainerId = '" + cboContainerNo.SelectedItem.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            { 
                lblOrigin.Text = dr[5].ToString();
                lblDestination.Text = dr[6].ToString();
                lblCurrentlyVia.Text = dr[7].ToString();
                lblRouteMap.Text = dr[3].ToString();
                lblOffice.Text = dr[4].ToString();
                lblTruckNo.Text = dr[1].ToString();
                lblStatus.Text = "Container is on Running Truck";
            }
            dr.Close();
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

    }
}
