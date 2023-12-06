using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Amonica.Models;

namespace Amonica.Userpage
{
    public partial class Start : System.Web.UI.Page
    {
        public string totalcart { get; set; }
        public string id { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProduct();

            }

        }
        
        private void BindProduct()
        {
            try
            {
                string query = "select * from TblProduct order by tblId desc ";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        if (dt.Rows.Count != 0)
                        {
                            Rproduct.DataSource = dt;
                            Rproduct.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        protected void LnkAll_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void LnkMeanappeal_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Mens Appeal' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void LnkWomernsAppeal_Click(object sender, EventArgs e)
        {
            try
            {
                string cate = "Womens Appeal";
                string query = "select * from TblProduct where pcategory='"+ cate + "' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void LnkWomenBag_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Womens Bag' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void LnkWomesnAccessroes_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Womens Accessories' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void LnkGloceries_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Gloceries' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void Lnkbabykids_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Baby & Kids' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void lnkHomeandliving_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Home & Living' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void LnkHomeEntertainent_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Home & Entertainment' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void Lnkmobilegadget_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Mobile & Gadget' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void lnkmobileAccessroies_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Mobile Accesories' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void Lnotoys_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Toy & Kids' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void Lnmotorparts_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Laptop & Computer' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void LnkmenShoes_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Mens Shoes' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void LnkMEnsAccesories_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Mens Shoes' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void LnkMakeup_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Makeup' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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

        protected void Lnkltopcomputer_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from TblProduct where pcategory='Laptop & Computer' order by tblId desc";
                using (SqlConnection con = new SqlConnection(Connection.Ping()))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count != 0)
                            {
                                Rproduct.DataSource = dt;
                                Rproduct.DataBind();
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