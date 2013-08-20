class Category < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 30 }
end
