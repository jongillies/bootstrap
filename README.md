# Bootstrap

Greetings!  This project is my attempt to "wire up" a complete Rails 3.2 application including [Twitter Boostrap](http://getbootstrap.com/2.3.2/).  I have also included an API using [Rocket Pants](https://github.com/filtersquad/rocket_pants).

Features:

* Rails 3.2 | Awesome MVC framework
* Twitter Bootstrap | Awesome CSS/Javascript themes
* Devise | Awesome Authentication
* CanCan | Awesome Authorization
* Rolify | Awesome User Roles
* Kaminari | Awesome Pagination
* Ransack | Awesome search and sortable columns
* Rocket Pants | Awesome API builder

## Development Requirements

* RVM
* MySQL on localhost, user root with no password (or update config/database.yml)

## Get Going!

Once you have forked the code, "cd" into the directory. (I use RVM so there is an .rvmrc) in the project.

    bundle
    RAILS_ENV=test rake db:reset
    rspec
    cucumber

If all of that works, you are golden.

Fire up the app!

    rails s

Navigate to https://localhost:3000 and you will see your new application!

The API is exposed at:

    http://localhost:3000/api/1/posts

The project includes a "Posts" model which is a mini BLOG feature, cause all apps need their own blog ;-)

To authenticate against the API pass the auth_token on the URL.  Example:

    http://localhost:3000/posts/1?auth_token=z0000000000000000000

# How this template was made

To use the twitter-bootstrap-rails gem:

```bash
rails g scaffold Post title:string description:text
rake db:migrate
rails g bootstrap:themed Posts
```

To change the bootswatch theme, modify:

    app/assets/stylesheets/application.css.scss

Line 4:

    @import "bootswatch/cerulean/variables";


## Notes

This application was generated with the rails_apps_composer gem:

https://github.com/RailsApps/rails_apps_composer provided by the RailsApps Project: http://railsapps.github.com/

```bash
rails g scaffold Post title:string description:text user_id:integer
rake db:migrate
rails g bootstrap:themed Posts
```

```
Recipes:
["controllers", "core", "email", "extras", "frontend", "gems", "git", "init", "models", "prelaunch", "railsapps", "readme", "routes", "saas", "setup", "testing", "views"]

Preferences:
{:git=>true, :railsapps=>"rails3-bootstrap-devise-cancan", :database=>"sqlite", :unit_test=>"rspec", :integration=>"cucumber", :fixtures=>"factory_girl", :frontend=>"bootstrap", :bootstrap=>"sass", :email=>"gmail", :authentication=>"devise", :devise_modules=>"default", :authorization=>"cancan", :starter_app=>"admin_app", :form_builder=>"simple_form", :quiet_assets=>true, :local_env_file=>true, :better_errors=>true, :dev_webserver=>"webrick", :templates=>"erb", :continuous_testing=>"none", :rvmrc=>false, :ban_spiders=>true}
```

