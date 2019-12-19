#! /bin/bash
git_root=$(git rev-parse --show-toplevel)

docker-compose -f $git_root/docker-compose.yml stop -t 5 yourappname_web
docker-compose -f $git_root/docker-compose.yml stop -t 5 yourappname_worker
docker-compose -f $git_root/docker-compose.yml run yourappname_web bash -l -c 'bundle install && bundle exec rake db:reset db:migrate'
docker-compose -f $git_root/docker-compose.yml start yourappname_web
docker-compose -f $git_root/docker-compose.yml start yourappname_worker
