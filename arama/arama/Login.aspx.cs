using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace arama
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=personel.mssql.somee.com;Initial Catalog=personel;User ID=mirac696969_SQLLogin_1;Password=jayolk7d9p");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From personel where personeladsoyad=@P1 AND sifre=@P2", baglanti);
            komut.Parameters.AddWithValue("@P1", ad.Text);
            komut.Parameters.AddWithValue("@P2", sifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {


                Response.Redirect("Index.aspx");

            }

            else
            {
                Response.Write("<script lang='JavaScript'>alert('Hatalı Giriş Yaptınız');</script>");

            }
        }
    }
}