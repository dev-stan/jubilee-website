# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "moment", to: "https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.30.1/moment.min.js"
pin "tempusdominus-bootstrap-4" # @5.39.2
pin "jquery", to: "https://code.jquery.com/jquery-3.6.4.min.js"
pin "jquery-ujs", to: "https://cdnjs.cloudflare.com/ajax/libs/jquery-ujs/1.2.3/rails.js"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true