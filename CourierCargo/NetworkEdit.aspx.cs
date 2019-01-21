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
public partial class NetworkEdit : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("Update Network set CompanyName=@CompanyName,CompanyOffice=@CompanyOffice,Website=@Website,CostumerCareNo=@CostumerCareNo,WhetherCollaborated=@WhetherCollaborated,ExpDate=@ExpDate,ExpMonth=@ExpMonth,ExpYear=@ExpYear,Whether_handles=@Whether_handles where Id = '" + cboCompany.SelectedValue + "' ", con);

            cmd.Parameters.Add(new SqlParameter("@CompanyName", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@CompanyOffice", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Website", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@CostumerCareNo", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@WhetherCollaborated", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@ExpDate", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@ExpMonth", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@ExpYear", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Whether_handles", SqlDbType.NVarChar, 50));

            cmd.Parameters["@CompanyName"].Value = txtCompanyName.Text;
            cmd.Parameters["@CompanyOffice"].Value = txtCompanyOffice.Text;
            cmd.Parameters["@Website"].Value = txtWebSite.Text;
            cmd.Parameters["@CostumerCareNo"].Value = txtCNumber.Text;
            cmd.Parameters["@CostumerCareNo"].Value = txtCNumber.Text;
            cmd.Parameters["@WhetherCollaborated"].Value = cboCollaborated.Text;
            cmd.Parameters["@ExpDate"].Value = cboDateExp.Text;
            cmd.Parameters["@ExpMonth"].Value = cboExpMonth.Text;
            cmd.Parameters["@ExpYear"].Value = cboExpYear.Text;
            cmd.Parameters["@Whether_handles"].Value = cboHandles.Text;
            //txtCompanyName.Text = "";
           // txtCompanyOffice.Text = "";
           // txtWebSite.Text = "";
           //txtCNumber.Text = "";


            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Update";
            Response.Redirect("NetworkEdit.aspx");
            //txtstate.Text = "";
            // txtstate.Focus();

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
    protected void btnSearch_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("select CompanyName,CompanyOffice,Website,CostumerCareNo,Whether_handles from Network where Id = '" + cboCompany.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                for (int j = 0; j < cboCompany.Items.Count; j++)
                {
                    if (cboCompany.Items[j].Value == dr[0].ToString())
                    {
                        cboCompany.SelectedItem.Text = cboCompany.Items[j].Text;

                    }
                }
               

            

            txtCompanyName.Text = dr[0].ToString();
            txtCompanyOffice.Text = dr[1].ToString();
            txtWebSite.Text = dr[2].ToString();
            txtCNumber.Text = dr[3].ToString();
            cboHandles.Text = dr[4].ToString();
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
            SqlCommand cmd = new SqlCommand("Delete from Network where ID='" + cboCompany.SelectedValue.ToString() + "'", con);


            con.Open();
            cmd.Parameters.Add(new SqlParameter("@CompanyName", SqlDbType.NVarChar, 50));
            cmd.Parameters["@CompanyName"].Value = cboCompany.Text;
            
            
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Deleted !";
            //txtCDescription.Text = "";
            // txtContainerNo.Text = "";
            Response.Redirect("Network.aspx");


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
   
