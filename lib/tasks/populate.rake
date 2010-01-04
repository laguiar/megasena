require 'mechanize'

namespace :db do
  desc "Populate database"
  task :populate => :environment do

    puts "Droping database..."
    Rake::Task["db:drop"].invoke
    
    puts "Creating database..."
    Rake::Task["db:migrate"].invoke

    puts "Populating database..."

    agent = WWW::Mechanize.new
    page = agent.get('http://www.luizaguiar.com/d_megasc.html')
    puts page.body
    
  end

end
