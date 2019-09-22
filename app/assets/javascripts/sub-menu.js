// category-submenu
$(function(){
  $('.js-wrap-category').hover(function(){
      $('.sub-menu-category').slideDown(0.1);
  }, function() {
      $('.sub-menu-category').slideUp(0.1);
  });
});

// brand-submenu
$(function(){
  $('.js-wrap-brand').hover(function(){
      $('.sub-menu-brand').slideDown(0.1);
  }, function() {
      $('.sub-menu-brand').slideUp(0.1);
  });
});