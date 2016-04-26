// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .


	function initMap() {
		var directionsService = new google.maps.DirectionsService;
		var directionsDisplay = new google.maps.DirectionsRenderer;

		var map = new google.maps.Map(document.getElementById('map'), {
			center: {lat: 10.983812, lng: -74.818017},
			zoom: 15
		});
		directionsDisplay.setMap(map);

		
		$( document ).ready( function(){
			$('#btn').click(function(){
				/*window.alert($("#end").text());
				window.alert($("#star").text());*/
				calculateAndDisplayRoute(directionsService, directionsDisplay);
			});


		} );
		/*document.getElementById('btn').addEventListener('click', onChangeHandler);*/

	}

	function calculateAndDisplayRoute(directionsService, directionsDisplay) {
		directionsService.route({
			
			origin: $("#star").text()+"Barranquilla",
			destination: $("#end").text()+"Barranquilla",
			travelMode: google.maps.TravelMode.DRIVING
		}, function(response, status) {
			if (status === google.maps.DirectionsStatus.OK) {
				directionsDisplay.setDirections(response);
			} else {
				window.alert('Directions request failed due to ' + status);
			}
		});
	}
