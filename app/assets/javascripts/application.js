// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
function add_team_wizard(){
    
    if(jQuery("input:radio[name='gen']").is(":checked")){
        jQuery('#gender').val(jQuery('input[name=gen]:radio:checked').val());
    }
    else
    {
        jQuery('#radio_button_errors').html("please select gender");
        return false;
    }

    if(jQuery("input:radio[name='team_type']").is(":checked")){
        jQuery('#team_type_id').val(jQuery('input[name=team_type]:radio:checked').val());
    }
    else
    {
        jQuery('#radio_button_errors').html("please select team type");
        return false;
    }
    jQuery('#team_wizard_1').hide();
    jQuery('#team_wizard_2').show();
    team_wizard_step(2);
}