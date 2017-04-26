function initMap() {
    var uluru = { lat: 4.8857316, lng: 114.9316699 }; 
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 17,
        center: uluru
    });
    var marker = new google.maps.Marker({
        position: uluru,
        map: map
    });
}