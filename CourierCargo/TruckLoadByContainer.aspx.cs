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

public partial class TruckLoadByContainer : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);

        con.Open();
        SqlCommand cmd = new SqlCommand("select Origin,Destination,CurrentlyVia,OriginalyVia from Route_Map where ID = '" + cboRouteMap.SelectedValue + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        try
        {

            if (dr.Read())
            {
                lblOrigin.Text = dr[0].ToString();
                lblDestination.Text = dr[1].ToString();
                lblCurrentlyVia.Text = dr[2].ToString();
                lblOriginallyVia.Text = dr[3].ToString();


            }

            cmd.ExecuteNonQuery();
            dr.Close();

            con.Close();

        }

        catch (Exception ex)
        {

            dr.Close();
            // Response.Write(ex.Message);
        }

        finally
        {
            con.Close();

        }
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void btnLoad_Click(object sender, EventArgs e)
    {

        int checkflag = 0;

        for (int i = 0; i < clbContainerNo.Items.Count; i++)
        {
            if (clbContainerNo.Items[i].Selected == true)
            {
                checkflag = 1;
            }

        }

        if (lblOrigin.Text == " ")
        {
            Label1.Text = "Please Select the Route Map ";

        }
        else if (checkflag == 0)
        {
            Label1.Text = "Please Check at least one item from the list";

        }
        else
        {



            SqlConnection con = new SqlConnection(str);


            for (int i = 0; i < clbContainerNo.Items.Count; i++)
            {
                if (clbContainerNo.Items[i].Selected)
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("insert into TruckContainerRoute(ContainerId,OfficeId,TruckId,RouteMapId,Origin,Destination,CurrentlyVia)values(@ContainerId,@OfficeId,@TruckId,@RouteMapId,@Origin,@Destination,@CurrentlyVia)", con);

                        cmd.Parameters.Add(new SqlParameter("@ContainerId", SqlDbType.NVarChar, 50));
                        cmd.Parameters.Add(new SqlParameter("@OfficeId", SqlDbType.BigInt, 8));
                        cmd.Parameters.Add(new SqlParameter("@TruckId", SqlDbType.NVarChar, 50));
                        cmd.Parameters.Add(new SqlParameter("@Origin", SqlDbType.NVarChar, 50));
                        cmd.Parameters.Add(new SqlParameter("@Destination", SqlDbType.NVarChar, 50));
                        cmd.Parameters.Add(new SqlParameter("@CurrentlyVia", SqlDbType.NVarChar, 50));
                        cmd.Parameters.Add(new SqlParameter("@RouteMapId", SqlDbType.NVarChar, 50));

                        con.Open();



                        cmd.Parameters["@ContainerId"].Value = clbContainerNo.Items[i].Value;
                        cmd.Parameters["@OfficeId"].Value = int.Parse(cboofficeid.SelectedValue);
                        cmd.Parameters["@TruckId"].Value = int.Parse(cboTruckId.SelectedValue);
                        cmd.Parameters["@Origin"].Value = lblOrigin.Text;
                        cmd.Parameters["@Destination"].Value = lblDestination.Text;
                        cmd.Parameters["@CurrentlyVia"].Value = lblCurrentlyVia.Text;
                        cmd.Parameters["@RouteMapId"].Value = cboRouteMap.SelectedValue;

                        cmd.ExecuteNonQuery();

                        Label1.Text = "Truck Loaded by Container(s) Successfully";


                        SqlCommand cmd1 = new SqlCommand("update Container set ContainerStatus = 2 where ID = '" + clbContainerNo.Items[i].Value + "' ", con);

                        cmd1.ExecuteNonQuery();

                        SqlCommand cmd2 = new SqlCommand("update Truck set TruckStatus = 2 where ID = '" + cboTruckId.SelectedValue + "' ", con);
                        cmd2.ExecuteNonQuery();

                    }

                    catch (Exception ex)
                    {


                        Label1.Text = ex.Message;
                    }

                    finally
                    {
                        con.Close();
                    }
                }
            }
            // Response.Redirect("TruckLoad.aspx");  
        }

    }
    protected void cboRouteMap_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnLoad.Visible = true;
    }
}
