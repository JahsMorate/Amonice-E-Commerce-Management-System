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

namespace Amonica.Seller
{
    public partial class Sellerpanel : System.Web.UI.Page
    {
        public string ToPay { get; set; }
        public string ToShip { get; set; }
        public string ToDelivery { get; set; }
        public string ToComplete { get; set; }
        public string ToProduct { get; set; }
        public string NetSales { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTotalProduct();
            }
        }

        private void BindTotalProduct()
        {
            try
            {
                string pay, ship, delivery, complete;
                pay = "Approval";
                ship = "To Ship";
                delivery = "To Delivery";
                complete = "To Completed";
                BindUserID();
                Crud dd = new Crud();
                Crud dds = new Crud();
                Crud ddss = new Crud();
                Crud ddsss = new Crud();
                Crud totalProduct = new Crud();
                Crud sales = new Crud();
                dd.BindSellerOrderlist(pay, int.Parse(SellerID.Value));
                dds.BindSellerOrderlist(ship, int.Parse(SellerID.Value));
                ddss.BindSellerOrderlist(delivery, int.Parse(SellerID.Value));
                ddsss.BindSellerOrderlist(complete, int.Parse(SellerID.Value));
                totalProduct.BindSellerTotalProduct(int.Parse(SellerID.Value));
                sales.NetSales(int.Parse(SellerID.Value));
                ToPay = dd.TotalUser;
                ToShip = dds.TotalUser;
                ToDelivery = ddss.TotalUser;
                ToComplete = ddsss.TotalUser;
                ToProduct = totalProduct.TotalProducts;
                NetSales = sales.TotalUser;
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
    }
}