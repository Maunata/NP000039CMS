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

public partial class ContainerLoad1 : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLoad_Click(object sender, EventArgs e)
    {
        int checkflag = 0;

        for (int i = 0; i < clbLotNo.Items.Count; i++)
        {
            if (clbLotNo.Items[i].Selected == true)
            {
                checkflag = 1;
            }

        }

        //if (lblOrigin.Text == " ")
        //{
        //    Label1.Text = "Please Select the Route Map ";

        //}
        if (checkflag == 0)
        {
            Label1.Text = "Please Check at least one item from the list";

        }
        else
        {



            SqlConnection con = new SqlConnection(str);


            for (int i = 0; i < clbLotNo.Items.Count; i++)
            {
                if (clbLotNo.Items[i].Selected)
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("insert into ContainerLot(LotId,OfficeId,ContainerId)values(@LotId,@OfficeId,@ContainerId)", con);

                        cmd.Parameters.Add(new SqlParameter("@LotId", SqlDbType.NVarChar, 50));
                        cmd.Parameters.Add(new SqlParameter("@OfficeId", SqlDbType.BigInt, 8));
                        cmd.Parameters.Add(new SqlParameter("@ContainerId", SqlDbType.NVarChar, 50));


                        con.Open();



                        cmd.Parameters["@LotId"].Value = clbLotNo.Items[i].Value;
                        cmd.Parameters["@OfficeId"].Value = int.Parse(cboofficeid.SelectedValue);
                        cmd.Parameters["@ContainerId"].Value = int.Parse(cboContainer.SelectedValue);


                        cmd.ExecuteNonQuery();

                        Label1.Text = "Container Loaded Successfully";


                        SqlCommand cmd1 = new SqlCommand("update lot set LotStatus = 2 where ID = '" + clbLotNo.Items[i].Value + "' ", con);

                        cmd1.ExecuteNonQuery();

                        SqlCommand cmd2 = new SqlCommand("update Container set ContainerStatus = 1 where ID = '" + cboContainer.SelectedValue + "' ", con);
                        cmd2.ExecuteNonQuery();

                    }

                    catch (Exception ex)
                    {


                        // Label1.Text = ex.Message;
                    }

                    finally
                    {
                        con.Close();
                    }

                }
            }
            // Response.Redirect("ContainerLoad.aspx");

        }
    }
}
