
$ ->    

  firstSlideContentSwap = (slide_set, slide_img) ->
    $(slide_set).fadeIn(1000).siblings().hide().stop()
    $(slide_img).animate({'opacity': 1, 'margin-top': 15}, 1500)
  removeAttributes = (slide_set, slide_img) ->
    $(slide_set).removeAttr "style"
    $(slide_img).removeAttr "style"

  $('.ipad_image_set_1 .slide_two_image_styles').fadeIn()

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
    $('.carousel-inner').animate({'height': '780px', 'opacity': '1'}, 1200)

  $('.carousel-indicators li:first').on 'click', ->
    $('#first_slide_set_1').fadeIn(1000).siblings().hide().stop()
    $('.first_phone').animate({'opacity': 1, 'margin-top': 15}, 1000, ->
      $('.second_phone').animate({'opacity': 1, 'margin-top': 15}, 1000, ->
        $('.third_phone').animate({'opacity': 1, 'margin-top': 15}, 1000)       
      )    
    )

  $('.first_slide_menu li').on 'click', ->
    $(this).addClass('slide_menu_active').siblings().removeClass('slide_menu_active')
    $(this).closest('#benefits_container').find('.phone_item_container').addClass('active_phone_item_container').siblings().removeClass('active_phone_item_container')
    value = $(@).data('value')

    if value == 0
      state = true
      $('#first_slide_set_1').fadeIn(1000).siblings().hide().stop()
      $('.first_phone').animate({'opacity': 1, 'margin-top': 15}, 1000, ->
        $('.second_phone').animate({'opacity': 1, 'margin-top': 15}, 1000, ->
          $('.third_phone').animate({'opacity': 1, 'margin-top': 15}, 1000)       
        )    
      )
    else  
      removeAttributes('#first_slide_set_1', '#first_slide_set_1 img').stop()

    if value == 1
      $('#first_slide_set_2').fadeIn(1000).siblings().hide().stop()
      $('.second_set_first_phone').animate({'opacity': 1, 'margin-top': 15}, 1000, ->
        $('.second_set_second_phone').animate({'opacity': 1, 'margin-top': 15}, 1000, ->
          $('.second_set_third_phone').animate({'opacity': 1, 'margin-top': 15}, 1000)       
        )    
      )
    else
      removeAttributes('#first_slide_set_2', '#first_slide_set_2 img').stop()

    if value == 2
      $('#first_slide_set_3').fadeIn(1000).siblings().hide().stop()
      $('.third_set_first_phone').animate({'opacity': 1, 'margin-top': 15}, 1000, ->
        $('.third_set_second_phone').animate({'opacity': 1, 'margin-top': 15}, 1000, ->
          $('.third_set_third_phone').animate({'opacity': 1, 'margin-top': 15}, 1000)       
        )    
      )
    else
      removeAttributes('#first_slide_set_3', '#first_slide_set_3 img').stop()

  $('.second_slide_menu li').on 'click', ->
    $(this).addClass('slide_menu_active').siblings().removeClass('slide_menu_active')
    $(this).closest('#benefits_container').find('.phone_item_container').addClass('active_phone_item_container').siblings().removeClass('active_phone_item_container')
    value = $(@).data('value')

    if value == 0
      $('.ipad_image_set_1').fadeIn().siblings().hide().stop()
    if value == 1
      $('.ipad_image_set_2').fadeIn().siblings().hide().stop()
    if value == 2
      $('.ipad_image_set_3').fadeIn().siblings().hide().stop()
    if value == 3
      $('.ipad_image_set_4').fadeIn().siblings().hide().stop()

