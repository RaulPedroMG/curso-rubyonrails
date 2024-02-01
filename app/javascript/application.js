// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "popper";
import "bootstrap/util";
import 'jquery';
import 'bootstrap/dist/js/bootstrap';
import "channels";
import Rails from "@rails/ujs";
import * as ActiveStorage from "@rails/activestorage";
import '../assets/stylesheets/application.scss';

Rails.start();
ActiveStorage.start();