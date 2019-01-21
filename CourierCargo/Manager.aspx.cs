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

public partial class Managr : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = true";
    public DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
       
        try
        {
            SqlCommand cmd = new SqlCommand("insert into UserLogin(UserId,Password)values(@Name,@Password)", con);

            cmd.Parameters.Add(new SqlParameter("@Name", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Password", SqlDbType.NVarChar, 50));
            cmd.Parameters["@Name"].Value = txtName.Text;
            cmd.Parameters["@Password"].Value = Password.Value.ToString();

            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "New User Created";
            txtName.Text = "";
            Password.Value = "";
           

  

            //Response.Redirect("ClientDetail.aspx");


        }
        catch (Exception ex)
        {


            lblMessage.Text = "Check the input values";
        }

        finally
        {
            con.Close();
        }


    }
}
