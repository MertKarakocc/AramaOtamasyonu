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
    public partial class ana : System.Web.UI.Page
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


                string cümle = "insert into personel(personeladsoyad) values(@personeladsoyad)";
                SqlCommand komut2 = new SqlCommand();
                komut2.Parameters.AddWithValue("@personeladsoyad", adsoyad.Text);

                arama.ekle(komut2, cümle);
                GridView1.DataBind();
                DropDownList1.DataBind();
                adsoyad.Text = "";

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (gelen.Text == "" || giden.Text == "")
            {

                Response.Write("<script lang='JavaScript'>alert('Boş Alan Bıraktınız');</script>");



            }


            else
            {


                string cümle = "insert into aramalar(personeladsoyad,tarih,gelen,giden) values(@personeladsoyad,@tarih,@gelen,@giden)";
                SqlCommand komut2 = new SqlCommand();
                komut2.Parameters.AddWithValue("@personeladsoyad", DropDownList1.Text);
                komut2.Parameters.AddWithValue("@tarih", Calendar1.SelectedDate);
                komut2.Parameters.AddWithValue("@gelen", gelen.Text);
                komut2.Parameters.AddWithValue("@giden", giden.Text);

                arama.ekle(komut2, cümle);
                GridView2.DataBind();

                gelen.Text = "";
                giden.Text = "";


            }

        }

        
    }
}


