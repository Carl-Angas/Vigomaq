class Product < ActiveRecord::Base
	has_attached_file :image, styles: { medium: '200x200>', thumb: '48x48>' }
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	has_one :modeltable
	has_one :producttype
	has_one :trademark
	has_one :category
	
	
end
