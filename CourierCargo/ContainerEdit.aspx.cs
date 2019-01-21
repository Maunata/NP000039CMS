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

public partial class ContainerEdit1 : System.Web.UI.Page
{
    public string str = "data source=.;Database = CourierService;Integrated Security=true";
    public DataSet ds = new DataSet();
    public DataSet dsContainer = new DataSet();
    public long ID = 1;
    public int checkflag = 0;


    public void fillList()
    {
        //listbox.Items.Clear();
        cboContainer.Items.Clear();
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT dbo.OfficeRegistration.Name, dbo.Container.Description, dbo.Container.ContainerNo FROM  dbo.Container INNER JOIN dbo.OfficeRegistration ON dbo.Container.OfOfficeId = dbo.OfficeRegistration.ID", con);

            da.Fill(dsContainer, "Container");
            foreach (DataRow dr in dsContainer.Tables["Container"].Rows)
                //     listbox.Items.Add(dr[2].ToString());

                cboContainer.Items.Add(dr[2].ToString());
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
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
            Response.Redirect("http://localhost:1088/CargoSevice/Container.aspx");
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

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        checkflag = 1;
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("update Container set OfOfficeId=@OfOfficeId,ContainerNo=@ContainerNo,Description=@Description where ID='" + cboContainer.Text + "'", con);

            cmd.Parameters.Add(new SqlParameter("@OfOfficeId", SqlDbType.BigInt));
            cmd.Parameters.Add(new SqlParameter("@ContainerNo", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@Description", SqlDbType.NVarChar, 50));
            cmd.Parameters["@OfOfficeId"].Value = int.Parse(cboOfOffice.SelectedValue);
            cmd.Parameters["@ContainerNo"].Value = txtContainerNo.Text;
            cmd.Parameters["@Description"].Value = txtCDescription.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Update";
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
    protected void cboOfOffice_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    protected void cboContainer_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void Page_Load(object sender, EventArgs e)
    {
        cboContainer.Focus();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //lblMessage.Text = cboContainer.SelectedValue;

        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("select ContainerNo,Description,OfOfficeId from Container where Id = '" + cboContainer.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                for (int i = 0; i < cboOfOffice.Items.Count; i++)
                {
                    if (cboOfOffice.Items[i].Value == dr[2].ToString())
                    {
                        cboOfOffice.SelectedItem.Text = cboOfOffice.Items[i].Text;

                    }
                }
                //  cboOfOffice.SelectedItem.Text = dr[2].ToString();
                txtCDescription.Text = dr[1].ToString();
                txtContainerNo.Text = dr[0].ToString();
            }



        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        btnUpdate.Visible = true;
        btndelete.Visible = true;
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        checkflag = 1;
        SqlConnection con = new SqlConnection(str);
        try
        {
            SqlCommand cmd = new SqlCommand("Delete from Container where ID='" + cboContainer.SelectedValue.ToString() + "'", con);


            con.Open();

            cmd.ExecuteNonQuery();
            lblMessage.Text = "Deleted !";
            txtCDescription.Text = "";
            txtContainerNo.Text = "";

        }
        catch (Exception ex)
        {

            lblMessage.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
        Response.Redirect("Container.aspx");
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Container.aspx");
    }
}
