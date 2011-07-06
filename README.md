![Hammr](https://github.com/leereilly/hammr/raw/master/public/images/hammr-logo-small.png "Hammr")

About
-----
Hammr is a simple Rails-based user authentication app that's built on top of [Devise](https://github.com/plataformatec/devise). It's an exercise is familiarizing myself with Devise; nothing more.

Demo
----
There's a demo setup @ http://hammr.heroku.com. Heroku doesn't offer a free outgoing mail service, so until I fix that you can't past the signup stage. Clone it and serve it locally with no problems.

Kudos / Confessions
-------------------
* I ripped off Yammer's logo - **COME AT ME YAMMER ATTORNEYS**!
* I ripped off some of Heroku's CSS for forms (I'll remove that soon)
* [GitHub buttons CSS](https://github.com/cavneb/css3-github-buttons)
* [Devise](https://github.com/plataformatec/devise)

Installation
------------

Download the branch master via [https://github.com/leereilly/hammr](https://github.com/leereilly/hammr)

    git clone git@github.com:leereilly/hammr.git
    
Install the required gems

    bundle install
   
Create a file config/database.yml e.g.


    development:
      adapter: sqlite3
      database: db/development.sqlite3
      pool: 5
      timeout: 5000

    test:
      adapter: sqlite3
      database: db/test.sqlite3
      pool: 5
      timeout: 5000

    production:
      adapter: sqlite3
      database: db/production.sqlite3
      pool: 5
      timeout: 5000
      
Run the test suite to make sure everything's working

    rake test      
      
Start the server (defaults to `development` environment on port `3000`)

    rails server   
    
Contribute
----------
* Fork
* Pull

Questions / Problems?
---------------------
Please create an issue @ [https://github.com/leereilly/hammr/issues](https://github.com/leereilly/hammr/issues).
   
Bugs / Known Issues
-------------------   

* **DO NOT USE IN PRODUCTION!**
* Functional/unit tests aren't quite there yet; setting up and configuring Devise with Rails 3 was a learning experience.
* Factory Girl and Faker test data planned.

![Bugs](http://i.imgur.com/K8vsw.gif "Bugs")