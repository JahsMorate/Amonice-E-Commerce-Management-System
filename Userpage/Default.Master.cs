using Amonica.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Amonica.Userpage
{
    public partial class Default : System.Web.UI.MasterPage
    {
        public string totalcart { get; set; }
        public string id { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                LnkSingup.Visible = true;
                LnkLogin.Visible = true;
                Rprofile.Visible = false;
                foreach (RepeaterItem item in Rcart.Items)
                {
                    Label total = (Label)item.FindControl("lblTotalcart");
                    total.Text = "0";
                }
            }
            else
            {
                GetUserID();
                LnkSingup.Visible = false;
                LnkLogin.Visible = false;
                Rprofile.Visible = true;
                LnkLogout.Visible = true;

                foreach (RepeaterItem item in Rprofile.Items)
                {
                    LinkButton total = (LinkButton)item.FindControl("Profile");
                    total.Visible = true;
                }

                TotalCart();
            }
        }

        private void GetUserID()
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
                                Rprofile.DataSource = dt;
                                Rprofile.DataBind();
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

        private void TotalCart()
        {
            try
            {

                string quer = "select COUNT(CrtId) as TotalCart from TblCart where userIDFk=@id and cstate='Cart'";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(quer, con))
                    {
                        cmd.Parameters.AddWithValue("@id", int.Parse(id));
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rcart.DataSource = dt;
                                Rcart.DataBind();
                            }
                            else
                            {
                                foreach (RepeaterItem item in Rcart.Items)
                                {
                                    Label total = (Label)item.FindControl("lblTotalcart");
                                    total.Text = "0";
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
        protected void LnkCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void LnkLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("Start.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");

        }

        protected void LnkSingup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userregistrationform.aspx");
        }

        protected void LnkLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

    }
}