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

public partial class ViewSuggestionSearchbyUser1 : System.Web.UI.Page
{
    public string SOfOffice;
    public int SOfficeId;
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            lblOffice.Text = Session["SOffice"].ToString();
            SOfficeId = int.Parse(Session["SOfficeId"].ToString());

            //Office = int.Parse(OfOffice);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //cblcom.Items.Clear();
        //SqlConnection con = new SqlConnection(str);
        //try
        //{

        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select Id,Suggestions from SuggestionView where UserId ='" + cboUserId.SelectedValue + "'", con);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        //  cbocomplaint.SelectedItem.Text = dr[0].ToString();
        //        //cblcom.Text = dr[0].ToString();

        //        cblcom.Items.Add(dr[1].ToString());

        //        cblcom.ID = dr[0].ToString();


        //    }
        //}
        //catch (Exception ex)
        //{

        //    Response.Write(ex.Message);
        //}
        //// cblCompliant.Visible = true;

        //finally
        //{
        //    con.Close();
        //}
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < cblcom.Items.Count; i++)
        {
            if (cblcom.Items[i].Selected)
            {
                SqlConnection con = new SqlConnection(str);
                try
                {

                    SqlCommand cmd = new SqlCommand("delete from Suggestions where Id = '" + cblcom.Items[i].Value + "'", con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("ViewSuggestionSearchbyUser.aspx");
                }
                catch (Exception ex)
                {

                    Response.Write(ex.Message);
                }
                // cblCompliant.Visible = true;

                finally
                {
                    con.Close();
                }
            }

        }
    
    }
}
