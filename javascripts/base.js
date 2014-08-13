(function() {
  $(function() {
    var firstSlideContentSwap, removeAttributes;
    firstSlideContentSwap = function(slide_set, slide_img) {
      $(slide_set).fadeIn(1000).siblings().hide().stop();
      return $(slide_img).animate({
        'opacity': 1,
        'margin-top': 15
      }, 1500);
    };
    removeAttributes = function(slide_set, slide_img) {
      $(slide_set).removeAttr("style");
      return $(slide_img).removeAttr("style");
    };
    $('#first_slide_set_1').fadeIn(1000).siblings().hide().stop();
    $('.first_phone').animate({
      'opacity': 1,
      'margin-top': 15
    }, 1000, function() {
      return $('.second_phone').animate({
        'opacity': 1,
        'margin-top': 15
      }, 1000, function() {
        return $('.third_phone').animate({
          'opacity': 1,
          'margin-top': 15
        }, 1000);
      });
    });
    $('.ipad_image_set_1 .slide_two_image_styles').fadeIn();
    $(".carousel").carousel({
      interval: false
    });
    $("#carousel-example-generic").swiperight(function() {
      var id;
      $("#carousel-example-generic").carousel("prev");
      id = $(this).closest('#carousel-example-generic').find('.item.active').attr('id');
      if (id === 'slide1') {
        $('#third-main-tab').addClass('active').siblings().removeClass('active');
      }
      if (id === 'slide2') {
        $('#first-main-tab').addClass('active').siblings().removeClass('active');
      }
      if (id === 'slide3') {
        $('#second-main-tab').addClass('active').siblings().removeClass('active');
      }
    });
    $("#carousel-example-generic").swipeleft(function() {
      var id;
      $("#carousel-example-generic").carousel("next");
      id = $(this).closest('#carousel-example-generic').find('.item.active').attr('id');
      if (id === 'slide1') {
        $('#second-main-tab').addClass('active').siblings().removeClass('active');
      }
      if (id === 'slide2') {
        $('#third-main-tab').addClass('active').siblings().removeClass('active');
      }
      if (id === 'slide3') {
        $('#first-main-tab').addClass('active').siblings().removeClass('active');
      }
    });
    $('.carousel-indicators li').on('click', function() {
      return $(this).addClass('active').siblings().removeClass('active');
    });
    $('.first_slide_menu li').on('click', function() {
      var value;
      $(this).addClass('slide_menu_active').siblings().removeClass('slide_menu_active');
      $(this).closest('#benefits_container').find('.phone_item_container').addClass('active_phone_item_container').siblings().removeClass('active_phone_item_container');
      value = $(this).data('value');
      if (value === 0) {
        $('#first_slide_set_1').fadeIn(1000).siblings().hide().stop();
        $('.first_phone').animate({
          'opacity': 1,
          'margin-top': 15
        }, 1000, function() {
          return $('.second_phone').animate({
            'opacity': 1,
            'margin-top': 15
          }, 1000, function() {
            return $('.third_phone').animate({
              'opacity': 1,
              'margin-top': 15
            }, 1000);
          });
        });
      } else {
        removeAttributes('#first_slide_set_1', '#first_slide_set_1 img');
      }
      if (value === 1) {
        $('#first_slide_set_2').fadeIn(1000).siblings().hide().stop();
        $('.second_set_first_phone').animate({
          'opacity': 1,
          'margin-top': 15
        }, 1000, function() {
          return $('.second_set_second_phone').animate({
            'opacity': 1,
            'margin-top': 15
          }, 1000, function() {
            return $('.second_set_third_phone').animate({
              'opacity': 1,
              'margin-top': 15
            }, 1000);
          });
        });
      } else {
        removeAttributes('#first_slide_set_2', '#first_slide_set_2 img');
      }
      if (value === 2) {
        $('#first_slide_set_3').fadeIn(1000).siblings().hide().stop();
        return $('.third_set_first_phone').animate({
          'opacity': 1,
          'margin-top': 15
        }, 1000, function() {
          return $('.third_set_second_phone').animate({
            'opacity': 1,
            'margin-top': 15
          }, 1000, function() {
            return $('.third_set_third_phone').animate({
              'opacity': 1,
              'margin-top': 15
            }, 1000);
          });
        });
      } else {
        return removeAttributes('#first_slide_set_3', '#first_slide_set_3 img');
      }
    });
    return $('.second_slide_menu li').on('click', function() {
      var value;
      $(this).addClass('slide_menu_active').siblings().removeClass('slide_menu_active');
      $(this).closest('#benefits_container').find('.phone_item_container').addClass('active_phone_item_container').siblings().removeClass('active_phone_item_container');
      value = $(this).data('value');
      if (value === 0) {
        $('.ipad_image_set_1').fadeIn().siblings().hide().stop();
      }
      if (value === 1) {
        $('.ipad_image_set_2').fadeIn().siblings().hide().stop();
      }
      if (value === 2) {
        $('.ipad_image_set_3').fadeIn().siblings().hide().stop();
      }
      if (value === 3) {
        return $('.ipad_image_set_4').fadeIn().siblings().hide().stop();
      }
    });
  });

}).call(this);
