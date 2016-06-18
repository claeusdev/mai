class User < ActiveRecord::Base
  has_attached_file :image, styles: { large: "500x500#", :medium => "200x200#", :thumb => "100x100#" }, default_url: "default.jpg"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :stores
  has_many :listings, dependent: :destroy

  has_many :sales, class_name: 'Order', foreign_key: 'seller_id'
  has_many :purchases, class_name: 'Order', foreign_key: 'buyer_id'

end
