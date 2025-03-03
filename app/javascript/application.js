import "@hotwired/turbo-rails"
import jQuery from "jquery"
import "bootstrap"
import "bootstrap-datepicker"

// Make jQuery available globally before anything else
window.$ = window.jQuery = jQuery

document.addEventListener("turbo:load", () => {
  $('.datepicker').datepicker({
    format: 'yyyy-mm-dd',
    autoclose: true,
    startDate: '2025-02-12',
    endDate: '2025-12-31',
    daysOfWeekDisabled: [0, 6],
    todayHighlight: true
  })
})