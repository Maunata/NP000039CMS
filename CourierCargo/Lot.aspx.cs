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

public partial class Lot : System.Web.UI.Page

   
{

    public string str = "Server = (local); Database = CourierService;Integrated Security = SSPI";
    public long LotId;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        
        int checkflag = 0;

        for (int i = 0; i < CLBBooking.Items.Count; i++)
        {
            if (CLBBooking.Items[i].Selected == true)
            {
                checkflag = 1;
            }

        }

        if (txtLotNo.Text == "")
        {
            lblMessage.Text= "Please enter the Lot No";

        }
        else if (checkflag == 0)
        {
            lblMessage.Text = "Please Check at least one item from the list";

        }
        else
        {










            SqlConnection con = new SqlConnection(str);
            try
            {
                SqlCommand cmd = new SqlCommand("insLot", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@OfficeId", SqlDbType.BigInt));
                cmd.Parameters.Add(new SqlParameter("@LotNo", SqlDbType.NVarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@LotId", SqlDbType.BigInt, 0, ParameterDirection.Output, false, 0, 0, "LotId", DataRowVersion.Default, null));

                cmd.Parameters["@OfficeId"].Value = int.Parse(cboOffice.SelectedValue);
                cmd.Parameters["@LotNo"].Value = txtLotNo.Text;

                con.Open();
                cmd.ExecuteNonQuery();
                LotId = (long)cmd.Parameters["@LotId"].Value;

                // lblMessage.Text = "LOT ID = " + LotId; ;
                //Response.Redirect("Lot.aspx");
                txtLotNo.Text = "";


            }
            catch (Exception ex)
            {
                if (ex.Message == "Violation of PRIMARY KEY constraint 'PK_Container'. Cannot insert duplicate key in object 'Container'. The statement has been terminated")
                {
                    lblMessage.Text = "You can add duplicate value of Container No";
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

            // Insert values in the LotBooking Table


            // start the loop
            for (int i = 0; i < CLBBooking.Items.Count; i++)
            {
                if (CLBBooking.Items[i].Selected)
                {
                    //SqlConnection con = new SqlConnection(str);
                    try
                    {
                        SqlCommand cmd = new SqlCommand("insert into BookingLotLink(BookingId,LotId,OfficeId) values(@BookingId,@LotId,@OfficeId)", con);
                        SqlCommand cmd1 = new SqlCommand("update Booking set status = 1 where Id = @BookingId", con);
                        cmd.Parameters.Add(new SqlParameter("@OfficeId", SqlDbType.BigInt));
                        cmd.Parameters.Add(new SqlParameter("@LotId", SqlDbType.BigInt));
                        cmd.Parameters.Add(new SqlParameter("@BookingId", SqlDbType.BigInt));
                        cmd1.Parameters.Add(new SqlParameter("@BookingId", SqlDbType.BigInt));


                        cmd.Parameters["@OfficeId"].Value = int.Parse(cboOffice.SelectedValue);
                        cmd.Parameters["@LotId"].Value = LotId;
                        cmd.Parameters["@BookingId"].Value = int.Parse(CLBBooking.Items[i].Text);
                        cmd1.Parameters["@BookingId"].Value = int.Parse(CLBBooking.Items[i].Text);

                        con.Open();
                        cmd.ExecuteNonQuery();

                        cmd1.ExecuteNonQuery();

                        // lblMessage.Text = "LOT ID = " + LotId; ;
                        //Response.Redirect("Lot.aspx");
                        txtLotNo.Text = "";


                    }
                    catch (Exception ex)
                    {
                        if (ex.Message == "Violation of PRIMARY KEY constraint 'PK_Container'. Cannot insert duplicate key in object 'Container'. The statement has been terminated")
                        {
                            lblMessage.Text = "You can add duplicate value of Container No";
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
                }
            }
            // end loop
            lblMessage.Text = "Lot is added";
            Response.Redirect("Lot.aspx");

        }
    }

}
