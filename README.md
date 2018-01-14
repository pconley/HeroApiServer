# Hero API Server

This rails app is designed to be used with the "tour of heros" angular 2 client.  The last step uses a fake API, but this will work.

# Instructions

clone this repo

build the image

run the image in an interactive container

rake db:migrate
rake db:add_heroes
rails s

now access the API as... http://localhost:3000/heros/6

