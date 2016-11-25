<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PokeMapHome.aspx.cs" Inherits="PokeMap.PokeMapHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Home.css" rel="stylesheet" />
    <title>PokeMap Home</title>
  
</head>
<body>
    <form id="form1" runat="server" defaultbutton="DoNothing">
    <div class="header">
        <img src="images/PokeMapLogo.png" width="300" />
    </div>

<input id="pac-input" class="controls" type="text" placeholder="Search Box"/>
    <div id="map"></div>
    <script>

      function initAutocomplete() {
        var map = new google.maps.Map(document.getElementById('map'), {
            center: { lat: 41.6005448, lng: -93.60910639999997 },
          zoom: 13,
          mapTypeId: 'roadmap'
        });

        // Create the search boxt.
        var input = document.getElementById('pac-input');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        
        map.addListener('bounds_changed', function() {
          searchBox.setBounds(map.getBounds());
        });

        var markers = [];
        // Listen for the search bar
        searchBox.addListener('places_changed', function() {
          var places = searchBox.getPlaces();

          if (places.length == 0) {
            return;
          }

          // Clear out the old markers.
          markers.forEach(function(marker) {
            marker.setMap(null);
          });
          markers = [];

          // For each place get name and location.
          var bounds = new google.maps.LatLngBounds();
          places.forEach(function(place) {
            if (!place.geometry) {
              console.log("Returned place contains no geometry");
              return;
            }

          
            // Create a custom marker for each place.
            markers.push(new google.maps.Marker({
              map: map,
              icon: 'images/Icons/pokesition.png',
              title: place.name,
              position: place.geometry.location
            }));

            if (place.geometry.viewport) {
              // Only geocodes have viewport.
              bounds.union(place.geometry.viewport);
            } else {
              bounds.extend(place.geometry.location);
            }
          });
          map.fitBounds(bounds);
        });
      }
 


    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBuLexEkvYXnJFMGqwsIbBOpf_PgJaAfZA&libraries=places&callback=initAutocomplete"
         async defer></script>

        
        <asp:Button ID="DoNothing" runat="server" Enabled="false" style="display: none;" />

        <asp:ImageButton ID="imgbtnPokedex" runat="server" src="images/Pokedex.png" Height="150px" Width="170px" OnClick="imgbtnPokedex_Click" />
        <label><< Pokedex Page.</label>
    </form>
</body>
</html>
