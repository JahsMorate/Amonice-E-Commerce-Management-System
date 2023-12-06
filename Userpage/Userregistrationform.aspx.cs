using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Amonica.Models;
using System.Threading.Tasks;
namespace Amonica.Userpage
{
    public partial class Userregistrationform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void Clear()
        {
            txtUsername.Text = string.Empty;

            txtEmail.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtPass.Text = string.Empty;

        }
        bool ExistingUsername()
        {
            try
            {
                string query = "select * from tblCustomer where username=@user";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@user", txtUsername.Text);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        if (dt.Rows.Count != 0)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                Response.Redirect("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        protected async void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (ExistingUsername())
                {
                    Response.Write("<script>alert('This username is already exist!')</script>");
                    txtUsername.Text = string.Empty;
                }
                else
                {
                    string on = "ACTIVE";
                    string message = "You are now succesfully registered your account thank you for become a family of Amonica Community..!";
                    string users = "User";
                    Crud savedata = new Crud();
                    await savedata.UserRegistration(txtFName.Text, txtEmail.Text, txtUsername.Text, txtPass.Text, users, on, savedata.PasswordsCrip(txtUsername.Text), savedata.PasswordsCrip(txtPass.Text));
                    Response.Redirect("Login.aspx");
                    //await savedata.GmailNotification(txtEmail.Text, message);

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}