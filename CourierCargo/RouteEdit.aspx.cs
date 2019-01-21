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
public partial class RouteEdit : System.Web.UI.Page
{

    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI"; 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("update Route_Details set RouteNo=@RouteNo,BaseCity_Id=@BaseCity_Id,DestinationCity_Id=@DestinationCity_Id,Origin=@Origin,Destination = @Destination,AverageSpeed=@AverageSpeed,Distance=@Distance where id='"+ CboRouteNo.SelectedValue +"'", con);

            cmd.Parameters.Add(new SqlParameter("@RouteNo", SqlDbType.BigInt,8));
            cmd.Parameters.Add(new SqlParameter("@BaseCity_Id", SqlDbType.BigInt,8));
            cmd.Parameters.Add(new SqlParameter("@DestinationCity_Id", SqlDbType.BigInt,8));
            cmd.Parameters.Add(new SqlParameter("@Origin", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Destination", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@AverageSpeed", SqlDbType.Decimal,9));
            cmd.Parameters.Add(new SqlParameter("@Distance", SqlDbType.Decimal,9));
            cmd.Parameters["@RouteNo"].Value = int.Parse(txtRouteNo.Text);
            cmd.Parameters["@BaseCity_Id"].Value = int.Parse(cboBaseCity.SelectedValue);
            cmd.Parameters["@DestinationCity_Id"].Value = int.Parse(cboDestinationcity.SelectedValue);
            cmd.Parameters["@Origin"].Value = cboBaseCity.SelectedItem.Text;
            cmd.Parameters["@Destination"].Value = cboDestinationcity.SelectedItem.Text;
            cmd.Parameters["@AverageSpeed"].Value = txtAveragespeed.Text;
            cmd.Parameters["@Distance"].Value = txtDistance.Text;
            
            
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Update";
            Response.Redirect("RouteDetail.aspx");
            

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
    protected void CboRouteNo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //lblMessage.Text = cboContainer.SelectedValue;

        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("select RouteNo,BaseCity_Id,DestinationCity_Id,AverageSpeed,Distance from Route_Details where Id = '" + CboRouteNo.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                for (int i = 0; i < CboRouteNo.Items.Count; i++)
                {
                    if (CboRouteNo.Items[i].Value == dr[0].ToString())
                    {
                        CboRouteNo.SelectedItem.Text = CboRouteNo.Items[i].Text;

                    }
                }
                //  cboOfOffice.SelectedItem.Text = dr[2].ToString();
                cboBaseCity.Text = dr[1].ToString();
                cboDestinationcity.Text = dr[2].ToString();
                
                txtRouteNo.Text = dr[0].ToString();
                txtAveragespeed.Text = dr[3].ToString();
                txtDistance.Text = dr[4].ToString();
            
            
            }



        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
  
       try
       { 
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("Delete  From Route_Details where Id= '"+CboRouteNo.SelectedValue+"'",con);
        con.Open();
           cmd.Parameters.Add(new SqlParameter("@RouteNo", SqlDbType.BigInt,8));
            
            cmd.Parameters["@RouteNo"].Value = int.Parse(txtRouteNo.Text);
            
            
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Delete";
            Response.Redirect("RouteDetailEdit.aspx");
            

        }
        catch (Exception ex)
        {
           
           
                Response.Write(ex.Message);
            }
        
        
    }
}

