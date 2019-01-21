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
public partial class LoadingChange : System.Web.UI.Page
{
    public string str = "data source=.;Database = CourierService;Integrated Security=true";
    public DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //lblMessage.Text = txtCountry.Text;


        SqlConnection con = new SqlConnection(str);
        con.Open();
        try
        {


            if (RadioButton1.Checked == true)
            {
                
             
                SqlCommand cmd = new SqlCommand("insert into LoadingUnloadingTruck(LotId,TruckId,OfficeId,ToTruckId)values(@LotId,@TruckId,@OfficeId,@ToTruckId)", con);

                cmd.Parameters.Add(new SqlParameter("@LotId", SqlDbType.BigInt));
                cmd.Parameters.Add(new SqlParameter("@TruckId", SqlDbType.BigInt));
                cmd.Parameters.Add(new SqlParameter("@OfficeId", SqlDbType.BigInt));
                cmd.Parameters.Add(new SqlParameter("@ToTruckId", SqlDbType.BigInt));


                cmd.Parameters["@LotId"].Value = txtLotNo.Text;
                cmd.Parameters["@TruckId"].Value = int.Parse(cboTruckNo.SelectedValue);
                cmd.Parameters["@OfficeId"].Value = int.Parse(cboOfficeid.SelectedValue);
                cmd.Parameters["@ToTruckId"].Value = int.Parse(cboToTruckNo.SelectedValue);



                cmd.ExecuteNonQuery();
                //lblMessage.Text = "Saved";
                // Response.Redirect("State.aspx");
                txtLotNo.Text = "";
                txtLotNo.Focus();
            }
         if (RadioButton2.Checked == true)
            {
                SqlCommand cmd1 = new SqlCommand("insert into LoadingUnloadingContainer(LotId,OfficeID,ContainerID,ToContainerID)values(@LotId,@OfficeID,@ContainerID,@ToContainerID)", con);

                cmd1.Parameters.Add(new SqlParameter("@OfficeID", SqlDbType.BigInt));
                cmd1.Parameters.Add(new SqlParameter("@LotId", SqlDbType.BigInt));
                cmd1.Parameters.Add(new SqlParameter("@ContainerID", SqlDbType.BigInt));
                cmd1.Parameters.Add(new SqlParameter("@ToContainerID", SqlDbType.BigInt));


                cmd1.Parameters["@LotId"].Value = txtLotNo.Text;
                cmd1.Parameters["@OfficeID"].Value = int.Parse(cboOfficeid.SelectedValue);
                cmd1.Parameters["@ContainerID"].Value = int.Parse(cboFromContainer.SelectedValue);
                cmd1.Parameters["@ToContainerID"].Value = int.Parse(cboToContainer.SelectedValue);
                


              
                cmd1.ExecuteNonQuery();
                //lblMessage.Text = "Saved";
                // Response.Redirect("State.aspx");
                txtLotNo.Text = "";
                txtLotNo.Focus();
                
            }
        }
        catch (Exception ex)
        {
            if (ex.Message == "Violation of PRIMARY KEY constraint 'PK_Container'. Cannot insert duplicate key in object 'Container'. The statement has been terminated")
            {
                //lblMessage.Text = "You can add duplicate value of Country";
            }
            else
            {
                //lblMessage.Text = ex.Message;
            }
        }
        finally
        {
            con.Close();
        }
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        cboToTruckNo.Visible = true;
        cboTruckNo.Visible = true;
        cboToContainer.Visible = false;
        cboFromContainer.Visible = false;
        RadioButton2.Checked = false;

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        cboToTruckNo.Visible = false;
        cboTruckNo.Visible = false;
        cboToContainer.Visible = true;
        cboFromContainer.Visible = true;
        RadioButton1.Checked = false;

    }
    protected void cboLotNO_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtLotNo.Text = cboLotNO.SelectedItem.Text.ToString();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}

