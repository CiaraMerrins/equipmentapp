class Item < ActiveRecord::Base
has_many :posts, :dependent => :destroy
	belongs_to :equipmenttype
	
	validates :manufacturer, presence: true
end
