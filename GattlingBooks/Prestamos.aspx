<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Prestamos.aspx.vb" Inherits="GattlingBooks.Prestamos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="gridPrestamos" runat="server">
        </asp:GridView>
        <asp:EntityDataSource ID="sPrestamos" runat="server">
        </asp:EntityDataSource>
    </form>
</body>
</html>
