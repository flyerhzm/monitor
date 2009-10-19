function connect() {
  jQuery.get('/monitor/request?' + new Date().getTime(), function(data) {
    $('#target').append(data);
    connect();
  });
}
connect();