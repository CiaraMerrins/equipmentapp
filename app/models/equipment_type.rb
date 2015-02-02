class EquipmentType < ActiveRecord::Base
	has_many :equipment, :dependent => :destroy
end
