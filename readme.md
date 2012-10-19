# Sinatra Bootstrap

A boilerplate Sinatra project to help you get up and running fast. 

## Contents Enclosed

Sinatra Bootstrap includes a few Heroku niceties like a Procfile, a config.ru file, and a handy `asset:precompile` Rake task for compiling your Sass/SCSS for production. (Heroku will perform that task as part of the standard deployment process. All you have to to do is `git push heroku`)

Also included is [Jammit](http://documentcloud.github.com/jammit/#configuration), for concatenating and compressing your JavaScript. In addition to compiling your Sass, the `asset:precompile` Rake task also uses Jammit to package up your JavaScript, and the layout file will reference the compress JS file when the app is run in production.

## Installation
`git clone --bare https://github.com/blackfalcon/sinatra_bootstrap.git New_Project`