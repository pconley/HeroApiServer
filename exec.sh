docker stop $(docker ps -a -q)
docker rm   $(docker ps -a -q)
docker build -t hero-api-server .
//-- run the server in interactive mode
docker run --rm -it -v "$PWD:/usr/src/app" -p 3000:3000 --name app hero-api-server bash
//-- may need to initialize the db
rake db:migrate
rake db:add_heroes
//-- then start the server
rails server