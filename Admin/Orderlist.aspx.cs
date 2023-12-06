using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Amonica.Models;
namespace Amonica.Admin
{
    public partial class Orderlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindOrderlist();
            }
        }
        private async void BindOrderlist()
        {
            try
            {
                string query = "select a.*, b.*, c.* from TblCart a inner join tblCustomer b on b.cusId = a.userIDFk inner join TblProduct  c on c.tblId = a.productIDFk where a.cstate='To Ship'";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    await con.OpenAsync();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                L_ValidationRegistrations.DataSource = dt;
                                L_ValidationRegistrations.DataBind();
                            }
                        }
                    }
                }


            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        protected void LnkToShip_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton send = (LinkButton)sender;
                RepeaterItem item = (RepeaterItem)send.NamingContainer;
                HiddenField crtID = (HiddenField)item.FindControl("crtID");

                string query, toship;
                toship = "To Delivery";
                query = "update TblCart set cstate='" + toship + "' where CrtId=@crt";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@crt", int.Parse(crtID.Value));
                        int a = cmd.ExecuteNonQuery();
                        if (a != 0)
                        {
                            BindOrderlist();
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Message','Accept Order Successfully!','success')", true);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

    }
}