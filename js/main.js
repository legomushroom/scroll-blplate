(function() {
  var scroller, updateScrollPos;

  updateScrollPos = function() {
    var currScroll;
    currScroll = -(this.y >> 0);
    console.log(currScroll);
    return true;
  };

  scroller = new IScroll('#js-main', {
    probeType: 3,
    mouseWheel: true,
    deceleration: 0.001,
    scrollbars: true,
    interactiveScrollbars: true,
    shrinkScrollbars: 'scale',
    fadeScrollbars: true
  });

}).call(this);
