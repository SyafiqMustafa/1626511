<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Hit_It.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="CSS/HitIt.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <fieldset style="width: 350px"></fieldset>
    <table>
        <tr>
            <td>
                <asp:Label ID="RegisterUsername" runat="server" Text="Username :"></asp:Label>
                <asp:TextBox ID="txtRegisterUsername" runat="server" Width=" 400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="RegisterEmail" runat="server" Text="Email :"></asp:Label>
                <asp:TextBox ID="txtRegisterEmail" runat="server" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="RegisterPassword" runat="server" Text="Password :"></asp:Label>
                <asp:TextBox ID="txtRegisterPassword" runat="server" Width="400px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>    
                <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>   
    </table>

</asp:Content>
