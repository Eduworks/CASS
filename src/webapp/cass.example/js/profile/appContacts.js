$("#contactSelector").on("click", ".contact", null, function (e) {
    $(".contact").attr("aria-selected",false);
    $(this).attr("aria-selected",true);
}, error);
