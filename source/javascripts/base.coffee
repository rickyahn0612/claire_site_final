$ ->    

  $('.ipad_image_set_1').animate({'opacity': 1}, 900).siblings().css({'opacity': 0}).stop()
  $('#first_slide_set_1').fadeIn(1000).siblings().hide()
  $('#first_slide_set_1 img').animate({'opacity': 1, 'margin-top': 15}, 1000)




  $(".carousel").carousel interval: false

  $("#carousel-example-generic").swiperight ->
    $("#carousel-example-generic").carousel "prev"

    id = $(@).closest('#carousel-example-generic').find('.item.active').attr('id')

    if id == 'slide1'
      $('#third-main-tab').addClass('active').siblings().removeClass('active')    

    if id == 'slide2'
      $('#first-main-tab').addClass('active').siblings().removeClass('active')

    if id == 'slide3'
      $('#second-main-tab').addClass('active').siblings().removeClass('active')

    return

  $("#carousel-example-generic").swipeleft ->
    $("#carousel-example-generic").carousel "next"
    
    id = $(@).closest('#carousel-example-generic').find('.item.active').attr('id')

    if id == 'slide1'
      $('#second-main-tab').addClass('active').siblings().removeClass('active')    

    if id == 'slide2'
      $('#third-main-tab').addClass('active').siblings().removeClass('active')

    if id == 'slide3'
      $('#first-main-tab').addClass('active').siblings().removeClass('active')

    return

  $('.carousel-indicators li').on 'click', ->
    $(this).addClass('active').siblings().removeClass('active')

  $('.first_slide_menu li').on 'click', ->
    $(this).addClass('first_slide_menu_active').siblings().removeClass('first_slide_menu_active')
    $(this).closest('#benefits_container').find('.phone_item_container').addClass('active_phone_item_container').siblings().removeClass('active_phone_item_container')
    value = $(@).data('value')

    if value == 0
      $('#first_slide_set_1').fadeIn(1000).siblings().hide().stop()
      $('#first_slide_set_1 img').animate({'opacity': 1, 'margin-top': 15}, 1000)
    else
      $('#first_slide_set_1').removeAttr "style"
      $('#first_slide_set_1 img').removeAttr "style"
    if value == 1
      $('#first_slide_set_2').fadeIn(1000).siblings().hide().stop()
      $('#first_slide_set_2 img').animate({'opacity': 1, 'margin-top': 15}, 1000)
    else
      $('#first_slide_set_2').removeAttr "style"
      $('#first_slide_set_2 img').removeAttr "style"
    if value == 2
      $('#first_slide_set_3').fadeIn(1000).siblings().hide().stop()
      $('#first_slide_set_3 img').animate({'opacity': 1, 'margin-top': 15}, 1000)
    else
      $('#first_slide_set_3').removeAttr "style"
      $('#first_slide_set_3 img').removeAttr "style"