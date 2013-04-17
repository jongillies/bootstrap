My Application
========================

To use the twitter-boostrap-rails gem:

 rails g scaffold Post title:string description:text
 rake db:migrate
 rails g bootstrap:themed Posts


To change the bootswatch theme, modify:

  app/assets/stylesheets/application.css.scss

  Line 4:

  @import "bootswatch/cerulean/variables";


Notes
=====
This application was generated with the rails_apps_composer gem:
https://github.com/RailsApps/rails_apps_composer
provided by the RailsApps Project:
http://railsapps.github.com/


rails g scaffold Post title:string description:text user_id:integer
rake db:migrate
rails g bootstrap:themed Posts


________________________

Recipes:
["controllers", "core", "email", "extras", "frontend", "gems", "git", "init", "models", "prelaunch", "railsapps", "readme", "routes", "saas", "setup", "testing", "views"]

Preferences:
{:git=>true, :railsapps=>"rails3-bootstrap-devise-cancan", :database=>"sqlite", :unit_test=>"rspec", :integration=>"cucumber", :fixtures=>"factory_girl", :frontend=>"bootstrap", :bootstrap=>"sass", :email=>"gmail", :authentication=>"devise", :devise_modules=>"default", :authorization=>"cancan", :starter_app=>"admin_app", :form_builder=>"simple_form", :quiet_assets=>true, :local_env_file=>true, :better_errors=>true, :dev_webserver=>"webrick", :templates=>"erb", :continuous_testing=>"none", :rvmrc=>false, :ban_spiders=>true}

________________________

License
