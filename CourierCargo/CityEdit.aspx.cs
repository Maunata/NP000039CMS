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

public partial class CityEdit1 : System.Web.UI.Page
{
    public string str = "data source=.;Database = CourierService;Integrated Security=true";
    public DataSet ds = new DataSet();


    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //lblMessage.Text = cboContainer.SelectedValue;

        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("select City,StateId,CountryId from City where Id = '" + cboCityName.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                for (int i = 0; i < cboState.Items.Count; i++)
                {
                    if (cboState.Items[i].Value == dr[1].ToString())
                    {
                        cboState.SelectedItem.Text = cboState.Items[i].Text;

                    }
                }
                for (int j = 0; j < cboCountry.Items.Count; j++)
                {
                    if (cboCountry.Items[j].Value == dr[2].ToString())
                    {
                        cboCountry.SelectedItem.Text = cboCountry.Items[j].Text;

                    }
                }

                txtCity.Text = cboCityName.SelectedItem.ToString();




            }



        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        btnUpdate.Visible = true;
        btnDelete.Visible = true;
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("update city set City=@City, StateId = @StateId,CountryId= @CountryId where ID='" + cboCityName.Text + "'", con);

            cmd.Parameters.Add(new SqlParameter("@City", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@StateId", SqlDbType.BigInt));
            cmd.Parameters.Add(new SqlParameter("@CountryId", SqlDbType.BigInt));


            cmd.Parameters["@City"].Value = txtCity.Text;
            cmd.Parameters["@StateId"].Value = int.Parse(cboState.SelectedValue);
            cmd.Parameters["@CountryId"].Value = int.Parse(cboCountry.SelectedValue);


            con.Open();
            cmd.ExecuteNonQuery();
            //lblMessage.Text = "Update";
            Response.Redirect("City.aspx");
            // txtcountry.Text = "";


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
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("Delete from City where ID='" + cboCityName.SelectedValue.ToString() + "'", con);


            con.Open();

            cmd.ExecuteNonQuery();
            //lblMessage.Text = "Deleted !";
            txtCity.Text = "";


        }
        catch (Exception ex)
        {

            //lblMessage.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
        Response.Redirect("City.aspx");
    }
  
}
