using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class CountryEdi : System.Web.UI.Page
{
    public string str = "data source=.;Database = CourierService;Integrated Security=true";
    public DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        btnDelete.Visible = false;
        btnEdit.Visible = false;
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("select Country from Country where Id = '" + dboCountry.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                for (int i = 0; i < dboCountry.Items.Count; i++)
                {
                    if (dboCountry.Items[i].Value == dr[0].ToString())
                    {
                        dboCountry.SelectedItem.Text = dboCountry.Items[i].Text;

                    }
                }
                txtcountry.Text = dboCountry.SelectedItem.ToString();



            }



        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        btnEdit.Visible = true;
        btnDelete.Visible = true;
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("update Country set Country=@Country where ID='" + dboCountry.Text + "'", con);

            cmd.Parameters.Add(new SqlParameter("@Country", SqlDbType.NVarChar, 50));

            cmd.Parameters["@Country"].Value = txtcountry.Text;

            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Update";
            Response.Redirect("Country.aspx");
            txtcountry.Text = "";


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
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("Delete from Country where ID='" + dboCountry.SelectedValue.ToString() + "'", con);


            con.Open();

            cmd.ExecuteNonQuery();
            lblMessage.Text = "Deleted !";
            txtcountry.Text = "";
            

        }
        catch (Exception ex)
        {

            lblMessage.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
        Response.Redirect("Country.aspx");
    }
}
