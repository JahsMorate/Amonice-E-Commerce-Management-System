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
using System.IO;


namespace Amonica.Seller
{
    public partial class Addproducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProduct();
                BindUserID();
            }
        }

        private void BindProduct()
        {
            try
            {
                BindUserID();
                string query = "select * from TblProduct where sellerID=@idd order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@idd", int.Parse(SellerID.Value));
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

        private void BindUserID()
        {
            try
            {
                // Session["Seller"] = txtUsername.Text;
                //Session["Pass"] = txtPass.Text;
                string query = "select * from tblCustomer where username=@user";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@user", Session["sell"]);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                SellerID.Value = dt.Rows[0]["cusId"].ToString();
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
        protected async void LnkAdd_Click(object sender, EventArgs e)
        {
            try
            {
                BindUserID();
                string query = "insert into TblProduct (sellerID, pimge, pname, pdescription, pcategory, pprice) " +
                    "values (@sellerID, @pimge, @pname, @pdescription, @pcategory, @pprice)";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    await con.OpenAsync();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {

                        if (FileUpload3.HasFile)
                        {
                            FileUpload3.SaveAs(Server.MapPath("~/Images/ProductImage/") + Path.GetFileName(FileUpload3.FileName));
                            string linkpath03 = "Images/ProductImage/" + Path.GetFileName(FileUpload3.FileName);
                            cmd.Parameters.AddWithValue("@pimge", linkpath03);
                            cmd.Parameters.AddWithValue("@sellerID", int.Parse(SellerID.Value));
                            cmd.Parameters.AddWithValue("@pname", txtBrandname.Text);
                            cmd.Parameters.AddWithValue("@pdescription", txxDecription.Text);
                            cmd.Parameters.AddWithValue("@pcategory", ddlCategory.SelectedValue);
                            cmd.Parameters.AddWithValue("@pprice", txtPrice.Text);
                            int i = await cmd.ExecuteNonQueryAsync();
                            if (i != 0)
                            {
                                BindProduct();
                                Response.Redirect(Request.Url.AbsoluteUri);
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Message','New uploaded product successfully!','success')", true);
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