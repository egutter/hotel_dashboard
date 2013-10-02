var PickupTable = {
    refresh: function(showAlert) {
        var url = $('#pickup-table').data('pickup-path');
        var fromDate = $('#from_date').val();
        var toDate = $('#to_date').val();
        var pickupFromDate = $('#pickup_from_date').val();
        var pickupToDate = $('#pickup_to_date').val();
        var rateCode = $('#rate-code-filter').val();
        var originOfBooking = $('#origin-of-booking-filter').val();
        $.get(url, {from_date: fromDate,
                    to_date: toDate,
                    pickup_from_date: pickupFromDate,
                    pickup_to_date: pickupToDate,
                    rate_code: rateCode,
                    origin_of_booking: originOfBooking}, function (data) {
            $('#pickup-table').replaceWith(data);
        }).done(function() {
            if (showAlert)
                $('#success-alert-notification').fadeIn('slow').fadeOut(2000);
        }).fail(function(jqXHR, textStatus, errorThrown) { alert('Se produjo un error: [' + textStatus +': ' + errorThrown+']') });
    }
};
var ReportsChart = {
    chart: null,
    refresh: function() {
        var url = $('#chart-container').data('occupancy-path');
        var fromDate = $('#from_date').val();
        var toDate = $('#to_date').val();
        var  rateCode = $('#rate-code-filter').val();
        var  originOfBooking = $('#origin-of-booking-filter').val();
        var _this = this;
        $.get(url, {from_date: fromDate,
                    to_date: toDate,
                    rate_code: rateCode,
                    origin_of_booking: originOfBooking}, function (data) {
            _this.chart.series[0].setData(data['occupancy'], true);
            _this.chart.series[1].setData(data['rate'], true);
            _this.chart.series[2].setData(data['revPar'], true);
            _this.chart.xAxis[0].setCategories(data['reservation_date'], true);
        }).done(function() { $('#success-alert-notification').fadeIn('slow').fadeOut(2000); })
            .fail(function(jqXHR, textStatus, errorThrown) { alert('Se produjo un error: [' + textStatus +': ' + errorThrown+']') });
    },
    validateTargetKpiParams: function(adrTarget, occupancyTarget, revParTarget) {
        if (revParTarget == '') {
            alert('Debe completar el valor objetivo para el campo RevPar');
            $('#revpar_target').focus();
            return -1;
        }
        if (adrTarget == '' && occupancyTarget == '') {
            alert('Debe completar el valor objetivo para el campo ADR o el campo Ocupación.');
            $('#adr_target').focus();
            return -1;
        } else if (adrTarget != '' && occupancyTarget != '') {
            alert('No puede completar ambos campos ADR y Ocupación. Debe completar solamente uno ellos.');
            $('#adr_target').focus();
            return -1;
        }
        return 0;
    },
    applyTargetKpi: function() {
        var adrTarget = $('#adr_target').val().trim();
        var occupancyTarget = $('#occupancy_target').val().trim();
        var revParTarget = $('#revpar_target').val().trim();
        if (this.validateTargetKpiParams(adrTarget, occupancyTarget, revParTarget) != 0) {
            return -1;
        }
        var url = $('#chart-container').data('target-kpi-path');
        var fromDate = $('#from_date').val();
        var toDate = $('#to_date').val();
        var rateCode = $('#rate-code-filter').val();
        var originOfBooking = $('#origin-of-booking-filter').val();
        var _this = this;
        $.get(url, {from_date: fromDate,
                    to_date: toDate,
                    rate_code: rateCode,
                    origin_of_booking: originOfBooking,
                    adr_target: adrTarget,
                    occupancy_target: occupancyTarget,
                    rev_par_target: revParTarget}, function (data) {
            if (_this.chart.series[3] != undefined) {
                _this.chart.series[3].remove();
            }
            if (adrTarget != '') {
                _this.addTargetOccupancy(_this.chart, data);
            } else {
                _this.addTargetAdr(_this.chart, data);
            }
        }).done(function() { $('#success-alert-notification').fadeIn('slow').fadeOut(2000); })
            .fail(function(jqXHR, textStatus, errorThrown) { alert('Se produjo un error: [' + textStatus +': ' + errorThrown+']') });
    },
    addTargetOccupancy: function(chart, data) {
        chart.addSeries({
                name: 'Ocupación Target',
                data: data,
                color: '#33CCFF',
                type: 'spline',
                yAxis: 1,
                tooltip: {
                    valueSuffix: ' %'
                }
        });
    },
    addTargetAdr: function(chart, data) {
        chart.addSeries({
                name: 'ADR Target',
                data: data,
                color: '#33FF66',
                type: 'spline',
                tooltip: {
                    valuePrefix: '$ '
                }
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
            xAxis: {
                labels: {
                    rotation: 45,
                    step: 2
                }
            },
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
    $( "#pickup_from_date" ).datepicker();
    $( "#pickup_to_date" ).datepicker();
    $("#filters").hide();
    $("#targetKpi").hide();
    $("#showFilter").click(function(e) {
        e.preventDefault();
        $("#filters").slideToggle();
        var text = $('#showFilter').text();
        $("#showFilter").text(text == "Mostrar" ? "Ocultar" : "Mostrar");
    });
    $("#showTargetKpi").click(function(e) {
        e.preventDefault();
        $("#targetKpi").slideToggle();
        var text = $('#showTargetKpi').text();
        $("#showTargetKpi").text(text == "Mostrar" ? "Ocultar" : "Mostrar");
    });
    $("#filter-report").click(function(e) {
        ReportsChart.refresh();
        PickupTable.refresh(false);
        e.preventDefault();
    });
    $("#apply-target-kpi").click(function(e) {
        ReportsChart.applyTargetKpi();
        e.preventDefault();
    });
    $("#filter-pickup").click(function(e) {
        PickupTable.refresh(true);
        e.preventDefault();
    });
    $("#refresh-chart").click(function(e) {
        ReportsChart.refresh();
        e.preventDefault();
    });
    $("#export-pickup").click(function(e){
        var baseUrl = $("#export-pickup").data('url');
        var fromDate = $('#from_date').val();
        var toDate = $('#to_date').val();
        var pickupFromDate = $('#pickup_from_date').val();
        var pickupToDate = $('#pickup_to_date').val();
        var rateCode = $('#rate-code-filter').val();
        var originOfBooking = $('#origin-of-booking-filter').val();
        var attributes = '?from_date=' + fromDate + '&to_date=' + toDate + '&pickup_from_date=' + pickupFromDate + '&pickup_to_date=' + pickupToDate;
        if (rateCode != null) {
            attributes += '&rate_code=' + rateCode;
        }
        if (originOfBooking != null) {
            attributes += '&origin_of_booking=' + originOfBooking;
        }
        $("#export-pickup").attr('href', baseUrl + attributes);
    });
    ReportsChart.init();
});