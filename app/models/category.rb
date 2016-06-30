class Category < ActiveRecord::Base
  has_attached_file :image, styles: { large: "1000x1000#", :medium => "300x300#", :thumb => "100x100#" }, default_url: "default.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :listings
  has_many :subcategories
end
