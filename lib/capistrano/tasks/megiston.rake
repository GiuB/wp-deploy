#
# @author: daniele@megiston.com
# A task wrapper to simplify our custom deploy management
#
# Our custom tasks:
# deploy:cleanup ->
#   Allow config to be pushed in our repo (to simplify future setup for new collaborators)
#   IMPORTANT! Comment .gitignore lines like /config/*

# Load our custom env variables
require 'dotenv'
Dotenv.load('config/.env.local')

# Remove config directory from after deploy
namespace :deploy do
  desc 'Megiston custom wp deploy:cleanup'

  task :cleanup do
    on roles(:app) do
      execute :rm, "-rf #{release_path}/config"
    end
  end

  after :finishing, 'deploy:cleanup'
end