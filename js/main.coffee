
scroller   = null
controller = null
maxScroll  = 1000
updateScrollPos = (that, it)->
  console.log 'aaa'
  (that.y < maxScroll) and (that.y = maxScroll)
  controller.setScrollContainerOffset(0, -(that.y>>0))
    .triggerCheckAnim(true)

scroller = new IScroll '#js-main',
  probeType: 3
  mouseWheel: true
  deceleration: 0.001

scroller.on 'scroll',    -> updateScrollPos this, it
scroller.on 'scrollEnd', -> updateScrollPos this, it

# document.addEventListener 'touchmove', ((e)-> e.preventDefault()), false

controller = $.superscrollorama
  triggerAtCenter: false
  playoutAnimations: true

it = @
