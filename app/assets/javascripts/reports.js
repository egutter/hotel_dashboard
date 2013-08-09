var ReportsChart = {
    chart: null,
    refresh: function() {
        var url = $('#chart-container').attr('data-occupancy-path');
        var from_date = $('#from_date').val();
        var to_date = $('#to_date').val();
        var _this = this;
        $.get(url, {from_date: from_date, to_date: to_date}, function (data) {
            _this.chart.series[0].setData(data['occupancy'], true);
            _this.chart.series[1].setData(data['rate'], true);
            _this.chart.series[2].setData(data['revPar'], true);
            _this.chart.xAxis[0].setCategories(data['reservation_date'], true);
        });
    },
    init: function() {
        var options = {
            chart: {
                renderTo: 'chart-container',
                zoomType: 'xy'
            },
            title: {
                text: 'Ocupación vs Rate'
            },
            subtitle: {
                text: 'desde el 01/07/2013 al 12/07/2013'
            },
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
                tooltip: {
                    valueSuffix: ' %'
                }

            }, {
                name: 'Rate',
                color: '#89A54E',
                type: 'spline',
                tooltip: {
                    valuePrefix: '$ '
                }
            }, {
                name: 'RevPar',
                color: '#FF6633',
                type: 'spline',
                tooltip: {
                    valuePrefix: '$ '
                }
            }]
        };
        this.chart = new Highcharts.Chart(options);
        this.refresh();
    }
};

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
        $("#filter-report").click(function(e) {
            ReportsChart.refresh();
            e.preventDefault();
        });
        ReportsChart.init();
    });