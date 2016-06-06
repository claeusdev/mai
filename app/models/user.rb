class User < ActiveRecord::Base
  has_attached_file :image, styles: { large: "500x500#", :medium => "200x200#", :thumb => "100x100#" }, default_url: "default.jpg"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :listings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
