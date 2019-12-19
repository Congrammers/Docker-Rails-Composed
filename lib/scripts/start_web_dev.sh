# sleep 999999   # if you need to debug the container before starting server uncomment this line

# don't move this into Dockerfile
bundle check || bundle install
yarn check || yarn install

# core script
bundle exec rake db:migrate
bundle exec rails s
