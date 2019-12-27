This is a wp-deploy fork, for further informations of the original wiki:
https://github.com/GiuB/wp-deploy

## PROJECT PURPOSE

This fork allows you to commit the `config/` folder, so it's faster for collaborators to setup & sync local/remote enviroment.

Using this project `production` variables will be always the same for any contributor, `local` variables can be customize by editin `config/.env.local`.

The `config/` folder will never bu uploaded to the server.

## HOW TO INSTALL A NEW PROJECT

Run followin commands:

```bash
git clone git@github.com:GiuB/wp-deploy.git <NEW PROJECT DOMAIN> ; cd $_
bundle install --path=.
./prepare.sh
./setup.sh
```

Setting following files:
- config/deploy/production.rb
- config/deploy.rb
- config/env.local
- config/database.yml

Run followin commands:
```bash
git remote add origin <NEW PROJECT GIT URL>
git push -u origin master
bundle install
bundle exec cap staging wp:setup:local
```

## HOW TO IMPORT IN AN EXISTING WP-DEPLOY PROJECT

Copy & override following files:
```bash
lib/*
.gitattributes
```

Copy `config/.env.local.example` rename to `config/.env.local` and replace them with your local settings

Edit your .gitignore file and comment all lines starting with `config/*`
Then add to .gitignore `config/.env.local`

In your `config/deploy.rb` edit `wp_localurl` line like this::
