using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Threading.Tasks;
using Amonica.Models;
namespace Amonica.Userpage
{
    public partial class Cart : System.Web.UI.Page
    {
        public string id { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCart();
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
                                RtotalSummary.DataSource = dt;
                                RtotalSummary.DataBind();
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

        private void BindCart()
        {
            try
            {
                BindProfile();
                string query = "select a.*, b.*, c.* from TblProduct a inner join tblCustomer b on b.cusId  = a.sellerID inner join TblCart c on c.productIDFk = a.tblId where c.userIDFk=@id and c.cstate='Cart'";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@id", int.Parse(id));
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                RCart.DataSource = dt;
                                RCart.DataBind();
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

        protected void LnkUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton update = (LinkButton)sender;
                RepeaterItem item = (RepeaterItem)update.NamingContainer;
                HiddenField crtID = (HiddenField)item.FindControl("cartID");
                TextBox qty = (TextBox)item.FindControl("txtQty");
                Label price = (Label)item.FindControl("lblPrice");
                decimal result = (decimal.Parse(qty.Text) * decimal.Parse(price.Text));
                string query = "update TblCart set cqty=@qty, ctotalprice='" + result + "' where CrtId=@crtID";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@crtID", int.Parse(crtID.Value));
                        cmd.Parameters.AddWithValue("@qty", qty.Text);
                        int a = cmd.ExecuteNonQuery();
                        if (a != 0)
                        {
                            BindCart();
                            BindSummary();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton update = (LinkButton)sender;
                RepeaterItem item = (RepeaterItem)update.NamingContainer;
                HiddenField crtID = (HiddenField)item.FindControl("cartID");
                string query = "delete from TblCart where CrtId=@crtID";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@crtID", int.Parse(crtID.Value));
                        int a = cmd.ExecuteNonQuery();
                        if (a != 0)
                        {
                            BindCart();
                            BindSummary();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void LnkPlaceOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Placedorder.aspx");
        }
    }
}