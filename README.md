# Dockerized Ruby on Rails Template

There's multiple assumption with this template:
- using Postgresql.
- using Nginx.
- using Yarn.
- using Docker Compose.
- using Sidekiq.
- using pry-remote

The rest is generated by Rails.

## Feature

* Sync changes on docker to create dev flow.
* Multiple script to handle stuff on docker:
-- pry-remote
-- script to call command.
-- script to reset databases.
-- script to start server.