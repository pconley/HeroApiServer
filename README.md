# Hero API Server

This project is a rails app packaged in a docker container.  It is designed to be used with the "tour of heros" angular 2 client that one builds with the tutorial in the documentation.  The last step of that tutorial uses a fake API, but this will work in its place.  You do not need to have rails installed... just docker.  All the rails stuff is done in the container.

# Instructions

Clone this repo as usuaul.

Build the image from the directory with the Docerfile
```
docker build -t hero-api-server .
```

Run the image in an interactive container
```
docker run --rm -it -v "$PWD:/usr/src/app" -p 3000:3000 --name app hero-api-server bash
```

You are now inside the running container.  The first time you need to initialize the database.
```
rake db:migrate
rake db:add_heroes
```

Then start the rails server
```
rails server
```

Now you can test access the API (via a browser)... http://localhost:3000/heros/6

