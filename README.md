Installation
------------

* Download the branch master via [https://github.com/leereilly/hammr](https://github.com/leereilly/hammr)


    git clone git@github.com:leereilly/hammr.git
    
* Install the required gems


   bundle install
   
* Create a file config/database.yml e.g.


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
      
* Start the server (default to development environment on port 3000)

   rails server      
