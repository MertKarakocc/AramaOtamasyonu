<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personel.aspx.cs" Inherits="arama.PAGE.personel" %>
<!doctype html>
<style>

    .mGrid {
        text-decoration:none;
    width: 100%;
    height:400px;
    background-color: #fff;
    margin: 5px 0 10px 0;
    border: solid 1px #525252;
    border-collapse:collapse;
}
.mGrid td {
    padding: 2px;
    border: solid 1px #c1c1c1;
    color: #717171;
}
.mGrid th {
    padding: 4px 2px;
    color: #fff;
    background: #424242 url(grd_head.png) repeat-x top;
    border-left: solid 1px #525252;
    font-size: 0.9em;
}
.mGrid .alt { background: #fcfcfc url(grd_alt.png) repeat-x top; }
.mGrid .pgr { background: #424242 url(grd_pgr.png) repeat-x top; }
.mGrid .pgr table { margin: 5px 0; }
.mGrid .pgr td {
    border-width: 0;
    padding: 0 6px;
    border-left: solid 1px #666;
    font-weight: bold;
    color: #fff;
    line-height: 12px;
 }
.mGrid .pgr a { color: #666; text-decoration: none; }
.mGrid .pgr a:hover { color: #000; text-decoration: none; }
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
            <div class="col-md-12" id="baslık2"><h5>PERSONEl KAYIT</h5></div>
        </div>
        <br>
        <div class="row">     
          <div class="col-md-6 " id="kayıt">
            
            <table class="kayıt">
                <tr>
                    <td> </td><td style="text-align: center;"><h4> PERSONEL EKLE</h4></td><td></td>
                 </tr> 
                <tr>
                   <td>İSİM </td><td>
                       <asp:TextBox ID="adsoyad" runat="server"></asp:TextBox></td><td></td>
                </tr>   
                <tr>
                    <td>PAROLA </td><td>
                        <asp:TextBox ID="sifre" runat="server"></asp:TextBox></td><td></td>
                 </tr>
               
                 <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></td><td></td><td></td>
                 </tr>
            </table>
          </div>    
          <div class="col-md-6 " id="kayıt">
            
              <asp:GridView ID="GridView1" runat="server"  GridLines="None" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
                      <asp:BoundField DataField="personeladsoyad" HeaderText="personeladsoyad" SortExpression="personeladsoyad" />
                  </Columns>
                  <PagerStyle CssClass="pgr" />
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:kayitperConnectionString %>" DeleteCommand="DELETE FROM [personel] WHERE [ID] = @original_ID AND (([personeladsoyad] = @original_personeladsoyad) OR ([personeladsoyad] IS NULL AND @original_personeladsoyad IS NULL))" InsertCommand="INSERT INTO [personel] ([personeladsoyad]) VALUES (@personeladsoyad)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [personeladsoyad] FROM [personel]" UpdateCommand="UPDATE [personel] SET [personeladsoyad] = @personeladsoyad WHERE [ID] = @original_ID AND (([personeladsoyad] = @original_personeladsoyad) OR ([personeladsoyad] IS NULL AND @original_personeladsoyad IS NULL))">
                  <DeleteParameters>
                      <asp:Parameter Name="original_ID" Type="Int32" />
                      <asp:Parameter Name="original_personeladsoyad" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="personeladsoyad" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="personeladsoyad" Type="String" />
                      <asp:Parameter Name="original_ID" Type="Int32" />
                      <asp:Parameter Name="original_personeladsoyad" Type="String" />
                  </UpdateParameters>
              </asp:SqlDataSource>
            

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