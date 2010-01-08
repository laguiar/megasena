require 'nokogiri'
require 'open-uri'

namespace :db do
  desc "Populate database"
  task :populate => :environment do

    #puts "Droping database..."
    #Rake::Task["db:drop"].invoke
    
    #puts "Creating database..."
    #Rake::Task["db:migrate"].invoke

    puts "Populating database..."

    #agent = WWW::Mechanize.new
    #page = agent.get('http://www.luizaguiar.com/d_megasc.htm')
    #puts page.body
    #url = "http://www.luizaguiar.com/d_megasc.htm"
    #data = Scrubyt::Extractor.define do
    #  fetch url
    #  record("/html/body/table", {:generalize => true}) do 
    #    cabecalho('/tr[1]') 
    #  end
    #end
    #puts data.to_s
    
    doc = Nokogiri::HTML(open("http://www.luizaguiar.com/d_megasc.htm"))
    doc.xpath('//table//tr').each do |row|
    	x = row.xpath('td')[0...8].map do |cell|
    		cell.text.gsub("\n", ' ').gsub('"', '\"').gsub(/(\s){2,}/m, '\1')
    	end
    	puts "#{x.join(",")}\n"
    end

  end

end
