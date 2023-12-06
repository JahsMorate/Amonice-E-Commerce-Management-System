
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
    public partial class Sellerregistrationform : System.Web.UI.Page
    {
        public string username { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCustomerDataVerification();
            }

        }

        private void BindCustomerDataVerification()
        {
            try
            {

                string usernmae, password;
                usernmae = Session["username"].ToString();
                password = Session["pas"].ToString();
                string query = "select * from tblCustomer where username=@username and pass=@pas";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@username", usernmae);
                        cmd.Parameters.AddWithValue("@pas", password);
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows == true)
                            {
                                while (dr.Read())
                                {
                                    hndID.Value = dr.GetValue(0).ToString();
                                    txtFName.Text = dr.GetValue(1).ToString();
                                    txtEmail.Text = dr.GetValue(4).ToString();
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

        protected async void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string message = $"Hi, {txtFName.Text}, Thank you for choosing our Amonica Community , Our platform provides you with a dynamic marketplace to showcase your products and connect with a vast customer base.";
                BindCustomerDataVerification();
                string seller = "Seller";
                Crud savedata = new Crud();
                await savedata.SellerRegistration(txtCompanyname.Text, txtCompanyAddress.Text, txtFName.Text, txtContact.Text, txtCurrentAddress.Text, int.Parse(hndID.Value), seller);
                await savedata.GmailNotification(txtEmail.Text, message);
                Response.Redirect(Request.Url.AbsoluteUri);
                txtCompanyAddress.Text = string.Empty;
                txtCompanyname.Text = string.Empty;
                txtContact.Text = string.Empty;
                txtCurrentAddress.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtFName.Text = string.Empty;
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}