using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace arama.PAGE
{

    public partial class personel : System.Web.UI.Page
    {
        arama arama = new arama();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (adsoyad.Text == "")
            {

                Response.Write("<script lang='JavaScript'>alert('Boş Alan Bıraktınız');</script>");



            }


            else
            {


                string cümle = "insert into personel(personeladsoyad,sifre) values(@personeladsoyad,@sifre)";
                SqlCommand komut2 = new SqlCommand();
                komut2.Parameters.AddWithValue("@personeladsoyad", adsoyad.Text);
                komut2.Parameters.AddWithValue("@sifre", sifre.Text);
                arama.ekle(komut2, cümle);
                GridView1.DataBind();
           
                adsoyad.Text = "";

            }
        }
    }
}