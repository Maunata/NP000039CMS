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

public partial class Unload : System.Web.UI.Page
{

    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    public string [] LotId1 = new string[10];
    public string[] LotId2 = new string[10];
    public string[] ContainerId = new string[2] { " ", " " };
    public string[] BookingId1 = new string[50];
    public string[] BookingId2 = new string[50];
    public int counter = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i=0; i < 10;i++ )
        {
            LotId1[i] = " ";
            LotId2[i] = " ";

        }

        for (int i=0; i < 50; i++)
        {
            BookingId1[i] = " ";
            BookingId2[i] = " ";

        }


    }
    protected void btnSearch_Click(object sender, EventArgs e)
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

    protected void btnUnload_Click(object sender, EventArgs e)
    {
        
        // Setting truck status  = 0
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand(" update truck set TruckStatus = 0  where ID = '" + cboTruckNo.SelectedValue + "'", con);
            con.Open();
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

        //--------------------------------------------------------------------
        // Storing concerned Lots in array LotId1
        try
        {
            SqlCommand cmd = new SqlCommand(" select LotId from TruckRoute  where TruckRouteStatus =  0 and TruckId = '" + cboTruckNo.SelectedValue + "' ", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
             counter = 0;
            while (dr.Read()) 
            {
                LotId1[counter] = dr[0].ToString();
                counter++;
            
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


        
        //--------------------------------------------------------------------
        // Setting TruckRouteStatus  = 1 from TruckRoute table

        
        try
        {
            SqlCommand cmd = new SqlCommand(" update TruckRoute set TruckRouteStatus = 1  where TruckId = '" + cboTruckNo.SelectedValue + "'", con);
            con.Open();
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

       //---------------------------------------------------------------------
        // Storing concerned Container in array ContainerId
        try
        {
            SqlCommand cmd = new SqlCommand(" select ContainerId from TruckContainerRoute  where  TruckContainerRouteStatus  = 0 and TruckId = '" + cboTruckNo.SelectedValue + "' ", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            counter = 0;
            while (dr.Read())
            {
                ContainerId[counter] = dr[0].ToString();
                counter++;

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



        //-----------------------------------------------------------------

        // Setting TruckContainerRouteStatus  = 1 from TruckContainerRoute table

       
        try
        {
            SqlCommand cmd = new SqlCommand(" update TruckContainerRoute set TruckContainerRouteStatus = 1  where TruckId = '" + cboTruckNo.SelectedValue + "'", con);
            con.Open();
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


        //-----------------------------------------------------------------
        //Storing the Concern LotId from Container in array LotId2
        
        
            counter = 0;
            for( int i = 0;i< ContainerId.Length ;i++)
            {
            try
            {

             
            SqlCommand cmd = new SqlCommand(" select LotId from ContainerLot  where ContainerLotStatus =  0 and ContainerId = '" + ContainerId[i] + "' ", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
           
            while (dr.Read())
            {
                LotId2[counter] = dr[0].ToString();
                counter++;

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

       //-------------------------------------------------------------
        // Setting ContainerLotStatus  = 1 from ContainerLot table

        
        try
        {
            SqlCommand cmd = new SqlCommand(" update ContainerLot set ContainerLotStatus = 1  where ContainerId = '" + ContainerId[i] + "'", con);
            con.Open();
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


        // Setting ContainerStatus  = 0 from Container table


        try
        {
            SqlCommand cmd = new SqlCommand(" update Container set ContainerStatus = 0  where ID = '" + ContainerId[i] + "'", con);
            con.Open();
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
        //------------------------------------------------------
        // Storing Booking Id from concenrned lots in Lot1 array into the array BookingId1


    counter = 0;
        for (int i = 0; i < LotId1.Length; i++)
    {
        try
        {


            SqlCommand cmd = new SqlCommand(" select BookingId from BookingLotLink  where LotId =  '" + LotId1[i] + "' ", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                BookingId1[counter] = dr[0].ToString();
                counter++;

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

        //-------------------------------------------------------------
        // Setting LotStatus  = 3 from Lot table

        
        try
        {
            SqlCommand cmd = new SqlCommand(" update Lot set LotStatus = 3 where ID = '" + LotId1[i] + "'", con);
            con.Open();
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


//---------------------------------------------------------
        // Storing BookingId in BookingId2 array


    counter = 0;
    for (int i = 0; i < LotId2.Length; i++)
    {
        try
        {


            SqlCommand cmd = new SqlCommand(" select BookingId from BookingLotLink  where LotId =  '" + LotId2[i] + "' ", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                BookingId2[counter] = dr[0].ToString();
                counter++;

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

        //-------------------------------------------------------------
        // Setting LotStatus  = 3 from Lot table

        
        try
        {
            SqlCommand cmd = new SqlCommand(" update Lot set LotStatus = 3 where ID = '" + LotId2[i] + "'", con);
            con.Open();
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



        //------------------------------------------------------
        // Setting Booking Status =3 in the Booking table from concern booking Id from BookingId1 array

    for (int i = 0; i < BookingId1.Length; i++)
    {

      
        try
        {
            SqlCommand cmd = new SqlCommand(" update Booking set Status = 3 where ID = '" + BookingId1[i] + "'", con);
            con.Open();
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


    //------------------------------------------------------
    // Setting Booking Status =3 in the Booking table from concern booking Id from BookingId1 array

    for (int i = 0; i < BookingId2.Length; i++)
    {

       
        try
        {
            SqlCommand cmd = new SqlCommand("update Booking set Status = 3 where ID = '" + BookingId2[i] + "'", con);
            con.Open();
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


    //lblMessage.Text = "UnLoading the Truck.. Please Wait...";
    
    
    
    
    }
}
