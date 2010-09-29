require 'twitter'

namespace :mongo do
  desc 'Buscar e gravar no MongoDB'
  task :write => :environment do                                         
     Twitter::Search.new(Twitter::Trends.current.sample.query).each do |r| 
        Twit.create(:profile_image_url => r.profile_image_url,:text => r.text,:twitted_at => r.created_at)
     end
  end
end
