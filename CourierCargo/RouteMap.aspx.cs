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
public partial class RouteMap : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGo_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
        
            btnAdd.Visible = true;
            SqlCommand cmd = new SqlCommand("select Origin,Destination from Route_Details where Id='" + cboRouteNo.SelectedValue + "' ", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblOrigin.Text = dr[0].ToString();
                lblDestinaion.Text = dr[1].ToString();
            }
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message );
        }

        finally
        {
            con.Close();
        }


    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("insert into Route_Map(RouteMapNo,Origin,Destination,OriginalyVia,CurrentlyVia,Reason_RouteChange,RouteDetailId)values(@RouteMapNo,@Origin,@Destination,@OriginalyVia,@CurrentlyVia,@Reason_RouteChange,@RouteDetailId)", con);

            cmd.Parameters.Add(new SqlParameter("@RouteMapNo", SqlDbType.NVarChar, 50));
           
            cmd.Parameters.Add(new SqlParameter("@Origin", SqlDbType.NVarChar , 50));
            cmd.Parameters.Add(new SqlParameter("@Destination", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@OriginalyVia", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@CurrentlyVia", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Reason_RouteChange", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@RouteDetailId", SqlDbType.BigInt,8));
            

            cmd.Parameters["@RouteMapNo"].Value = txtRouteMapNo.Text;
            cmd.Parameters["@Origin"].Value = lblOrigin.Text;
            cmd.Parameters["@Destination"].Value = lblDestinaion.Text;
            cmd.Parameters["@OriginalyVia"].Value = txtOriginallyVia.Text;
            cmd.Parameters["@CurrentlyVia"].Value = txtCurrentlyVia.Text;
            cmd.Parameters["@Reason_RouteChange"].Value = txtReasonChange.Text;
            cmd.Parameters["@RouteDetailId"].Value = int.Parse(cboRouteNo.Text);
            
          
            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Saved";
            Response.Redirect("RouteMap.aspx");

            txtRouteMapNo.Text = "";
            lblOrigin.Text = "";
            lblDestinaion.Text = "";
            txtOriginallyVia.Text = "";
            txtCurrentlyVia.Text = "";
            txtReasonChange.Text = "";
        }
        catch (Exception ex)
        {
            if (ex.Message == "Violation of PRIMARY KEY constraint 'PK_Container'. Cannot insert duplicate key in object 'Container'. The statement has been terminated")
            {
                lblMessage.Text = "You can add duplicate value of Country";
            }
            else
            {
                lblMessage.Text = ex.Message;
            }
        }
        finally
        {
            con.Close();
        }




        btnAdd.Visible = false;
        lblDestinaion.Text = " ";
        lblOrigin.Text = " ";
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
}
