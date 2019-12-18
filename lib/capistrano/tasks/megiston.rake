# @author: daniele@megiston.com

# Load our custom env variables
require 'dotenv'
Dotenv.load('config/.env.local')

# Remove config directory from after deploy
# Update: we prefer to ignor useless folders using .gitattributes
# namespace :deploy do
#   desc 'Megiston custom wp deploy:cleanup'

#   task :cleanup do
#     on roles(:app) do
#       execute :rm, "-rf #{release_path}/config"
#     end
#   end

#   after :finishing, 'deploy:cleanup'
# end