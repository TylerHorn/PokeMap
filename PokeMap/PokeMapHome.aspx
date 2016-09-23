<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PokeMapHome.aspx.cs" Inherits="PokeMap.PokeMapHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      #map {
        width: 99%;
        height: 800px;                               
      }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img src="Images/PokeMapLogo.png" width="300" />
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script>
            $(function(){
                $.get("http://10.9.1.215:5100/").done(function(data){
                    console.log(data);
                });
            });
        </script>

    </form>
</body>
</html>
