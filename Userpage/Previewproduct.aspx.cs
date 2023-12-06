using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Amonica.Models;
using System.Threading.Tasks;

namespace Amonica.Userpage
{
    public partial class Previewproduct : System.Web.UI.Page
    {
        public string id { get; set; }
        public string suggesteditem { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               _= BindPreview();
                BindProfile();
                _ = BindSuggestedItem();
            }
            if (Session["User"] == null || Request.QueryString["pid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        private async Task BindSuggestedItem()
        {
            try
            {
               
                Crud save = new Crud();
                int pids = Convert.ToInt32(Request.QueryString["pid"]);
                await save.SuggestedItem(pids);
                suggesteditem = save.SuggestetCategory;
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    string query = "select * from TblProduct where pcategory=@suggestedcourse";
                    await con.OpenAsync();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@suggestedcourse", suggesteditem);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                RSuggestedItem.DataSource = dt;
                                RSuggestedItem.DataBind();
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

        private async Task BindPreview()
        {
            try
            {
                int pids = Convert.ToInt32(Request.QueryString["pid"]);
                string query = "select a.*, b.brandName,b.companyAddress from TblProduct a inner join tblCustomer b on b.cusId = a.sellerID where a.tblId=@id";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    await con.OpenAsync();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@id", pids);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rpreviewproducts.DataSource = dt;
                                Rpreviewproducts.DataBind();
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
                                //Rprofile.DataSource = dt;
                                //Rprofile.DataBind();
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

        protected void LnkLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Write("Start.aspx");
        }




        protected async void LnkAddtocard_Click(object sender, EventArgs e)
        {
            try
            {

                if (Session["User"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    string cart = "Cart";
                    BindProfile();
                    int ids = Convert.ToInt32(Request.QueryString["pid"]);
                    LinkButton send = (LinkButton)sender;
                    RepeaterItem item = (RepeaterItem)send.NamingContainer;
                    TextBox qty = (TextBox)item.FindControl("txtQty");
                    Label price = (Label)item.FindControl("lblPrice");
                    decimal result = decimal.Parse(price.Text) * decimal.Parse(qty.Text);
                    string query = "insert into TblCart(userIDFk,productIDFk,cqty, ctotalprice, cstate) values " +
                        "(@userIDFk, @productIDFk, @cqty, @ctotalprice, @cstate)";
                    using (SqlConnection con = new SqlConnection(Connection.Ping()))
                    {
                        await con.OpenAsync();
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("@userIDFk", int.Parse(id));
                            cmd.Parameters.AddWithValue("@productIDFk", ids);
                            cmd.Parameters.AddWithValue("@cqty", qty.Text);
                            cmd.Parameters.AddWithValue("@ctotalprice", result);
                            cmd.Parameters.AddWithValue("@cstate", cart);
                            int a = await cmd.ExecuteNonQueryAsync();
                            if (a != 0)
                            {
                                Response.Redirect("Cart.aspx");
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