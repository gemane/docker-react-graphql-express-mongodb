## docker-react-graphql-express-mongodb

The docker container clone code from the books ["The Road to GraphQL"](https://roadtographql.com/) and ["The Road to React"](https://roadtoreact.com/) to start a multi-container application which is using the technologies: React, GraphQL, Apollo, Express, NodeJS and MongoDB.

The code is cloned from the following repositories into two separated containers

* [GraphQL Server Tutorial with Apollo Server and Express](https://github.com/the-road-to-graphql/fullstack-apollo-express-mongodb-boilerplate)

* [React with Apollo and GraphQL Tutorial](https://github.com/the-road-to-graphql/react-graphql-github-apollo)

Additionally a container with a MongoDB database will be initiated.

## Requirements 

You should have docker and docker-compose installed on your machine.

## Installation 

* Clone the project from the repo,
* build your project using

 ```
 $ docker-compose build
 ```
* and/or run the following command directly inside the directory

 ```
 $ docker-compose up -d
 ```
 Your project will run in the browser as

* Web App with React at 
  + http://localhost:3000/

 * API as NodeJS project with GraphQL at 
  + http://localhost:8000/graphql
 
Connect to database inside mongodb container

 ```
$ mongo "mongodb://root:root_password@127.0.0.1:27017/mydatabase?authSource=admin"
 ```
 
 ## Deployment

Included is a deployment script `deployment-react-graphql-express-mongodb` so that the application can be started easily. 

Be careful as this script 

* stops all relevant container
* deletes all exited container
* deletes unused images
* deletes orphaned volumes
* and deletes orphaned network nodes.

Finally it builds and starts up all docker images.
