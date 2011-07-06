![Hammr](https://github.com/leereilly/hammr/raw/master/public/images/hammr-logo-small.png "Hammr")

Demo
----
There's a demo setup @ http://hammr.heroku.com. Right now, the mailer's broken 'cos Heroku don't offer a free outgoing mail service.

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
* Functional test coverage not as good as unit test coverage... yet.

![Bugs](http://i.imgur.com/K8vsw.gif "Bugs")