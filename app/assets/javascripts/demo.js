$(document).on('turbolinks:load', function(){
  new Chartist.Line('.ct-chart', {
    labels: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
    series: [
      [, 12, 9, 7, 8, 5],
      [, 5, 1, 3.5, 7, 3],
      [, 1, 3, 4, 5, 6]
    ]
  }, {
    fullWidth: true,
    chartPadding: {
      right: 100
    }
  });
});
