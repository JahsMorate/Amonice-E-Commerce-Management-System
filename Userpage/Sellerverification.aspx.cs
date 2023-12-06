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
    public partial class Sellerverification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        bool ExistingSeller()
        {
            try
            {
                string seller;
                string query = "select * from tblCustomer where username=@username and pass=@pass";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                        cmd.Parameters.AddWithValue("@pass", txtPass.Text);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                seller = dt.Rows[0]["usrsType"].ToString();
                                if (seller == "Seller")
                                {
                                    return true;
                                }
                                else
                                {
                                    return false;
                                }
                            }
                            else
                            {
                                return false;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }
        protected void btnProceed_Click(object sender, EventArgs e)
        {
            try
            {
                if (ExistingSeller())
                {
                    txtPass.Text = string.Empty;
                    txtUsername.Text = string.Empty;
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Message','Please try another account','error')", true);
                }
                else
                {
                    string query = "select * from tblCustomer where (username=@user and pass=@pas) and (userStats='ACTIVE')";
                    using (SqlConnection con = new SqlConnection(Connection.Ping()))
                    {
                        con.Open();
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("@user", txtUsername.Text);
                            cmd.Parameters.AddWithValue("@pas", txtPass.Text);
                            SqlDataReader dt = cmd.ExecuteReader();
                            if (dt.HasRows == true)
                            {
                                while (dt.Read())
                                {
                                    Session["username"] = txtUsername.Text;
                                    Session["pas"] = txtPass.Text;
                                    Response.Redirect("Sellerregistrationform.aspx");
                                    break;
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