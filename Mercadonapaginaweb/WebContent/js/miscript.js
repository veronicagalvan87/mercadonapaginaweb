/**
 * 
 */

$(document).ready(function() {

	$("#logearse").hide();
	$("#botonlogin").on("click", function() {
		$("#logearse").toggle();

	});

	$("#registrarse").hide();
	$("#botonusurionuevo").on("click", function() {
		$("#registrarse").toggle();

	});

});