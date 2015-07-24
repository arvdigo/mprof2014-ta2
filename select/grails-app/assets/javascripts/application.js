// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require bootstrap
//= require checkboxes
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	$(document).ready(function() {
		/**
		 * Activate Datepicker for Bootstrap
		 */
		//$(".datepicker").datepicker();
		
		/**
		 * Close Dropdown menus when user clicks outside a menu (on the body)
		 */
		$("body").bind("click", function (e) {
			$('.menu').parent("li").removeClass("open");
		});
		
		/**
		 * Toggle Dropdown menus when user clicks on the menu's "switch"
		 */
		$(".dropdown-toggle, .menu").click(function (e) {
			var $li = $(this).parent("li").toggleClass('open');
			return false;
		});
		
		/**
		 * Close other Dropdown menus that are open when user opens a menu
		 */
	    $('.dropdown-toggle').each(function(){
	        $(this).on("click", function () {
	        	$(this).parent().parent().siblings().each(function(){
	        		$(this).find('.dropdown').removeClass('open');
	        	});
	        });
	    });

	});
}
