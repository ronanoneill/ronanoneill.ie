
$(document).ready(function() {
  $datepicker = $("#datepicker").flatpickr({
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    inline: true,
    defaultDate: "today",
    onChange: function(selectedDates, dateStr, instance) {
        alert('test');
    }
  });
});
