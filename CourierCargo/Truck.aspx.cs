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

public partial class Truck : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {


       string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";

        SqlConnection con = new SqlConnection(str);
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("insert into Truck(OfOfficeId,description,TruckNo,Driver,AtOfficeId,Reason_Of_Stay,Moved_Date,Moved_Month,Moved_Year)values(@OfOfficeId,@Description,@TruckNo,@Driver,@AtOfficeId,@Reason_Of_Stay,@Moved_Date,@Moved_Month,@Moved_Year)", con);

            cmd.Parameters.Add(new SqlParameter("@OfOfficeId", SqlDbType.BigInt,8));
            cmd.Parameters.Add(new SqlParameter("@Description", SqlDbType.VarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@TruckNo", SqlDbType.VarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Driver", SqlDbType.VarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@AtOfficeId", SqlDbType.BigInt,8));
            cmd.Parameters.Add(new SqlParameter("@Reason_Of_Stay", SqlDbType.VarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Moved_Date", SqlDbType.VarChar,50));
            cmd.Parameters.Add(new SqlParameter("@Moved_Month", SqlDbType.VarChar,50));
            cmd.Parameters.Add(new SqlParameter("@Moved_Year", SqlDbType.VarChar,50));

            cmd.Parameters["@OfOfficeId"].Value = int.Parse(cboOfOffice.SelectedValue);
            cmd.Parameters["@Description"].Value = txtDescription.Text.ToString();
            cmd.Parameters["@TruckNo"].Value = txtTruckNo.Text.ToString();
            cmd.Parameters["@Driver"].Value = txtdrivername.Text.ToString();
            cmd.Parameters["@AtOfficeId"].Value =int.Parse(cboOfficeAt.SelectedValue);
            cmd.Parameters["@Reason_Of_Stay"].Value = txtReasonOfStay.Text.ToString();
            cmd.Parameters["@Moved_Date"].Value = cboMoveDate.SelectedItem.Text;
            cmd.Parameters["@Moved_Month"].Value = cboMoveMonth.SelectedItem.Text;
            cmd.Parameters["@Moved_Year"].Value = cboMoveYear.SelectedItem.Text;
            
            
            cmd.ExecuteNonQuery();
       lblMessage.Text = "Saved";
       Response.Redirect("http://localhost:1088/CargoSevice/Truck.aspx");
          //  txtCDescription.Text = "";
          //  cTruckNo.Text = "";

        }
        catch (Exception ex)
        {
            if (ex.Message == "Violation of PRIMARY KEY constraint 'PK_Container'. Cannot insert duplicate key in object 'Truck No'. The statement has been terminated")
            {
               // lblMessage.Text = "You can add duplicate value of Truck No";
            }
            else
            {
                Response.Write( ex.Message);
            }
        }
            finally
        {
        con.Close();
        
        }
        }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";

        SqlConnection con = new SqlConnection(str);
        con.Open();
        try
        {
        //    SqlCommand cmd = new SqlCommand("update set Truck(OfOfficeId,description,TruckNo,Driver,AtOfficeId,Reason_Of_Stay,Moved_Date,Moved_Month,Moved_Year)values(@OfOfficeId,@Description,@TruckNo,@Driver,@AtOfficeId,@Reason_Of_Stay,@Moved_Date,@Moved_Month,@Moved_Year)", con);
            SqlCommand cmd = new SqlCommand("update Truck set description =@description,TruckNo=@TruckNo,Driver=@Driver,AtOfficeId=@AtOfficeId,Reason_Of_Stay=@Reason_Of_Stay,Moved_Date=@Moved_Date,Moved_Month=@Moved_Month,Moved_Year=@Moved_Year where TruckNo=@TruckNo)", con);

            cmd.Parameters.Add(new SqlParameter("@OfOfficeId", SqlDbType.BigInt, 8));
            cmd.Parameters.Add(new SqlParameter("@Description", SqlDbType.VarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@TruckNo", SqlDbType.VarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Driver", SqlDbType.VarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@AtOfficeId", SqlDbType.BigInt, 8));
            cmd.Parameters.Add(new SqlParameter("@Reason_Of_Stay", SqlDbType.VarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Moved_Date", SqlDbType.VarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Moved_Month", SqlDbType.VarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Moved_Year", SqlDbType.VarChar, 50));

            cmd.Parameters["@OfOfficeId"].Value = int.Parse(cboOfOffice.SelectedValue);
            cmd.Parameters["@Description"].Value = txtDescription.Text.ToString();
            cmd.Parameters["@TruckNo"].Value = txtTruckNo.Text.ToString();
            cmd.Parameters["@Driver"].Value = txtdrivername.Text.ToString();
            cmd.Parameters["@AtOfficeId"].Value = DBNull.Value  ;
            //cmd.Parameters["@AtOfficeId"].Value = int.Parse(cboOfficeAt.SelectedValue);
            cmd.Parameters["@Reason_Of_Stay"].Value = txtReasonOfStay.Text.ToString();
            cmd.Parameters["@Moved_Date"].Value = cboMoveDate.SelectedItem.Text;
            cmd.Parameters["@Moved_Month"].Value = cboMoveMonth.SelectedItem.Text;
            cmd.Parameters["@Moved_Year"].Value = cboMoveYear.SelectedItem.Text;


            cmd.ExecuteNonQuery();
               lblMessage.Text = "Saved";
               Response.Redirect("http://localhost:1088/CargoSevice/Truck.aspx");
            //  txtCDescription.Text = "";
            //  cTruckNo.Text = "";

        }
        catch (Exception ex)
        {
            //if (ex.Message == "Violation of PRIMARY KEY constraint 'PK_Container'. Cannot insert duplicate key in object 'Truck No'. The statement has been terminated")
            //{
            //    // lblMessage.Text = "You can add duplicate value of Truck No";
            //}
            //else
            //{
               Response.Write(ex.Message);
            //}
        }
        finally
        {
            con.Close();

        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(str);
        //try
        //{
        //    SqlCommand cmd = new SqlCommand("select ContainerNo,Description,Name from ContainerView where Id = '" + /*cboContainer.SelectedValue */+ "'", con);
        //    con.Open();
        //    SqlDataReader dr = cmd.ExecuteReader();

        //    if (dr.Read())
        //    {
        //        cboOfOffice.SelectedItem.Text = dr[2].ToString();

        //       // txtCDescription.Text = dr[1].ToString();
        //        //txtContainerNo.Text = dr[0].ToString();
        //    }



        //}
        //catch (Exception ex)
        //{
        //    Response.Write(ex.Message);
        //}
    }

    protected void cboMoveMonth_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
