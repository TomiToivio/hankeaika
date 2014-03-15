// jquery.animcloud.js - (c) tuomas.salo@iki.fi
(function($) {
  
  var fill = function($target, wordlist) {
  
    if(!wordlist) {
      wordlist = [];
    }
  
    $target.html('');
    var styles = [
      {color: '#F7F6F4',  fontSize: 0},
      {color: '#aaa', fontSize: 12},
      {color: '#888', fontSize: 18},
      {color: '#666', fontSize: 22},
      {color: '#333', fontSize: 26},
      {color: '#000',  fontSize: 30}
    ];

    var $div = $('<div/>');
    $div.addClass('animcloud');
    $.each(wordlist, function(i, e) {
      var $a = $('<a/>');
      $a.attr('href', '/sanat/' + e[0]);
      $a.text(e[0]);
      $a.css(styles[e[1]]); //addClass('word'+e[1]);
      $a.addClass('word-' + e[0]);
      $div.append($a);
      $div.append(document.createTextNode(' \u00a0'));
    });
    $target.append($div);
  };
      
  var morph = function($from, $to) {
    // 1st pass: record positions
    $from.find('a').each(function() {
      var $old = $(this);
      $old.data('pos', $old.position());
    });

    $from.find('a').each(function() {
      var $old = $(this);
      $old[0].className.match(/(word-\S+)/);
      var css = $old.data('pos');
      css.position = 'absolute';
      $old.css(css);
      var animateTo;
      var $new = $to.find('.' + RegExp.$1);
      if($new[0]) {
        animateTo = $new.position();
        animateTo.fontSize = $new.css('fontSize');
        animateTo.color = $new.css('color');
        $new.addClass('ok');
        //console.log(animateTo);
      } else {
        animateTo = { color: '#F7F6F4', fontSize: 0};
      }

      //setTimeout(function() {
        $old.animate(animateTo, 500);
      //}, 500);
    });

    // handle words that were not present in $from
    $to.find('a').not('.ok').each(function() {
      var $new = $(this);

      var pos = $new.position();
      var gotoPos = jQuery.extend({}, pos);

      var css = pos;
      css.fontSize = 0;
      css.color = '#F7F6F4';
      css.position = 'absolute';
      css.left += $new.width() / 2;
      css.top += $new.height() / 2;
      var $item = $('<a/>');
      $item.text($new.text());
      $item.attr('href', '/sanat/' + $new.text());
      $item.addClass('word-' + $new.text());
      $item.css(css);
      $from.find('div').append($item);
      //setTimeout(function() {
        $item.animate({
          color: $new.css('color'),
          fontSize: $new.css('fontSize'),
          left: gotoPos.left,
          top: gotoPos.top
        }, 500);
      //}, 500);
    });
  }
  
  $.fn.animcloud = function(wordlist) {
    var $target = $(this);
    
    var $backBuffer = $target.data('bb');
    if(!$backBuffer) {
      $backBuffer = $('<div class="animcloud-backbuffer"/>');
      $target.data('bb', $backBuffer);
    }
    
    if($target.find('a')[0]) {
      // old words exists => animate
      var $bB = $('#backBuffer');
      fill($bB, wordlist);
      morph($target, $bB);
    } else {
      // first run, no animation
      fill($target, wordlist);
    }
  };
  
})(jQuery);
