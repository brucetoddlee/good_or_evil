//= require jquery
//= require jquery_ujs
//= require handlebars.runtime
//= require foundation/foundation
//= require foundation/foundation.reveal
//= require_tree .

$(function(){ $(document).foundation({
  animation: 'fadeAndPop',
  animation_speed: 250,
  close_on_background_click: true,
  dismiss_modal_class: 'close-reveal-modal',
  bg_class: 'reveal-modal-bg',
  bg : $('.reveal-modal-bg'),
  css : {
    open : {
      'opacity': 0,
      'visibility': 'visible',
      'display' : 'block'
    },
    close : {
      'opacity': 1,
      'visibility': 'hidden',
      'display': 'none'
    }
  }
});
});