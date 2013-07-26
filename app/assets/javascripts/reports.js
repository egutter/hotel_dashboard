$(function () {
        $(".chzn-select").chosen();
        $( "#from_date" ).datepicker();
        $( "#to_date" ).datepicker();
        $("#filters").hide();
        $("#showFilter").click(function(e) {
            e.preventDefault();
            $("#filters").slideToggle();
            var text = $('#showFilter').text();
            $("#showFilter").text(text == "Mostrar" ? "Ocultar" : "Mostrar");
        });
        $('#container').highcharts({
            chart: {
                zoomType: 'xy'
            },
            title: {
                text: 'Ocupación vs Rate'
            },
            subtitle: {
                text: 'desde el 01/07/2013 al 12/07/2013'
            },
            xAxis: [{
                categories: ['Lu 01/07', 'Ma 02/07', 'Mi 03/07', 'Ju 04/07', 'Vi 05/07', 'Sa 06/07',
                    'Do 07/07', 'Lu 08/07', 'Ma 09/07', 'Mi 10/07', 'Ju 11/07', 'Vi 12/07']
            }],
            yAxis: [{ // Primary yAxis
                labels: {
                    format: '$ {value}',
                    style: {
                        color: '#89A54E'
                    }
                },
                title: {
                    text: 'U$D',
                    style: {
                        color: '#89A54E'
                    }
                }
            }, { // Secondary yAxis
                title: {
                    text: 'Ocupación',
                    style: {
                        color: '#4572A7'
                    }
                },
                labels: {
                    format: '{value} %',
                    style: {
                        color: '#4572A7'
                    }
                },
                opposite: true
            }],
            tooltip: {
                shared: true
            },
            legend: {
                layout: 'vertical',
                align: 'left',
                x: 120,
                verticalAlign: 'top',
                y: 100,
                floating: true,
                backgroundColor: '#FFFFFF'
            },
            series: [{
                name: 'Ocupacion',
                color: '#4572A7',
                type: 'column',
                yAxis: 1,
                data: [49.9, 71.5, 80.4, 69.2, 44.0, 76.0, 95.6, 48.5, 16.4, 94.1, 95.6, 54.4],
                tooltip: {
                    valueSuffix: ' %'
                }
    
            }, {
                name: 'Rate',
                color: '#89A54E',
                type: 'spline',
                data: [27.0, 46.9, 59.5, 44.5, 68.2, 21.5, 35.2, 46.5, 33.3, 68.3, 53.9, 29.6],
                tooltip: {
                    valuePrefix: '$ '
                }
            }, {
                name: 'RevPar',
                color: '#FF6633',
                type: 'spline',
                data: [12.0, 16.9, 29.5, 24.5, 18.2, 11.5, 15.2, 26.5, 13.3, 38.3, 23.9, 19.6],
                tooltip: {
                    valuePrefix: '$ '
                }
            }]
        });
    });