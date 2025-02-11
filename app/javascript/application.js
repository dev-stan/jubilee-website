import "jquery"
import "tempusdominus-bootstrap-4";



import { Turbo } from "@hotwired/turbo-rails"
Turbo.start()

document.addEventListener("turbo:load", function() {
    $('#datetimepicker1').datetimepicker({
      format: 'YYYY-MM-DD HH:mm',
      stepping: 15,
      sideBySide: true,
      icons: {
        time: 'fas fa-clock',
        date: 'fas fa-calendar',
        up: 'fas fa-chevron-up',
        down: 'fas fa-chevron-down',
        previous: 'fas fa-chevron-left',
        next: 'fas fa-chevron-right',
        today: 'fas fa-sun',
        clear: 'fas fa-trash',
        close: 'fas fa-times'
      }
    });
  });
  