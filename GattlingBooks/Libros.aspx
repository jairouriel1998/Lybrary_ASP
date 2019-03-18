<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Libros.aspx.vb" Inherits="GattlingBooks.Libros" %>

<!DOCTYPE html>

<html>
<head>
  <title>Libros</title>
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/wallstyle03.css">
  <meta charset="utf-8">
</head>
<body>
  <!-- Login base -->
  <nav class="navbar navbar-dark fixe-top bg-dark">
               <asp:Label ID="lblUser" runat="server" Text="Libros" CssClass="navbar-brand"></asp:Label>
  </nav> 
  <form id="form1" runat="server">
  <div class="container-fluid">
    <div class="row">
      <div class="col-3 backoscuro">
        <div class="text-center">
          <h2 id="profile-name" class="profile-name-card bg-success"><b>Libros</b></h2>
          <asp:Label ID="alert" runat="server" ForeColor="#FF3300" Font-Bold="True"></asp:Label>
          <br>
          <asp:Label runat="server" ForeColor="White" Font-Bold="True">ISBN</asp:Label>
          <asp:TextBox ID="txtISBN" runat="server" CssClass="form-control form-group"></asp:TextBox>
          <asp:Label runat="server" ForeColor="White" Font-Bold="True">Titulo</asp:Label>
          <asp:TextBox ID="txtTitulo" runat="server" CssClass="form-control form-group"></asp:TextBox>
          <asp:Label runat="server" ForeColor="White" Font-Bold="True">Autor</asp:Label>
          <asp:TextBox ID="txtAutor" runat="server" CssClass="form-control form-group"></asp:TextBox>
          <asp:Label runat="server" ForeColor="White" Font-Bold="True">Categoria</asp:Label>
          <asp:TextBox ID="txtCategoria" runat="server" CssClass="form-control form-group"></asp:TextBox>
          <asp:Label runat="server" ForeColor="white" Font-Bold="True">Disponibles</asp:Label>
          <asp:TextBox ID="txtDisponibles" runat="server" CssClass="form-control form-group" TextMode="Number"></asp:TextBox>
           <br>
                <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-lg btn-success btn-block btn-signin" Text="Guardar" /> 
        </div>
      </div>
      <div class="col-sm"> 
          <asp:GridView ID="dtLibros" runat="server" BackColor="#CCFFCC" BorderColor="#CCCCCC" BorderStyle="Inset" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1" AllowPaging="True" CssClass="table-responsive padder" ForeColor="#CCFFFF" HorizontalAlign="Center">
              <Columns>
                  <asp:CommandField ButtonType="Button" ShowSelectButton="True">
                  <ControlStyle CssClass="btn btn-success" />
                  </asp:CommandField>
                  <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                  <ControlStyle CssClass="btn btn-danger" />
                  </asp:CommandField>
              </Columns>
              <FooterStyle BackColor="White" ForeColor="#000066" />
              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
              <RowStyle ForeColor="#000066" />
              <SelectedRowStyle BackColor="#99FF66" Font-Bold="True" ForeColor="#000066" BorderColor="Black" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#007DBB" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#00547E" />
          </asp:GridView>
          <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="mostrar" TypeName="GattlingBooks.dLibros"></asp:ObjectDataSource>
        </div>
    </div>
   
  </div>
      </form>
  <!-- end login base -->
  <script src="assets/js/jquery-3.2.1.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
