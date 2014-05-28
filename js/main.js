(function() {
  var controller, it, maxScroll, scroller, updateScrollPos;

  scroller = null;

  controller = null;

  maxScroll = 1000;

  updateScrollPos = function(that, it) {
    console.log('aaa');
    (that.y < maxScroll) && (that.y = maxScroll);
    return controller.setScrollContainerOffset(0, -(that.y >> 0)).triggerCheckAnim(true);
  };

  scroller = new IScroll('#js-main', {
    probeType: 3,
    mouseWheel: true,
    deceleration: 0.001
  });

  scroller.on('scroll', function() {
    return updateScrollPos(this, it);
  });

  scroller.on('scrollEnd', function() {
    return updateScrollPos(this, it);
  });

  controller = $.superscrollorama({
    triggerAtCenter: false,
    playoutAnimations: true
  });

  it = this;

}).call(this);
