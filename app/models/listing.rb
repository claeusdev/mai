class Listing < ActiveRecord::Base
  has_attached_file :image, styles: { large: "500x500#", :medium => "200x200#", :thumb => "100x100#" }, default_url: "default.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :name, :description, :price, :location, :category_id, :image, presence: true

  belongs_to :category
  belongs_to :subcategory
  belongs_to :user
  has_many :orders

  def self.search(params)
    if params[:category].present?
      listings = Listing.where(category_id: params[:category].to_i)
      listings = listings.where("name like ? or description like ? user like", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
      # items = Item.where(params[:location], 20) is params[:location].present?
    else
      listings = Listing.where("name like ? or description like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    end
    listings
  end

end
