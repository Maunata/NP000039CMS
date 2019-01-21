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
public partial class Network : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI"; 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
   
    protected void rbYes_CheckedChanged(object sender, EventArgs e)
    {
      
    }
    protected void rbNo_CheckedChanged(object sender, EventArgs e)
    {
       
    }
    protected void cbYes_CheckedChanged(object sender, EventArgs e)
    {
       
       
    }


    protected void btnAdd_Click1(object sender, EventArgs e)
    {
 SqlConnection con = new SqlConnection(str);
 try
 {
     SqlCommand cmd = new SqlCommand("insert into Network(CompanyName,CompanyOffice,Website,CostumerCareNo,WhetherCollaborated,ExpDate,ExpMonth,ExpYear,Whether_handles)values(@CompanyName,@CompanyOffice,@Website,@CostumerCareNo,@WhetherCollaborated,@ExpDate,@ExpMonth,@ExpYear,@Whether_handles)", con);

     cmd.Parameters.Add(new SqlParameter("@CompanyName", SqlDbType.NVarChar, 50));
     cmd.Parameters.Add(new SqlParameter("@CompanyOffice", SqlDbType.NVarChar,50));
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
     if (rblCollabated.Items[0].Selected == true)
     {
         cmd.Parameters["@WhetherCollaborated"].Value = "Yes";
     }
     else
     {
         cmd.Parameters["@WhetherCollaborated"].Value = "No";

     }

     cmd.Parameters["@ExpDate"].Value = cboDateExp.Text;
     cmd.Parameters["@ExpMonth"].Value = cboExpMonth.Text;
     cmd.Parameters["@ExpYear"].Value = cboExpYear.Text;
     cmd.Parameters["@Whether_handles"].Value = cboHandles.Text;
     txtCompanyName.Text = "";
     txtCompanyOffice.Text = "";
     txtWebSite.Text = "";
     txtCNumber.Text = "";
     
     
     con.Open();
     cmd.ExecuteNonQuery();
    lblMessage.Text = "Saved";
      //Response.Redirect("State.aspx");
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

    }
}
