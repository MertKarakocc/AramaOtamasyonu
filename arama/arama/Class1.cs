
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;

namespace arama
{
    class arama
    {
        SqlConnection bag = new SqlConnection("Data Source=personel.mssql.somee.com;Initial Catalog=personel;User ID=mirac696969_SQLLogin_1;Password=jayolk7d9p");

        public string Text { get; internal set; }

        public void ekle(SqlCommand komut, string sorgu)
        {
            bag.Open();

            komut.Connection = bag;
            komut.CommandText = sorgu;
            komut.ExecuteNonQuery();
            bag.Close();





        }





    }
}

