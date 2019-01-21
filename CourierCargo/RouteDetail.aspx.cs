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
public partial class RouteDetail : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnModify_Click(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("insert into Route_Details(RouteNo,BaseCity_Id,DestinationCity_Id,Origin,Destination,AverageSpeed,Distance)values(@RouteNo,@BaseCity_Id,@DestinationCity_Id,@Origin,@Destination,@AverageSpeed,@Distance)", con);

            cmd.Parameters.Add(new SqlParameter("@RouteNo", SqlDbType.BigInt));
            cmd.Parameters.Add(new SqlParameter("@BaseCity_Id", SqlDbType.BigInt));
            cmd.Parameters.Add(new SqlParameter("@DestinationCity_Id", SqlDbType.BigInt));
            cmd.Parameters.Add(new SqlParameter("@Origin", SqlDbType.NVarChar,50));
            cmd.Parameters.Add(new SqlParameter("@Destination", SqlDbType.NVarChar,50));
            cmd.Parameters.Add(new SqlParameter("@AverageSpeed", SqlDbType.Decimal));
            cmd.Parameters.Add(new SqlParameter("@Distance", SqlDbType.Decimal));
            cmd.Parameters["@RouteNo"].Value = int.Parse(txtRouteno.Text);
            cmd.Parameters["@BaseCity_Id"].Value = int.Parse(cboOrigin.SelectedValue);
            cmd.Parameters["@DestinationCity_Id"].Value = int.Parse(cboDestination.SelectedValue);
            cmd.Parameters["@Origin"].Value = cboOrigin.SelectedItem.Text;
            cmd.Parameters["@Destination"].Value = cboDestination.SelectedItem.Text;
            cmd.Parameters["@AverageSpeed"].Value = decimal.Parse( txtAverageSpeed.Text);
            cmd.Parameters["@Distance"].Value = decimal.Parse(txtDistance.Text);
            
            
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Saved";
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
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
}
