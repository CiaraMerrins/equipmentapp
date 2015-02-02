class Item < ActiveRecord::Base
	belongs_to :equipmenttype
	
	validates :manufacturer, presence: true
end
