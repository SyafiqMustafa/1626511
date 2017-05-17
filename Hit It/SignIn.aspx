<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Hit_It.Sign_In" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/HitIt.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <fieldset style=""width: 350px">
        <legend class="legend2">Sign In</legend>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Username" runat="server" Text="Username :"></asp:Label>
                    <asp:TextBox ID="txtLoginUsername" Width="400px" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Password" runat="server" Text="Password :"></asp:Label>
                    <asp:TextBox ID="txtLoginPassword" Width="400px" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Sign In" OnClick="Button1_Click"></asp:Button>
                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>
    </fieldset>

</asp:Content>


