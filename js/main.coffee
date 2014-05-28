
updateScrollPos = ()->
  currScroll = -(this.y>>0)
  console.log currScroll
  # if you need super.scrollorama
  # controller.setScrollContainerOffset(0, currScroll)
  #   .triggerCheckAnim(true)
  true

scroller = new IScroll '#js-main',
  probeType: 3
  mouseWheel: true
  deceleration: 0.001
  scrollbars: true
  interactiveScrollbars: true
  shrinkScrollbars: 'scale'
  fadeScrollbars: true

# scroller.on 'scroll',    -> updateScrollPos.call(this)
# scroller.on 'scrollEnd', -> updateScrollPos.call(this)
# document.addEventListener 'touchmove', ((e)-> e.preventDefault()), false

# if you need super.scrollorama
# controller = $.superscrollorama
#   triggerAtCenter: false
#   playoutAnimations: true
