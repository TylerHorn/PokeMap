<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PokeMapHome.aspx.cs" Inherits="PokeMap.PokeMapHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <style>
      #map {
        width: 99%;
        height: 500px;                               
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        <img src="images/PokeMapLogo.png" width="300" />
    </div>

    <div id="map"></div>
        <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: { lat: 41.708244, lng: -93.611473 },
          zoom: 18
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDHJnU405BWwQzI3rYUJ2seWDWsqndX4RA&callback=initMap"
    async defer></script>

        <asp:ImageButton ID="imgbtnPokedex" runat="server" src="images/Pokedex.png" Height="150px" Width="170px" OnClick="imgbtnPokedex_Click"/>
        <label><< Pokedex Page.</label>
        <asp:Button runat="server" OnClick="Unnamed1_Click" />
    </form>
</body>
</html>
