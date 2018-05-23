MyFramework
=====

MyFramework is a lightweight MVC with a built-in ORM that allows you to make
updates to a Postgres database without writing much SQL code. Sounds a
little like Rails? Well, let's say MyFramework was *inspired* by Rails ;).

`MyFramework::ControllerBase`
---------------------

`MyFramework::ControllerBase` connects your models to your routes, allowing
access to the DB through html.erb views. It's how MyFramework takes over the Web.

Router
------

Routes live in config/routes.rb. New routes are written using Regex.
Open a server connection with the `puffs server` command.

MyFramework Console
-------------

Access your DB with `MyFramework::SQLObject` methods by simply entering
`require 'puffs'` in Pry (or IRB).
