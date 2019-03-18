<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="GattlingBooks.Login" %>

<!DOCTYPE html>

<html>
<head>
  <title>Login</title>
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/wallstyle01.css">
  <meta charset="utf-8">
</head>
<body>
  <!-- Login base -->
  <div class="container-fluid">
    <div class="row toper">
      <div class="col-sm"> </div>
      <div class="col-sm backdark">
        <div class="text-center">
          <img id="profile-img" class="rounded-circle profile-img-card" src="assets/face.png"/><form id="form1" runat="server">
          <h2 id="profile-name" class="profile-name-card"><b>Inicio de sesión</b></h2>
            <asp:Label ID="alert" runat="server" ForeColor="#FF3300" Font-Bold="True"></asp:Label>
            <br>
            <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control form-group" TextMode="Email" placeholder="Correo"></asp:TextBox>
                <asp:TextBox ID="txtContrasena" runat="server" CssClass="form-control form-group" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
            <br>
                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-lg btn-primary btn-block btn-signin" Text="INICIAR SESIÓN" />
            <br>
            <a class="btn btn-link text-light" href="Registro.aspx">¿No tienes una cuenta?</a>
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

