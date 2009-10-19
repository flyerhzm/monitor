$('div.folder').live('click', function() {
  if ($(this).hasClass('collapse')) {
    $(this).expand();
  } else {
    $(this).collapse();
  }
});

function connect() {
  jQuery.get('/monitor/request?' + new Date().getTime(), function(data) {
    $data = $(data);
    count = $data.find('.indent').size();
    $target = $('#target');
    for (var i = 0; i < count -1; i++) {
      $target = $('#target').children('div:last-child');
    }
    $target.append($data);
    if ($target.attr('id') != 'target')
      $target.addClass('folder');
      
    connect();
  });
}
connect();

$.fn.collapse = function() {
  $(this).children('div').hide();
  $(this).addClass('collapse');
}
$.fn.expand = function() {
  $(this).children('div').show();
  $(this).removeClass('collapse');
}