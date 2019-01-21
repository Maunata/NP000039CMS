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

public partial class TruckEdit : System.Web.UI.Page
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
            cmd.Parameters["@AtOfficeId"].Value = int.Parse(cboOfficeAt.SelectedValue);
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
                Response.Write(ex.Message);
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
            SqlCommand cmd = new SqlCommand("update Truck set OfOfficeId=@OfOfficeId,description =@description,TruckNo=@TruckNo,Driver=@Driver,AtOfficeId=@AtOfficeId,Reason_Of_Stay=@Reason_Of_Stay,Moved_Date=@Moved_Date,Moved_Month=@Moved_Month,Moved_Year=@Moved_Year where Id = '"+ cboTruckNo.SelectedValue   +"'  ", con);

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
            //cmd.Parameters["@AtOfficeId"].Value = 
            cmd.Parameters["@AtOfficeId"].Value = int.Parse(cboOfficeAt.SelectedValue);
            cmd.Parameters["@Reason_Of_Stay"].Value = txtReasonOfStay.Text.ToString();
            cmd.Parameters["@Moved_Date"].Value = cboMoveDate.SelectedItem.Text;
            cmd.Parameters["@Moved_Month"].Value = cboMoveMonth.SelectedItem.Text;
            cmd.Parameters["@Moved_Year"].Value = cboMoveYear.SelectedItem.Text;


            cmd.ExecuteNonQuery();
            lblMessage.Text = "Update";
            Response.Redirect("Truck.aspx");
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
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("select OfOfficeId,description,TruckNo,Driver,AtOfficeId,Reason_Of_Stay,Moved_Date,Moved_Month,Moved_Year from Truck where Id = '" + cboTruckNo.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                for (int j = 0; j < cboOfOffice.Items.Count; j++)
                {
                    if (cboOfOffice.Items[j].Value == dr[0].ToString())
                    {
                        cboOfOffice.SelectedItem.Text = cboOfOffice.Items[j].Text;

                    }
                }

                for (int i = 0; i < cboOfficeAt.Items.Count; i++)
                {
                    if (cboOfficeAt.Items[i].Value == dr[4].ToString())
                    {
                        cboOfficeAt.SelectedItem.Text = cboOfficeAt.Items[i].Text;

                    }
                }

                //  cboOfOffice.SelectedItem.Text = dr[2].ToString();
                txtDescription.Text = dr[1].ToString();
                txtTruckNo.Text = dr[2].ToString();
                txtdrivername.Text = dr[3].ToString();
                txtReasonOfStay.Text = dr[5].ToString();
                cboMoveDate.SelectedValue = dr[6].ToString();
                cboMoveMonth.SelectedValue = dr[7].ToString();
                cboMoveYear.SelectedValue = dr[8].ToString();

            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        btnUpdate.Visible = true;
        btnDelete.Visible = true;

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("Delete from Truck where ID='" + cboTruckNo.SelectedValue.ToString() + "'", con);


            con.Open();

            cmd.ExecuteNonQuery();
            lblMessage.Text = "Deleted !";
            //txtCDescription.Text = "";
           // txtContainerNo.Text = "";
            Response.Redirect("Truck.aspx");
       

        }
        catch (Exception ex)
        {

            lblMessage.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
       
    }
}


