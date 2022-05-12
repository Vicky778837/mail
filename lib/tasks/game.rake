namespace :information do
  desc " update Applicant information"
task :fetch_games => :environment do


doc = xml_doc  = Nokogiri::XML

  games = doc.xpath('//game')

    games.each do |game|
      @data = Game.new(
        :name            => game.at('name'),
        :publisher       => game.at('publisher'),)



    @data.save

    if @data.save
        puts "Success"
    else
        puts "Didn't work"
    end
    end
   end
end