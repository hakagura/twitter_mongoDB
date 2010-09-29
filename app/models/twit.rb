class Twit
  include Mongoid::Document
  field :profile_image_url
  field :text
  field :twitted_at, :type => DateTime
  scope :latest, :order_by => :twitted_at.desc, :limit => 40
end
