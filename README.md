# userform_phoenix
Basic Phoenix web framework to design a user form and to get the list of the users

## Installations and versions
===
	Install Erlang
	Install Elixir
	Install Phoenix
	Install Postgres
	Install npm
	Install nodejs
  npm install bower -g bower install

===
After installing postgres and change the postgres user password (if any authentication error occurs )

    sudo -i -u postgres (for ubuntu users)
    sudo -i -u _postgres (for mac os users)
    psql 
    ALTER USER postgres PASSWORD 'postgres';  
    
=====
Check node and npm version using 'node -v' and 'npm -v' make sure node >= v4.x and npm >=2.X.

To upgrade node and npm to required version follow below steps

    upgrade npm
    
      sudo npm -g install npm@latest
                or
      sudo npm install npm -g  (for npm > 3.0)
    
    upgrade nodejs to v4.2.6
    
      sudo npm cache clean -f
      sudo npm install -g n
      sudo n v4.2.6
=====
##To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

## Once the Server starts...

  *	Now you can visit [`localhost:4000/postuser/new`](http://localhost:4000/postuser/new) from your browser.
  * Enter the form details and check the list of the users


## Learn more

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).
  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix



