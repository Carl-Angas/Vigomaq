class Product < ActiveRecord::Base
	has_attached_file :image, styles: { medium: '200x200>', thumb: '48x48>' }
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	has_and_belongs_to_many :users
	
end
