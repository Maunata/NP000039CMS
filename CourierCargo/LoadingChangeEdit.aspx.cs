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

public partial class LoadingChangeEdit : System.Web.UI.Page
{
    public string str = "data source=.;Database = CourierService;Integrated Security=true";
    public DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

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
    protected void Button2_Click(object sender, EventArgs e)
    {
        //lblMessage.Text = cboContainer.SelectedValue;
        
        SqlConnection con = new SqlConnection(str);
        try
        {
            if(RadioButton1.Checked==true)
        {
            SqlCommand cmd = new SqlCommand("select OfficeId,LotId,TruckId,ToTruckId from LoadingUnloadingTruck where Id = '" + cbolot.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                for (int i = 0; i < cboOfficeid.Items.Count; i++)
                {
                    if (cboOfficeid.Items[i].Value == dr[0].ToString())
                    {
                        cboOfficeid.SelectedItem.Text = cboOfficeid.Items[i].Text;

                    }
                }
                for (int j = 0; j < cboTruckNo.Items.Count; j++)
                {
                    if (cboTruckNo.Items[j].Value == dr[2].ToString())
                    {
                        cboTruckNo.SelectedItem.Text = cboTruckNo.Items[j].Text;

                    }
                }
                    for (int k = 0; k < cboToTruckNo.Items.Count; k++)
                {
                    if (cboToTruckNo.Items[k].Value == dr[3].ToString())
                    {
                        cboToTruckNo.SelectedItem.Text = cboToTruckNo.Items[k].Text;

                    }
                }

                txtLotNo.Text = dr[1].ToString();
                }


            }
            if (RadioButton2.Checked == true)
            {
                SqlCommand cmd = new SqlCommand("select OfficeId,LotId,ContainerID,ToContainerID from LoadingUnloadingContainer where Id = '" + cbolot.SelectedValue + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {

                    for (int i = 0; i < cboOfficeid.Items.Count; i++)
                    {
                        if (cboOfficeid.Items[i].Value == dr[0].ToString())
                        {
                            cboOfficeid.SelectedItem.Text = cboOfficeid.Items[i].Text;

                        }
                    }
                    for (int j = 0; j < cboFromContainer.Items.Count; j++)
                    {
                        if (cboFromContainer.Items[j].Value == dr[2].ToString())
                        {
                            cboFromContainer.SelectedItem.Text = cboFromContainer.Items[j].Text;

                        }
                    }
                    for (int k = 0; k < cboToContainer.Items.Count; k++)
                    {
                        if (cboToContainer.Items[k].Value == dr[3].ToString())
                        {
                            cboToContainer.SelectedItem.Text = cboToContainer.Items[k].Text;

                        }
                    }

                    txtLotNo.Text = dr[1].ToString();
                }


            }


        }  
        
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        btnupdate.Visible = true;
        btndelete.Visible = true;
    }
    //protected void btnupdate_Click(object sender, EventArgs e)
        //{
    //    SqlConnection con = new SqlConnection(str);
    //    try
    //    {
    //        SqlCommand cmd = new SqlCommand("update city set City=@City, StateId = @StateId,CountryId= @CountryId where ID='" + cboCityName.Text + "'", con);

    //        cmd.Parameters.Add(new SqlParameter("@City", SqlDbType.NVarChar, 50));
    //        cmd.Parameters.Add(new SqlParameter("@StateId", SqlDbType.BigInt));
    //        cmd.Parameters.Add(new SqlParameter("@CountryId", SqlDbType.BigInt));


    //        cmd.Parameters["@City"].Value = txtCity.Text;
    //        cmd.Parameters["@StateId"].Value = int.Parse(cboState.SelectedValue);
    //        cmd.Parameters["@CountryId"].Value = int.Parse(cboCountry.SelectedValue);


    //        con.Open();
    //        cmd.ExecuteNonQuery();
    //        //lblMessage.Text = "Update";
    //        Response.Redirect("City.aspx");
    //        // txtcountry.Text = "";


    //    }
    //    catch (Exception ex)
    //    {
    //        if (ex.Message == "Violation of PRIMARY KEY constraint 'PK_Container'. Cannot insert duplicate key in object 'Container'. The statement has been terminated")
    //        {
    //            //lblMessage.Text = "You can add duplicate value of Country";
    //        }
    //        else
    //        {
    //            //lblMessage.Text = ex.Message;
    //        }
       // }
        //finally
        //{
        //    con.Close();
        //}
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        try
        {


            if (RadioButton1.Checked == true)
            {


                SqlCommand cmd = new SqlCommand(" update LoadingUnloadingTruck set LotId=@LotId,TruckId=@TruckId,OfficeId=@OfficeId,ToTruckId=@ToTruckId where ID='" + cbolot.SelectedValue +"'", con);

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
                SqlCommand cmd1 = new SqlCommand("update LoadingUnloadingContainer set LotId=@LotId,OfficeID=@OfficeID,ContainerID=@ContainerID,ToContainerID=@ToContainerID WHERE ID='"+ cbolot.SelectedValue +"'", con);

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
                Response.Redirect("LoadingChange.aspx");
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
    protected void btndelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        try
        {


            if (RadioButton1.Checked == true)
            {


                SqlCommand cmd = new SqlCommand(" Delete from LoadingUnloadingTruck  where ID='" + cbolot.SelectedValue + "'", con);

             

                cmd.ExecuteNonQuery();
                //lblMessage.Text = "Saved";
                // Response.Redirect("State.aspx");
                txtLotNo.Text = "";
                txtLotNo.Focus();
            }
            if (RadioButton2.Checked == true)
            {
                SqlCommand cmd1 = new SqlCommand("delete from  LoadingUnloadingContainer WHERE ID='" + cbolot.SelectedValue + "'", con);

            
                cmd1.ExecuteNonQuery();
                //lblMessage.Text = "Saved";
                // Response.Redirect("State.aspx");
                txtLotNo.Text = "";
                txtLotNo.Focus();

            }
            Response.Redirect("LoadingChange.aspx");
            
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
    protected void cbolot_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtLotNo.Text = cbolot.SelectedItem.Text.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}
   //protected void btndelete_Click(object sender, EventArgs e)
   // {
    //    SqlConnection con = new SqlConnection(str);
    //    try
    //    {
    //        SqlCommand cmd = new SqlCommand("Delete from City where ID='" + cboCityName.SelectedValue.ToString() + "'", con);


    //        con.Open();

    //        cmd.ExecuteNonQuery();
    //        //lblMessage.Text = "Deleted !";
    //        txtCity.Text = "";


    //    }
    //    catch (Exception ex)
    //    {

    //        //lblMessage.Text = ex.Message;
    //    }
    //    finally
    //    {
    //        con.Close();
    //    }
    //    Response.Redirect("City.aspx");
    //}
   // }



