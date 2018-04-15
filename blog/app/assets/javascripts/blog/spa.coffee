$ ->
  $('body').addClass 'landing-page'
  $('body').attr 'id', 'page-top'
  $('body').scrollspy
    target: '.navbar-fixed-top'
    offset: 80
  # Page scrolling feature
  $('a.page-scroll').bind 'click', (event) ->
    link = $(this)
    $('html, body').stop().animate { scrollTop: $(link.attr('href')).offset().top - 50 }, 500
    event.preventDefault()
    $('#navbar').collapse 'hide'
    return
  cbpAnimatedHeader = do ->
    docElem = document.documentElement
    header = document.querySelector('.navbar-default')
    didScroll = false
    changeHeaderOn = 200

    init = ->
      window.addEventListener 'scroll', ((event) ->
        if !didScroll
          didScroll = true
          setTimeout scrollPage, 250
        return
      ), false
      return

    scrollPage = ->
      sy = scrollY()
      if sy >= changeHeaderOn
        $(header).addClass 'navbar-scroll'
      else
        $(header).removeClass 'navbar-scroll'
      didScroll = false
      return

    scrollY = ->
      window.pageYOffset or docElem.scrollTop

    init()
    return
  return
