using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Xml;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security=true";
    public string User1 = "Vishal";
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
    SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("select * from UserLogin", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            int flag = 0;
            while (dr.Read())
            {
                if (txtuserid.Text == dr[1].ToString() && txtpassword.Value == dr[2].ToString() )
                {
                    FormsAuthentication.RedirectFromLoginPage(dr[1].ToString(), false);
                    break;
                    //Session.Timeout = 30;
                    //Session["Login"] = txtuserid.Text ;
                    //flag = 1;
                    //Response.Redirect("ClientArea.aspx");
                }
                
                else if (flag == 0)
                {
                    lblMessage.Text = "You are Not a authorized user";
                }

            //}
            //if (dr.Read())
            //{
            //    if (txtuserid.Text == dr[1].ToString() && txtpassword.Value == dr[2].ToString())
            //    {
            //        FormsAuthentication.RedirectFromLoginPage(dr[1].ToString(), false);
            //    }
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text  = ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
  
    
}

