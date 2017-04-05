<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Hit_It.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Hit It.css" rel="stylesheet" type="text/css" />
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
        </tr>          
        <tr>
            <td>
                <asp:Label ID="Email" runat="server" Text="Email :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" Width="400px" runat="server"></asp:TextBox>
            </td>
        </tr>    
        <tr>
            <td>
                <asp:Label ID="Subject" runat="server" Text="Subject :"></asp:Label>   
            </td>
            <td>
                <asp:TextBox ID="txtSubject" Width="400px" runat="server"></asp:TextBox>                              
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top">
                <asp:Label ID="Comments" runat="server" Text="Comments :"></asp:Label>         
            </td>
            <td>
                <asp:TextBox ID="txtComments" Width="400" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>                 
            </td>
        </tr>                    
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" />
            </td>
        </tr>
    
    
    </table>

<h3>Google Maps</h3>
    <div id="map">
    <script>
      function initMap() {
        var uluru = {lat: 4.5353, lng: 114.7277};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA4HuS9yk4VEfpkvFqlUpwrK8_lXMwHIDE&callback=initMap">
    </script>
    </div>
</fieldset>
    
</asp:Content>
