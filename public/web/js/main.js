


$(document).ready(function() {

    // Open modal
    $('.dropdown_btn').click(function() {

      $('.dropdown_menu').toggle();

    });



        // Open modal
        $('.azhr_btn').click(function() {

            $('.navbar_res_items').show();

          $('.navbar_res_items').addClass('azhr');

        });



        // Open modal
        $('.close_btn').click(function() {

            $('.navbar_res_items').hide();

          $('.navbar_res_items').removeClass('azhr');

        });





});
