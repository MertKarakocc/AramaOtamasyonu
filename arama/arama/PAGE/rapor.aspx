<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rapor.aspx.cs" Inherits="arama.PAGE.rapor" %>

<!doctype html>
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
            <div class="col-md-12" id="baslık2"><h5>RAPOR</h5></div>
        </div>
        <br>
        <div class="row">     
          <div class="col-md-12 " id="rapor">
            
            
              <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="islemno" DataSourceID="SqlDataSource1" ForeColor="Black" Height="465px" Width="749px">
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      <asp:BoundField DataField="personeladsoyad" HeaderText="personeladsoyad" SortExpression="personeladsoyad" />
                      <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
                      <asp:BoundField DataField="gelen" HeaderText="gelen" SortExpression="gelen" />
                      <asp:BoundField DataField="giden" HeaderText="giden" SortExpression="giden" />
                      <asp:BoundField DataField="islemno" HeaderText="islemno" InsertVisible="False" ReadOnly="True" SortExpression="islemno" />
                  </Columns>
                  <FooterStyle BackColor="#CCCCCC" />
                  <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                  <RowStyle BackColor="White" />
                  <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F1F1F1" />
                  <SortedAscendingHeaderStyle BackColor="#808080" />
                  <SortedDescendingCellStyle BackColor="#CAC9C9" />
                  <SortedDescendingHeaderStyle BackColor="#383838" />
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:kayitperConnectionString %>" DeleteCommand="DELETE FROM [aramalar] WHERE [islemno] = @original_islemno AND (([personeladsoyad] = @original_personeladsoyad) OR ([personeladsoyad] IS NULL AND @original_personeladsoyad IS NULL)) AND (([tarih] = @original_tarih) OR ([tarih] IS NULL AND @original_tarih IS NULL)) AND (([gelen] = @original_gelen) OR ([gelen] IS NULL AND @original_gelen IS NULL)) AND (([giden] = @original_giden) OR ([giden] IS NULL AND @original_giden IS NULL))" InsertCommand="INSERT INTO [aramalar] ([personeladsoyad], [tarih], [gelen], [giden]) VALUES (@personeladsoyad, @tarih, @gelen, @giden)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [aramalar]" UpdateCommand="UPDATE [aramalar] SET [personeladsoyad] = @personeladsoyad, [tarih] = @tarih, [gelen] = @gelen, [giden] = @giden WHERE [islemno] = @original_islemno AND (([personeladsoyad] = @original_personeladsoyad) OR ([personeladsoyad] IS NULL AND @original_personeladsoyad IS NULL)) AND (([tarih] = @original_tarih) OR ([tarih] IS NULL AND @original_tarih IS NULL)) AND (([gelen] = @original_gelen) OR ([gelen] IS NULL AND @original_gelen IS NULL)) AND (([giden] = @original_giden) OR ([giden] IS NULL AND @original_giden IS NULL))">
                  <DeleteParameters>
                      <asp:Parameter Name="original_islemno" Type="Int32" />
                      <asp:Parameter Name="original_personeladsoyad" Type="String" />
                      <asp:Parameter DbType="Date" Name="original_tarih" />
                      <asp:Parameter Name="original_gelen" Type="Int32" />
                      <asp:Parameter Name="original_giden" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="personeladsoyad" Type="String" />
                      <asp:Parameter DbType="Date" Name="tarih" />
                      <asp:Parameter Name="gelen" Type="Int32" />
                      <asp:Parameter Name="giden" Type="Int32" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="personeladsoyad" Type="String" />
                      <asp:Parameter DbType="Date" Name="tarih" />
                      <asp:Parameter Name="gelen" Type="Int32" />
                      <asp:Parameter Name="giden" Type="Int32" />
                      <asp:Parameter Name="original_islemno" Type="Int32" />
                      <asp:Parameter Name="original_personeladsoyad" Type="String" />
                      <asp:Parameter DbType="Date" Name="original_tarih" />
                      <asp:Parameter Name="original_gelen" Type="Int32" />
                      <asp:Parameter Name="original_giden" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
            
            
          </div>    
          
            

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