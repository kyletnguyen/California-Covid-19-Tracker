$(function () {
    // Bind bootstrap datepicker
    $('#datepicker').datepicker({
        startDate: "03/08/2020", // Date which Covid-19 in California begins to trend upwards
        todayBtn: "linked", 
        clearBtn: true,
        todayHighlight: true,
        endDate: new Date(),
        autoclose: true
    });

    // 
    $('.dateInput').change(function () {
        var sDp = $('#startDate').val();
        var eDp = $('#endDate').val();

        if (!!sDp && !!eDp) {
            $('#btnCovid').removeClass("disabled");
            $('#btnCovid').removeClass("btn-disabled");
        }
    });


});