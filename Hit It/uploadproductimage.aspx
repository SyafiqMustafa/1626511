<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploadproductimage.aspx.cs" Inherits="Hit_It.uploadproductimage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="imageFileUploadControl" runat="server" />
        <asp:Image ID="Image1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click"/>
    </div>
    </form>
</body>
</html>
