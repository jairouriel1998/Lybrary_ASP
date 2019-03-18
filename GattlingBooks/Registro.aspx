<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="GattlingBooks.Registro" %>

<!DOCTYPE html>

<html>
<head>
  <title>Registro</title>
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/wallstyle02.css">
  <meta charset="utf-8">
</head>
<body>
  <!-- Login base -->
  <div class="container-fluid">
    <div class="row toper">
      <div class="col-sm"> </div>
      <div class="col-sm backdark">
        <div class="text-center">
          <img id="profile-img" class="rounded-circle profile-img-card" src="assets/face.png"/>
         <form id="form1" runat="server">
          <h2 id="profile-name" class="profile-name-card"><b>Registrarse</b></h2>
          <asp:Label ID="alert" runat="server" ForeColor="#FF3300" Font-Bold="True"></asp:Label>
          <br>
          <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control form-group" placeholder="Nombre"></asp:TextBox>
          <asp:TextBox ID="txtApellidos" runat="server" CssClass="form-control form-group" placeholder="Apellidos"></asp:TextBox>
          <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control form-group" TextMode="Email" placeholder="Correo"></asp:TextBox>
          <asp:TextBox ID="txtContrasena" runat="server" CssClass="form-control form-group" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
            <br>
                <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-lg btn-primary btn-block btn-signin" Text="Registrarse" />
            <br>
            <a class="btn btn-link text-light" href="Login.aspx">¿Ya estás registrado?</a>
            <br>
            </form>
        </div>
      </div>
      <div class="col-sm"> </div>
    </div>
  </div>
  <!-- end login base -->
  <script src="assets/js/jquery-3.2.1.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
