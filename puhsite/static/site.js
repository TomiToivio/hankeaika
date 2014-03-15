/*
$('a[name=fb_share]').each(function() {
  $(this).attr('share_url', $(this).attr('data:share_url'));
});
*/
$(function() {
  $('#show-all-speakers').click(function(e) {
    $('ul.top-speakers').addClass('show-all');
    e.preventDefault();
  });
  
  $('input, textarea').placeholder();

  $('#toggle-subscribe').click(function(e) {
      $('#subscribe').slideToggle(500);
      e.preventDefault();
  });
  
  $('#subscribe input[name=keywords]').click(function(e) {
    $('#subscribe input[value=keywords]').attr('checked','checked');
  });
  
  $('#subscribe input[name=email]').click(function(e) {
    $('#subscribe input[value=email]').attr('checked','checked');
  });
  
  $('#subscribe select[name=speaker_id]').click(function(e) {
    $('#subscribe input[value=speaker]').attr('checked','checked');
  });
  $('#subscribe select[name=speaker_group]').click(function(e) {
    $('#subscribe input[value=group]').attr('checked','checked');
  });
  
  if(location.hash.match(/#tilaa-(\d+)/)) {
    location.hash = '';
    $('#subscribe select[name=speaker_id]').val(RegExp.$1);
    $('#subscribe input[value=speaker]').attr('checked','checked');
    $('#toggle-subscribe').trigger('click');
  }
  
  $('#subscribe form').submit(function(e) {
    var form = this;
    var $form = $(form);
    
    form.elements.email.value = $.trim(form.elements.email.value);
    
    e.preventDefault();
    
    $.ajax(form.action, {
      type: 'POST',
      data: $form.serialize() + '&validate=1',
      complete: function(jqxhr, textStatus) {
        if(textStatus == 'success') {
          form.submit();
        } else {
          alert("Tarkista sähköpostiosoitteen muoto.");
        }
      }
    });
  });
});

