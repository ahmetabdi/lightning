import "phoenix_html"
import "./vue_loader"
import addSiteComponent from "./components/add_site_component";

const AddSite = Vue.component('add-site-component', addSiteComponent);
new AddSite({el: "#add_site_component"})
