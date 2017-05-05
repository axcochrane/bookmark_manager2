require 'data_mapper'
require './app/app.rb'

task default: %w[db:data_mapper_auto_upgrade]

namespace :db do
  desc "Auto upgrade"
  task :data_mapper_auto_upgrade do
    DataMapper.auto_upgrade!
    puts "Auto-upgrade complete (no data removed)"
  end

  desc "Destructive upgrade"
  task :data_mapper_auto_migrate do
    DataMapper.auto_migrate!
    puts "Auto-migrate complete (data wiped)"
  end
end
