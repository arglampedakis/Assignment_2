jQuery_ui(document).ready(function () {
    var allNames;
    var url = "/getTrainersNames";

    jQuery_ui.ajax({
        url: url
    }).then(function (data) {
        allNames = data;
        jQuery_ui('#searchInput').autocomplete({source: allNames});
    });
});
