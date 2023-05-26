# use the official postgreSQL image as the base image
FROM postgres:latest

# Set the working directory to /docker-entrypoint-initdb.d
WORKDIR /docker-entrypoint-initdb.d

# set the enviorment variables to create a new database, user and password 
ENV POSTGRES_DB character-vote
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD password123

# copy the schema and seed files from the local file system to docker image

# for docker file and need to move the schema into the schema folder
# COPY ./database/schema.sql ./

# Run independently need to have schema file in database folder
COPY /schema.sql ./


# Expose Port 5432 for PostgreSQL
EXPOSE 5432

CMD ["postgres"]



#commands to run the DockerFile:

#create a network 
# command: docker network create portfolio-network

# 1: Build docker image
# command: docker build -t character-database .

# 2: Run Docker container and connect to the portfolio-network
# command: docker run --name character-database-container --network character-network -e POSTGRES_PASSWORD=password123 character-database