using Amonica.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Amonica.Userpage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string usertype, stats;
                string query = "select * from tblCustomer where username=@user and pass=@pas";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@user", txtUsername.Text);
                        cmd.Parameters.AddWithValue("@pas", txtPass.Text);
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows == true)
                            {
                                while (dr.Read())
                                {
                                    usertype = dr.GetValue(9).ToString();
                                    stats = dr.GetValue(12).ToString();
                                    if (stats == "ACTIVE")
                                    {
                                        if (usertype == "Admin")
                                        {
                                            Session["Admin"] = txtUsername.Text;
                                            Response.Redirect("../Admin/Adminhomepage.aspx");
                                            break;
                                        }
                                        if (usertype == "Seller")
                                        {
                                            Session["sell"] = txtUsername.Text;
                                            Response.Redirect("../Seller/Sellerpanel.aspx");
                                            break;
                                        }
                                        if (usertype == "User")
                                        {
                                            Session["User"] = txtUsername.Text;
                                            Response.Redirect("Start.aspx");
                                            break;
                                        }
                                        if (usertype == "Courier")
                                        {
                                            Session["Courier"] = txtUsername.Text;
                                            Response.Redirect("../Courier/Order.aspx");
                                            break;
                                        }
                                    }
                                    else if (stats == "DEACTIVE")
                                    {
                                        ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Message','You are Temporary Block by the Admin due the Violence','error')", true);
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