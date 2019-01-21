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

public partial class ManagerEdit : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("update ManagerDetail set Name=@Name,OfOffice=@OfOffice,UserId=@UserId,Password=@Password where ID = '"+ cboManager.SelectedValue +"'", con);

            cmd.Parameters.Add(new SqlParameter("@Name", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@OfOffice", SqlDbType.BigInt, 8));
            cmd.Parameters.Add(new SqlParameter("@UserId", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Password", SqlDbType.NVarChar, 50));
            cmd.Parameters["@Name"].Value = txtName.Text;
            cmd.Parameters["@OfOffice"].Value = cboofoffice.SelectedValue;
            cmd.Parameters["@UserId"].Value = txtUserId.Text;
            cmd.Parameters["@Password"].Value = Password.Text;
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Manager Update";




            Response.Redirect("ManagerDetail.aspx");


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
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("Delete from ManagerDetail where ID = '"+ cboManager.SelectedValue + "' ", con);

         
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Manager Deleted";

            Response.Redirect("ManagerDetail.aspx");


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
protected void  btnSearch_Click(object sender, EventArgs e)
{
   SqlConnection con = new SqlConnection(str);
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("select * from  ManagerDetail where ID = '"+ cboManager.SelectedValue +"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
            txtName.Text = dr[1].ToString();
                txtUserId.Text = dr[3].ToString();
                for (int i = 0; i < cboofoffice.Items.Count; i++)
                {
                    if (cboofoffice.Items[i].Value == dr[2].ToString())
                    {
                        cboofoffice.SelectedItem.Text = cboofoffice.Items[i].Text;

                    }
                }
                
              
                Password.Text = dr[4].ToString();
             

            }
         
      
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
