
jQuery(function ($) {
  // $('document').ready(function() {
    $('.is-signed-in a.clickable').on("click", function (e) {
        e.preventDefault();
        if ($(this).hasClass('panel-collapsed')) {
            // expand the panel

            $(this).parents('.is-signed-in').find('.collapsein').slideDown();
            $(this).removeClass('panel-collapsed');
            // $(this).find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
        }
        else {
            // collapse the panel

            $(this).parents('.is-signed-in').find('.collapsein').slideUp();
            $(this).addClass('panel-collapsed');
            // $(this).find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
        }
    });
  // });
});
