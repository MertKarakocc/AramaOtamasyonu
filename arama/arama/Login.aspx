<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="arama.Login" %>

<!doctype html>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Arama kayıt otamasyonu</title>
  </head>
  <body>
   

  <form runat="server">
  
    <div class="menu">
   
        <div class="row">
            <div class="col-md-12" id="baslık3"><h5>TELEFON GÖRÜŞME OTOMASYONU</h5></div>
        </div>
        <br>
        <div class="row">     
          <div class="col-md-12 " id="login">
            
            <table class="kayıt">
                <tr>
                    <td></td><td style="text-align: center;"><h3> GİRİŞ</h3></td><td></td>
                    
                 </tr>
                <tr>
                   <td>KULLANICI ADI </td><td>
                    <asp:TextBox ID="ad" runat="server"></asp:TextBox>
                    </td>
                   <td></td>
                   
                </tr>   
                 <tr>
                    <td>PAROLA</td><td>
                        <asp:TextBox ID="sifre" runat="server"></asp:TextBox></td><td></td>
                 </tr>
                 <tr>
                    <td> &nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                 </tr>
                 <tr>
                    <td> &nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                 </tr>
                 <tr>
                    <td>
                       </td><td> <asp:Button ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click" /></td><td></td>
                 </tr>
            </table>
           
       

          </div>    
        </div> 
        <br> <br>

        </div>
        </form>





    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
   
  </body>
</html>