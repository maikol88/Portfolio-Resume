jQuery(document).ready(function(n){n(".level-bar-inner").css("width","0"),n(window).on("load",function(){n(".level-bar-inner").each(function(){var e=n(this).data("level");n(this).animate({width:e},800)})})});