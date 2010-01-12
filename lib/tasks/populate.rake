require 'nokogiri'
require 'open-uri'

namespace :db do
  desc "Populate database"
  task :populate => :environment do

    puts "Droping database..."
    Rake::Task["db:drop"].invoke
    
    puts "Creating database..."
    Rake::Task["db:migrate"].invoke

    puts "Populating database..."
    doc = Nokogiri::HTML(open("http://www.luizaguiar.com/d_megasc.htm"))
    doc.xpath('//table//tr').each do |row|
    	itens = row.xpath('.//td/text()')[0...8].collect {|cell| cell.to_s}.join(",")
    	map = itens.to_s.split(/,/)
			Concurso.create!(:numero => map[0].to_i, :data => map[1].to_s, :d1 => map[2].to_i, :d2 => map[3].to_i, :d3 => map[4].to_i, :d4 => map[5].to_i, :d5 => map[6].to_i, :d6 => map[7].to_i)
    end
    
  end

end
