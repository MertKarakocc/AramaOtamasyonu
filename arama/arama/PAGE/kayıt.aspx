<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayıt.aspx.cs" Inherits="arama.PAGE.kayıt" %>
<!doctype html>
<style type="text/css">
       
    .auto-style1 {
        border-radius: 5px;
        padding: 3px;
        -webkit-appearance: none;
        text-indent: 0.01px;
        text-overflow: '';
        margin: 10px;
        border: 2px solid rgb(145, 145, 145);
        font-size: 12pt;
        transition: 0.2s;
        text-align: center;
    }
</style>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../style.css">
    <title>CALL PHONE</title>
  </head>
  <body>
   

  
      <form id="form1" runat="server">
   

  
<div class="menu">
   
        <div class="row">
            <div class="col-md-12" id="baslık"><h5>KAYIT EKLEME</h5></div>
        </div>
        <br>
        <div class="row">     
          <div class="col-md-12 " id="kayıt">
            
            <table class="kayıt">
              <tr>
                <td> </td><td><h4 style="text-align: center;">GÖRÜŞME KAYDI</h4></td>
                
             </tr>
                <tr>
                   <td>İSİM </td><td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="personeladsoyad" DataValueField="personeladsoyad" CssClass="auto-style1" Width="200px" Height="35px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kayitperConnectionString %>" SelectCommand="SELECT [personeladsoyad] FROM [personel]"></asp:SqlDataSource>
                    </td>
                   
                </tr>   
                <tr>
                    <td>TARİH </td><td>
                        <asp:TextBox ID="tarih" type="date" runat="server"></asp:TextBox></td>
                 </tr>
                 <tr>
                    <td>GELEN ARAMA SAYISI</td><td>
                        <asp:TextBox ID="gelen" runat="server"></asp:TextBox></td>
                 </tr>
                 <tr>
                    <td>GİDEM ARAMA SAYISI</td><td>
                        <asp:TextBox ID="giden" runat="server"></asp:TextBox></td>
                 </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></td><td></td>
                 </tr>
            </table>
            

          </div>    
        </div> 
        <br> <br>
        <div class="container" id="nav">
        <div class="row">
            <div class="col-md-3 "><a href="kayıt.aspx"><img src="../İMG/1.png" alt=""></a></div>
            <div class="col-md-3 "><a href="personel.aspx"><img src="../İMG/2.png" alt=""></a></div>
            <div class="col-md-3 "><a href="rapor.aspx"><img src="../İMG/3.png" alt=""></a></div>
            <div class="col-md-3 "><a href="../index.aspx"><img src="../İMG/4.png" alt=""></a></div>
        </div>
    </div>

    <br> <br>





    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
   
      </form>
   
  </body>
</html>