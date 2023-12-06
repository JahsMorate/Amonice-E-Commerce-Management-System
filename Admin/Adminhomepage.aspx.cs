using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Threading.Tasks;
namespace Amonica.Admin
{
    public partial class Adminhomepage : System.Web.UI.Page
    {
        public string Topay { get; set; }
        public string Toship { get; set; }
        public string Todelivery { get; set; }
        public string Tocomplete { get; set; }
        public string touser { get; set; }
        public string tocseller { get; set; }
        public string toCouter { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindOverall();
            }
        }
        private void BindOverall()
        {
            try
            {
                string user, seller, courier, topay, toship, todelivery, tocomplete;
                user = "User";
                seller = "Seller";
                courier = "Courier";
                topay = "Approval";
                toship = "To Ship";
                todelivery = "To Delivery";
                tocomplete = "To Completed";
                Crud save = new Crud();
                Crud saves = new Crud();
                Crud savess = new Crud();
                Crud savepay = new Crud();
                Crud saveship = new Crud();
                Crud savedelivery = new Crud();
                Crud savecomplete = new Crud();

                savepay.BindTotalOrderlist(topay);
                saveship.BindTotalOrderlist(toship);
                savedelivery.BindTotalOrderlist(todelivery);
                savecomplete.BindTotalOrderlist(tocomplete);

                save.BindTotalUser(user);
                saves.BindTotalUser(seller);
                savess.BindTotalUser(courier);
                touser = save.TotalUser;
                tocseller = saves.TotalUser;
                toCouter = savess.TotalUser;

                Topay = savepay.TotalUser;
                Toship = saveship.TotalUser;
                Todelivery = savedelivery.TotalUser;
                Tocomplete = savecomplete.TotalUser;

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}