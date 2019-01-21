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

public partial class ViewComplaintSearchbyUser : System.Web.UI.Page
{
    public string OfOffice;
    public int OfficeId;
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lblOffice.Text = Session["Office"].ToString();
            OfficeId = int.Parse(Session["OfficeId"].ToString());
            
            //Office = int.Parse(OfOffice);
        }
        catch(Exception ex)
         {
             Response.Write(ex.Message);
        }

       try
       {
           //SqlConnection con = new SqlConnection(str);
           //SqlDataAdapter da = new SqlDataAdapter("select ID,UserID from ManagerDetail where OfOffice ='" + OfficeId  + "' ",con);
           //DataSet ds = new DataSet();

           //da.Fill(ds,"UserId");
           //cboUserId.DataSource = ds.Tables["UserId"];
           //cboUserId.DataTextField = "UserId";
           //cboUserId.DataValueField  = "ID";
    
       }

       catch (Exception ex)
       {
           Response.Write(ex.Message);
       }

       finally
       { 
       
       }

    }
   
   
    protected void btnOffice_Click(object sender, EventArgs e)
    {
     
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //cblcom.Items.Clear();
        //SqlConnection con = new SqlConnection(str);
        //try
        //{
        
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select Id,complaint from ComplaintView where UserId ='" + cboUserId.SelectedValue + "'", con);
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
            
            if(cblcom.Items[i].Selected)
            { 
                SqlConnection con = new SqlConnection(str);
            try
            {

                SqlCommand cmd = new SqlCommand("delete from Complaint where Id= '" + cblcom.Items[i].Value + "'", con);

                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("ViewComplaintSearchbyUser.aspx");
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
