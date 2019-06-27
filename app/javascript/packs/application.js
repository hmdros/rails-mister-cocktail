/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


import "bootstrap";
import "select2/dist/js/select2.full";
import 'select2/dist/css/select2.css';
import "select2-bootstrap-theme/dist/select2-bootstrap.css";
import "../plugins/flatpickr";

import { initReadUrl } from "../components/init_preview";
import { initSidebar } from "../components/init_sidebar";
import { initDisplayValue } from '../components/init_order_component'
import { initLoad } from "../components/init_load";
import { initSelect2 } from '../components/init_select2';
import { initGetHour } from '../components/init_get_hour';
import { initSweetalert } from '../components/init_sweetalert';


initReadUrl();
initSidebar();
initDisplayValue();
initLoad();
initSelect2();
initGetHour();
initSweetalert();
