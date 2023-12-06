using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Net;
using System.Security.Cryptography;
using System.Text;

public class Crud
{
    public string Name { get; set; }
    public string Contact { get; set; }
    public string Address { get; set; }
    public string Email { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
    public string UserType { get; set; }
    public string ID { get; set; }
    public string Brandname { get; set; }
    public string CompanyAddress { get; set; }
    public string ApiKeys { get; set; }
    public string Vgmail { get; set; }
    public string Vmessage { get; set; }
    public string UserStats { get; set; }
    public string CUsername { get; set; }
    public string CPass { get; set; }
    public string CurrentAddress { get; set; }
    public int IDS { get; set; }
    public string ToPay { get; set; }
    public string ToShip { get; set; }
    public string ToDelivery { get; set; }
    public string ToComplete { get; set; }
    public string TotalUser { get; set; }
    public string TotalOrderlist { get; set; }
    public string SuggestetCategory { get; set; }
    public string TotalProducts { get; set; }


    public async Task SuggestedItem(int id)
    {
        IDS = id;
        string query = "select * from TblProduct where tblId=@id";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            await con.OpenAsync();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@id", IDS);
                using (SqlDataReader dr = await cmd.ExecuteReaderAsync())
                {
                    if (dr.HasRows == true)
                    {
                        while (await dr.ReadAsync())
                        {
                            SuggestetCategory = dr.GetValue(5).ToString();
                        }
                    }
                }

            }
        }
    }


    public void NetSales(int id)
    {

        IDS = id;
        string query = "select SUM(b.ctotalprice) as TotalSales from TblProduct a inner join TblCart b on b.productIDFk = a.tblId inner join tblCustomer c on c.cusId = a.sellerID where a.sellerID=@sellerID and cstate='To Completed'";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {

                cmd.Parameters.AddWithValue("@sellerID", IDS);

                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        TotalUser = dt.Rows[0]["TotalSales"].ToString();
                    }
                }
            }
        }
    }
    public void BindSellerTotalProduct(int id)
    {

        IDS = id;
        string query = "select COUNT(tblId) as Totals from TblProduct where sellerID=@sellerID";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {

                cmd.Parameters.AddWithValue("@sellerID", IDS);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        TotalProducts = dt.Rows[0]["Totals"].ToString();
                    }
                }
            }
        }
    }
    public void BindSellerOrderlist(string orderlist, int id)
    {
        UserStats = orderlist;
        IDS = id;
        string query = "select  COUNT(b.CrtId) as Total from TblProduct a inner join TblCart b on b.productIDFk = a.tblId inner join tblCustomer c on c.cusId = a.sellerID where a.sellerID=@sellerID and cstate=@Stats";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@Stats", UserStats);
                cmd.Parameters.AddWithValue("@sellerID", IDS);

                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        TotalUser = dt.Rows[0]["Total"].ToString();
                    }
                }
            }
        }
    }

    public void BindTotalOrderlist(string orderlist)
    {
        UserStats = orderlist;

        string query = "select COUNT(CrtId) as TotalOrder from TblCart where cstate=@Stats";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@Stats", UserStats);

                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        TotalUser = dt.Rows[0]["TotalOrder"].ToString();
                    }
                }
            }
        }
    }
    public void BindTotalUser(string usertats)
    {
        UserStats = usertats;

        string query = "select COUNT(cusId) as Totals from tblCustomer where usrsType=@Stats";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@Stats", UserStats);

                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        TotalUser = dt.Rows[0]["Totals"].ToString();
                    }
                }
            }
        }
    }

    public void BindToPay(string topays, int userID)
    {
        ToPay = topays;
        IDS = userID;
        string query = "select count(a.CrtId) as totalPay from TblCart a inner join tblCustomer b on b.cusId = a.userIDFk inner join TblProduct  c on c.tblId = a.productIDFk where a.cstate='Approval' and a.userIDFk=@userID";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@userID", IDS);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        ToPay = dt.Rows[0]["totalPay"].ToString();
                    }
                }
            }
        }
    }
    public void BindToShip(int userID)
    {
        IDS = userID;
        string query = "select count(a.CrtId) as totalSPay from TblCart a inner join tblCustomer b on b.cusId = a.userIDFk inner join TblProduct  c on c.tblId = a.productIDFk where a.cstate='To Ship' and a.userIDFk=@userID";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@userID", IDS);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        ToShip = dt.Rows[0]["totalSPay"].ToString();
                    }
                }
            }
        }
    }


    public void BindToDelivery(int userID)
    {
        IDS = userID;
        string query = "select count(a.CrtId) as totalSdPay from TblCart a inner join tblCustomer b on b.cusId = a.userIDFk inner join TblProduct  c on c.tblId = a.productIDFk where a.cstate='To Delivery' and a.userIDFk=@userID";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@userID", IDS);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        ToDelivery = dt.Rows[0]["totalSdPay"].ToString();
                    }
                }
            }
        }
    }

    public void BindToCompleted(int userID)
    {
        IDS = userID;
        string query = "select count(a.CrtId) as totalSdPays from TblCart a inner join tblCustomer b on b.cusId = a.userIDFk inner join TblProduct  c on c.tblId = a.productIDFk where a.cstate='To Completed' and a.userIDFk=@userID";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@userID", IDS);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        ToComplete = dt.Rows[0]["totalSdPays"].ToString();
                    }
                }
            }
        }
    }
    public async Task GmailNotification(string vemail, string vmessage)
    {
        string adminEmail = "moretejahs41@gmail.com";
        string pass = "qnsvmaynuhaqsjdw";
        string Vgmail = vemail;
        string Vmessage = vmessage;

        MailMessage message = new MailMessage();
        message.From = new MailAddress(adminEmail);
        message.Subject = "Order Status";
        message.To.Add(new MailAddress(Vgmail));
        message.Body = $"<html><body>Hi, {Vgmail} {Vmessage} </br><p><b>From: Amonica </b></p></body></html>";
        message.IsBodyHtml = true;

        var smtpClient = new SmtpClient("smtp.gmail.com")
        {
            Port = 587,
            Credentials = new NetworkCredential(adminEmail, pass),
            EnableSsl = true,
        };

        await Task.Run(() => smtpClient.Send(message));
    }

    public string PasswordsCrip(string password)
    {
        SHA1CryptoServiceProvider shaCrp = new SHA1CryptoServiceProvider();
        byte[] password_bytes = Encoding.ASCII.GetBytes(password);
        byte[] encrypted_byeSha = shaCrp.ComputeHash(password_bytes);
        return Convert.ToBase64String(encrypted_byeSha);
    }

    //Registration form
    public async Task UserRegistration(string name, string email, string username, string pass, string usertype, string userStats, string cpass, string cusername)
    {
        Name = name;
        Email = email;
        Username = username;
        Password = pass;
        UserType = usertype;
        UserStats = userStats;
        CUsername = cusername;
        CPass = cpass;
        string query = "insert into tblCustomer(completename, email, username, pass, usrsType, cusername, cpass, userStats) values (@name, @email, @usernmae, @pass, @user, @cusername, @cpass, @userStats)";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            await con.OpenAsync();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@name", Name);
                cmd.Parameters.AddWithValue("@email", Email);
                cmd.Parameters.AddWithValue("@usernmae", Username);
                cmd.Parameters.AddWithValue("@pass", Password);
                cmd.Parameters.AddWithValue("@user", UserType);
                cmd.Parameters.AddWithValue("@cusername", CUsername);
                cmd.Parameters.AddWithValue("@cpass", CPass);
                cmd.Parameters.AddWithValue("@userStats", UserStats);
                await cmd.ExecuteNonQueryAsync();
            }
        }
    }

    public async Task LoginForm(string username, string pass)
    {
        Username = username;
        Password = pass;
        string query = "select * from tblCustomer where username=@user and pass=@pas";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            await con.OpenAsync();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@user", Username);
                cmd.Parameters.AddWithValue("pas", Password);
                using (SqlDataReader dr = await cmd.ExecuteReaderAsync())
                {
                    while (await dr.ReadAsync())
                    {
                        UserType = dr.GetValue(7).ToString();
                    }
                }
            }
        }
    }

    public async Task CustomerVerifcation(string username, string pass)
    {
        // contructor
        Username = username;
        Password = pass;

        string query = "select * from tblCustomer where (username=@user and pass=@pas) and (userStats='ACTIVE')";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            await con.OpenAsync();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@user", Username);
                cmd.Parameters.AddWithValue("@pas", Password);
                await cmd.ExecuteNonQueryAsync();
            }
        }
    }

    public async Task SessionUserData(string username, string pass)
    {


        string query = "select * from tblCustomer where username=@user and pass=@pas";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {

            await con.OpenAsync();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@user", username);
                cmd.Parameters.AddWithValue("@pas", pass);
                using (SqlDataReader dr = await cmd.ExecuteReaderAsync())
                {
                    while (await dr.ReadAsync())
                    {
                        ID = dr.GetValue(0).ToString();
                        Name = dr.GetValue(1).ToString();
                        Email = dr.GetValue(4).ToString();
                        Username = dr.GetValue(5).ToString();

                        break;
                    }
                }
            }
        }
    }

    public async Task SellerRegistration(string companyname, string companyaddress, string name, string contact, string currentaddress, int id, string status)
    {
        //this is for contructor
        Brandname = companyname;
        CompanyAddress = companyaddress;
        Name = name;
        Contact = contact;
        CurrentAddress = currentaddress;
        IDS = id;
        UserStats = status;
        string query = "update tblCustomer set brandName=@brandname, companyAddress=@companyAddress, completename=@completename, contact=@contact, adreess=@adreess, usrsType=@userStats where cusId=@id"; // wara pa matapos 
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString))
        {
            await con.OpenAsync();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@brandname", Brandname);
                cmd.Parameters.AddWithValue("@companyAddress", CompanyAddress);
                cmd.Parameters.AddWithValue("@completename", Name);
                cmd.Parameters.AddWithValue("@name", Name);
                cmd.Parameters.AddWithValue("@contact", Contact);
                cmd.Parameters.AddWithValue("@adreess", CurrentAddress);
                cmd.Parameters.AddWithValue("@userStats", UserStats);
                cmd.Parameters.AddWithValue("@id", IDS);
                await cmd.ExecuteNonQueryAsync();
            }
        }
    }
}