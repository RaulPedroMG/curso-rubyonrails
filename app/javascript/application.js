// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "popper";
import "bootstrap/util";
import 'jquery';
import "bootstrap/util";
import 'bootstrap'
import 'bootstrap/dist/js/bootstrap';
import 'bootstrap/dist/css/bootstrap'
import "channels";
import Rails from "@rails/ujs";
import * as ActiveStorage from "@rails/activestorage";
import '../assets/stylesheets/application';

Rails.start();
ActiveStorage.start();