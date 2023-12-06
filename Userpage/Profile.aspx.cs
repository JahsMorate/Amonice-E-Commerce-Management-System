using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Amonica.Models;


namespace Amonica.Userpage
{
    public partial class Profile : System.Web.UI.Page
    {
        public string totalcart { get; set; }
        public string id { get; set; }
        public string topay { get; set; }
        public string totaltopay { get; set; }
        public string totaltoShip { get; set; }
        public string totaltoComplete { get; set; }
        public string topship { get; set; }
        public string todelivery { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetUserID();
                BindUserProfile();
                BindTotalSummary();
            }
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        private void BindTotalSummary()
        {
            try
            {
                GetUserID();
                Crud save = new Crud();
                save.BindToPay(topay, int.Parse(userID.Value));
                totaltopay = save.ToPay;
                save.BindToShip(int.Parse(userID.Value));
                totaltoShip = save.ToShip;
                save.BindToDelivery(int.Parse(userID.Value));
                todelivery = save.ToDelivery;
                save.BindToCompleted(int.Parse(userID.Value));
                totaltoComplete = save.ToComplete;

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
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
                                userID.Value = dt.Rows[0]["cusId"].ToString();
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
        private void BindUserProfile()
        {
            try
            {
                GetUserID();
                string query = "select * from tblCustomer where cusId=@id";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@id", int.Parse(userID.Value));
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                RProfile.DataSource = dt;
                                RProfile.DataBind();
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