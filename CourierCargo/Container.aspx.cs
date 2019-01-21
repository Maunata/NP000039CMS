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

public partial class Container1 : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    public DataSet ds = new DataSet();
    public DataSet dsContainer = new DataSet();
    public long ID = 1;
    public int checkflag = 0;



    protected void btnSave_Click(object sender, EventArgs e)
    {

        lblMessage.Text = cboOfOffice.Text;



        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("insert into Container(OfOfficeId,ContainerNo,Description)values(@OfOfficeId,@ContainerNo,@Description)", con);

            cmd.Parameters.Add(new SqlParameter("@OfOfficeId", SqlDbType.BigInt));
            cmd.Parameters.Add(new SqlParameter("@ContainerNo", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Description", SqlDbType.NVarChar, 50));
            cmd.Parameters["@OfOfficeId"].Value = int.Parse(cboOfOffice.SelectedValue);
            cmd.Parameters["@ContainerNo"].Value = txtContainerNo.Text;
            cmd.Parameters["@Description"].Value = txtCDescription.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Saved";
            Response.Redirect("Container.aspx");
            txtCDescription.Text = "";
            txtContainerNo.Text = "";

        }
        catch (Exception ex)
        {
            if (ex.Message == "Violation of PRIMARY KEY constraint 'PK_Container'. Cannot insert duplicate key in object 'Container'. The statement has been terminated")
            {
                lblMessage.Text = "You can add duplicate value of Container No";
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

    public void fill()
    {
        cboOfOffice.Items.Clear();
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from OfficeRegistration", con);

            da.Fill(ds, "OfficeRegistration");
            foreach (DataRow dr in ds.Tables["OfficeRegistration"].Rows)
            {
                cboOfOffice.Items.Add(dr[1].ToString());
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }


    }


    protected void cboOfOffice_SelectedIndexChanged(object sender, EventArgs e)
    {

    }





    protected void cboContainer_SelectedIndexChanged(object sender, EventArgs e)
    {

    }




    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
    protected void btndelete_Click(object sender, EventArgs e)
    {

    }
}
