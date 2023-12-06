using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Amonica.Models;
using System.Data.SqlClient;
using System.Data;
using System.Threading.Tasks;
namespace Amonica.Userpage
{
    public partial class Placedorder : System.Web.UI.Page
    {
        public string id { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProfile();
                BindUserProfile();
                OrderSummary();
                BindSummary();
            }
        }

        private void BindSummary()
        {
            try
            {
                BindProfile();
                string query = "select SUM(ctotalprice) as totalPaying from TblCart where userIDFk=@id and cstate='Cart'";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@id", id);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                RTotalPrice.DataSource = dt;
                                RTotalPrice.DataBind();
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
        private void OrderSummary()
        {
            try
            {
                BindUserProfile();
                string query = "select a.*, b.*, c.* from TblProduct a inner join tblCustomer b on b.cusId  = a.sellerID inner join TblCart c on c.productIDFk = a.tblId where c.userIDFk=@id and c.cstate='Cart'";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@id", id);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            ROrderSummary.DataSource = dt;
                            ROrderSummary.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        private void BindUserProfile()
        {
            try
            {
                BindProfile();
                string query = "select * from tblCustomer where cusId=@id";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@id", id);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            Rprofile.DataSource = dt;
                            Rprofile.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        private void BindProfile()
        {
            try
            {
                string query = "select * from tblCustomer where username=@id";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@id", Session["User"]);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                id = dt.Rows[0]["cusId"].ToString();
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

        protected async void BtnPlaceOrder_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (RepeaterItem item in RTotalPrice.Items)
                {
                    TextBox txtAddress = (TextBox)item.FindControl("txtAddress");
                    BindProfile();

                    string approved = "Approval";
                    string query = "update TblCart set dateapproved='" + DateTime.Now.ToString("dddd, dd MMMM yyyy") + "', cstate='" + approved + "', address='" + txtAddress.Text + "' where userIDFk=@id and cstate='Cart'";
                    using (SqlConnection con = new SqlConnection(Connection.Ping()))
                    {
                        await con.OpenAsync();
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("@id", id);
                            int a = cmd.ExecuteNonQuery();
                            if (a != 0)
                            {
                                string query1 = "insert into OrderRecord(userID, PAddress, DateOrder, DStatus) " +
                                    "values (@userID, @PAddress, @DateOrder, @DStatus)";
                                using (SqlCommand cmd1 = new SqlCommand(query1, con))
                                {
                                    cmd1.Parameters.AddWithValue("@userID", id);
                                    cmd1.Parameters.AddWithValue("@PAddress", txtAddress.Text);
                                    cmd1.Parameters.AddWithValue("@DateOrder", DateTime.Now.ToString("dddd, dd MMMM yyyy"));
                                    cmd1.Parameters.AddWithValue("@DStatus", approved);
                                    int b = await cmd1.ExecuteNonQueryAsync();
                                    if (b != 0)
                                    {
                                        Response.Redirect("Start.aspx");
                                    }
                                }
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
    }
}