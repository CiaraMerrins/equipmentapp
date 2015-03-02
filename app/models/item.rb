class Item < ActiveRecord::Base
mount_uploader :poster, ImageUploader
has_many :posts, :dependent => :destroy
	belongs_to :equipmenttype
	
	validates :manufacturer, presence: true
	
	def self.search(search)
	search_condition = search +"%"
	find(:all, :conditions => ['equipname Like ?' ,search_condition])
	end
end
