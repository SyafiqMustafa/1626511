﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Hit_It.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Hit It.css" rel="stylesheet" type="text/css" />
    <script src="googlemap.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<fieldset style="width: 350px">    
    <legend class="legend">Contact Us</legend>                          
    <table>
        <tr>
            <td>
                <asp:Label ID="Name" runat="server" Text="Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" Width="400px" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFiledValidator" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter Name"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="NameValidator" runat="server" ErrorMessage="Invalid Name." ControlToValidate="txtName" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
            </td>
        </tr>          
        <tr>
            <td>
                <asp:Label ID="Email" runat="server" Text="Email :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" Width="400px" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter Email"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ErrorMessage="Invalid Email." ControlToValidate="txtEmail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
            </td>
        </tr>    
        <tr>
            <td>
                <asp:Label ID="Subject" runat="server" Text="Subject :"></asp:Label>   
            </td>
            <td>
                <asp:TextBox ID="txtSubject" Width="400px" runat="server"></asp:TextBox>                              
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSubject" ErrorMessage="Please enter Subject"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top">
                <asp:Label ID="Comments" runat="server" Text="Comments :"></asp:Label>         
            </td>
            <td>
                <asp:TextBox ID="txtComments" Width="400" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>                 
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtComments" ErrorMessage="Please enter Comments"></asp:RequiredFieldValidator>
            </td>
        </tr>                    
        <tr>
            <td>
                <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Submit" ></asp:Button>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="message" runat="server"></asp:Label>
            </td>
        </tr>
    
    
    </table>

<h3>Google Maps</h3>
    <div id="map" style="width:100%;height:400px;"></div>
 >
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA4HuS9yk4VEfpkvFqlUpwrK8_lXMwHIDE&callback=initMap">
    </script>
    
</fieldset>
    
</asp:Content>
