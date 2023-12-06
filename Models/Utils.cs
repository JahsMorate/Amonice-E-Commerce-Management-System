using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace Amonica.Models
{

    public class Utils
    {
        public static string GetImageUrl(Object url)
        {
            string url1 = "";
            if (string.IsNullOrEmpty(url.ToString()) || url == DBNull.Value) // if waray pictures na e butang ang user , ang mo tunga kay ang default images
            {
                url1 = "../Images/NO_images.jpg"; // No_image.png ang default image.
            }
            else
            {
                url1 = string.Format("../{0}", url);

            }
            //return ResolveUrl(url1)
            return url1;
        }

        public static string hashPassword(string password)
        {
            SHA1CryptoServiceProvider shaCrp = new SHA1CryptoServiceProvider();
            byte[] password_bytes = Encoding.ASCII.GetBytes(password);
            byte[] encrypted_byeSha = shaCrp.ComputeHash(password_bytes);
            return Convert.ToBase64String(encrypted_byeSha);
        }

        public static string DecryptString(string decrypString)
        {
            byte[] b = Convert.FromBase64String(decrypString);
            string desc = Encoding.UTF8.GetString(b);
            return desc;
        }

        public static string Encryption(string encry)
        {
            try
            {
                byte[] b = Convert.FromBase64String(encry);
                string encrypted = Encoding.UTF8.GetString(b);
                return encrypted;
            }
            catch (FormatException)
            {
                // Input string is not a valid Base64-encoded string or is not UTF-8 encoded
                // Return default value
                return "";
            }
        }


    }


}