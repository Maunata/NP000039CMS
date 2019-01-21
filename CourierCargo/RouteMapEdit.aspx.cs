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

public partial class RouteMapEdit : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select  RouteMapNo,OriginalyVia,CurrentlyVia,Reason_RouteChange,RouteDetailId,Origin,Destination from Route_Map where Id = '" + cboRouteMapNo.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {


                txtRouteMapNo.Text = dr[0].ToString();
                txtOriginallyVia.Text = dr[1].ToString();
                txtCurrentlyVia.Text = dr[2].ToString();
                txtReasonChange.Text = dr[3].ToString();
                for (int i = 0; i < cboRouteNo.Items.Count; i++)
                {
                    if (cboRouteNo.Items[i].Value == dr[4].ToString())
                    {
                        cboRouteNo.SelectedItem.Text = cboRouteNo.Items[i].Text;

                    }
                }
                //  cboOfOffice.SelectedItem.Text = dr[2].ToString();
                lblOrigin.Text = dr[5].ToString();
                lblDestinaion.Text = dr[6].ToString();
               
                
              
                
            }



        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
        }
        btnGo.Visible = true;
        btnUpdate.Visible = false;
        btndelete.Visible = false;
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        //checkflag = 1;
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("Delete from Route_Map where ID='" + cboRouteMapNo.SelectedValue.ToString() + "'", con);


            con.Open();

            cmd.ExecuteNonQuery();
            lblMessage.Text = "Deleted !";
            lblOrigin.Text = "";
            lblDestinaion.Text = "";
            txtOriginallyVia.Text = "";
            txtCurrentlyVia.Text = "";
            txtReasonChange.Text = "";

        }
        catch (Exception ex)
        {

            lblMessage.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
        
        btndelete.Visible = false;
        btnUpdate.Visible  = false;
    }
    protected void btnGo_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {

           
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
            Response.Write(ex.Message);
        }

        finally
        {
            con.Close();
        }

        btndelete.Visible = true;
        btnUpdate.Visible = true;
        
        
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        //SqlDataReader dr = cmd.ExecuteReader();
        try
        {
            SqlCommand cmd = new SqlCommand("update Route_map set RouteMapNo=@RouteMapNo,Origin=@Origin,Destination=@Destination,OriginalyVia=@OriginalyVia,CurrentlyVia=@CurrentlyVia,Reason_RouteChange=@Reason_RouteChange,RouteDetailId=@RouteDetailId where Id= ' " + cboRouteMapNo.SelectedValue + " ' ", con);

            cmd.Parameters.Add(new SqlParameter("@RouteMapNo", SqlDbType.NVarChar, 50));

            cmd.Parameters.Add(new SqlParameter("@Origin", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Destination", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@OriginalyVia", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@CurrentlyVia", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Reason_RouteChange", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@RouteDetailId", SqlDbType.BigInt, 8));


            cmd.Parameters["@RouteMapNo"].Value = txtRouteMapNo.Text;
            cmd.Parameters["@Origin"].Value = lblOrigin.Text;
            cmd.Parameters["@Destination"].Value = lblDestinaion.Text;
            cmd.Parameters["@OriginalyVia"].Value = txtOriginallyVia.Text;
            cmd.Parameters["@CurrentlyVia"].Value = txtCurrentlyVia.Text;
            cmd.Parameters["@Reason_RouteChange"].Value = txtReasonChange.Text;
            cmd.Parameters["@RouteDetailId"].Value = int.Parse(cboRouteNo.Text);


            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Updated";
            Response.Redirect("RouteMapEdit.aspx");

            //txtRouteMapNo.Text = "";
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




        btnUpdate.Visible = false;
        lblDestinaion.Text = " ";
        lblOrigin.Text = " ";
    }
}
