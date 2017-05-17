<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="Hit_It.logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/HitIt.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
     <asp:Label ID="Label1" runat="server" Text="Successfully Logged In!"></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="Button1_Click" />
</asp:Content>
