<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ana.aspx.cs" Inherits="arama.ana" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 610px;
        }
        .auto-style2 {
            width: 100%;
            height: 453px;
        }
        .auto-style3 {
            height: 225px;
        }
        .auto-style4 {
            height: 220px;
        }
        .auto-style5 {
            height: 225px;
            width: 419px;
        }
        .auto-style6 {
            height: 220px;
            width: 419px;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            height: 202px;
        }
        .auto-style9 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table border="1" class="auto-style2">
                <tr>
                    <td class="auto-style5">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="None" Height="199px" Width="321px" AllowPaging="True">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="personeladsoyad" HeaderText="personeladsoyad" SortExpression="personeladsoyad" />
                                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:kayitperConnectionString %>" DeleteCommand="DELETE FROM [personel] WHERE [ID] = @original_ID AND (([personeladsoyad] = @original_personeladsoyad) OR ([personeladsoyad] IS NULL AND @original_personeladsoyad IS NULL))" InsertCommand="INSERT INTO [personel] ([personeladsoyad]) VALUES (@personeladsoyad)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [personel]" UpdateCommand="UPDATE [personel] SET [personeladsoyad] = @personeladsoyad WHERE [ID] = @original_ID AND (([personeladsoyad] = @original_personeladsoyad) OR ([personeladsoyad] IS NULL AND @original_personeladsoyad IS NULL))">
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
                    </td>
                    <td class="auto-style3">
                        <table class="auto-style7">
                            <tr>
                                <td>
                                    <asp:TextBox ID="adsoyad" runat="server" Width="280px"></asp:TextBox>
                                    ad soyad</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="gönder" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <table class="auto-style7">
                            <tr>
                                <td>
                                    <asp:DropDownList  ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="personeladsoyad" DataValueField="personeladsoyad">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:kayitperConnectionString %>" SelectCommand="SELECT [personeladsoyad] FROM [personel]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                        <WeekendDayStyle BackColor="#CCCCFF" />
                                    </asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">
                                    <asp:TextBox ID="gelen" runat="server"></asp:TextBox>
                                    gelen</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">
                                    <asp:TextBox ID="giden" runat="server"></asp:TextBox>
                                    giden</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="gönder" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style4">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="198px" Width="833px" AllowPaging="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" DataKeyNames="islemno">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="personeladsoyad" HeaderText="Ad Soyad" SortExpression="personeladsoyad" />
                                <asp:BoundField DataField="tarih" HeaderText="Tarih" SortExpression="tarih" />
                                <asp:BoundField DataField="gelen" HeaderText="Gelen Aramalar" SortExpression="gelen" />
                                <asp:BoundField DataField="giden" HeaderText="Giden Aramalar" SortExpression="giden" />
                                <asp:BoundField DataField="islemno" HeaderText="İşlemNo" InsertVisible="False" ReadOnly="True" SortExpression="islemno" />
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kayitperConnectionString %>" SelectCommand="SELECT [personeladsoyad], [tarih], [gelen], [giden], [islemno] FROM [aramalar]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [aramalar] WHERE [islemno] = @original_islemno AND (([personeladsoyad] = @original_personeladsoyad) OR ([personeladsoyad] IS NULL AND @original_personeladsoyad IS NULL)) AND (([tarih] = @original_tarih) OR ([tarih] IS NULL AND @original_tarih IS NULL)) AND (([gelen] = @original_gelen) OR ([gelen] IS NULL AND @original_gelen IS NULL)) AND (([giden] = @original_giden) OR ([giden] IS NULL AND @original_giden IS NULL))" InsertCommand="INSERT INTO [aramalar] ([personeladsoyad], [tarih], [gelen], [giden]) VALUES (@personeladsoyad, @tarih, @gelen, @giden)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [aramalar] SET [personeladsoyad] = @personeladsoyad, [tarih] = @tarih, [gelen] = @gelen, [giden] = @giden WHERE [islemno] = @original_islemno AND (([personeladsoyad] = @original_personeladsoyad) OR ([personeladsoyad] IS NULL AND @original_personeladsoyad IS NULL)) AND (([tarih] = @original_tarih) OR ([tarih] IS NULL AND @original_tarih IS NULL)) AND (([gelen] = @original_gelen) OR ([gelen] IS NULL AND @original_gelen IS NULL)) AND (([giden] = @original_giden) OR ([giden] IS NULL AND @original_giden IS NULL))">
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
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
