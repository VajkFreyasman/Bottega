class Portfolio < ApplicationRecord
  include Placeholder

  has_many :technologies


  validates_presence_of :title, :body, :main_image, :thumb_image

 def self.angular
  where(subtitle: 'Angular')
end

#scope:ruby_on_rails, -> {where (subtitle: 'Ruby on Rails')}

after_initialize :set_defaults

def set_defaults
self.main_image ||= Placeholder.image_generator(height: '350', width: '200')
self.thumb_image ||= Placeholder.image_generator(height: '140', width: '100')

end


end
