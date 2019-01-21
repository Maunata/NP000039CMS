using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class StateEdit1 : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    public DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //lblMessage.Text = cboContainer.SelectedValue;

        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("update State set CountryId=@CountryId,State=@State where ID='" + CboStateName.SelectedValue + "'", con);

            cmd.Parameters.Add(new SqlParameter("@State", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@CountryId", SqlDbType.BigInt));

            cmd.Parameters["@State"].Value = txtState.Text;
            cmd.Parameters["@CountryId"].Value = int.Parse(cbocountry.SelectedValue);
            con.Open();
            cmd.ExecuteNonQuery();
            //lblMessage.Text = "Update";
            Response.Redirect("State.aspx");
            txtState.Text = "";


        }
        catch (Exception ex)
        {
            if (ex.Message == "Violation of PRIMARY KEY constraint 'PK_Container'. Cannot insert duplicate key in object 'Container'. The statement has been terminated")
            {
                // lblMessage.Text = "You can add duplicate value of Country";
            }
            else
            {
                // lblMessage.Text = ex.Message;
            }
        }
        finally
        {
            con.Close();
        }   //btnDelete.Visible = true;
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("Delete from State where ID='" + CboStateName.SelectedValue.ToString() + "'", con);


            con.Open();

            cmd.ExecuteNonQuery();

            txtState.Text = "";


        }
        catch (Exception ex)
        {


        }
        finally
        {
            con.Close();
        }
        Response.Redirect("State.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //lblMessage.Text = cboContainer.SelectedValue;

        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("select CountryId,State from State where Id = '" + CboStateName.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                for (int i = 0; i < cbocountry.Items.Count; i++)
                {
                    if (cbocountry.Items[i].Value == dr["CountryId"].ToString())
                    {
                        cbocountry.SelectedItem.Text = cbocountry.Items[i].Text;

                    }
                }
                txtState.Text = dr["State"].ToString();



            }



        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        btnUpdate.Visible = true;
        btnDelete.Visible = true;
    }
    protected void btnSearch_Click1(object sender, EventArgs e)
    {
        btnSearch_Click(null, null);
    }
}
