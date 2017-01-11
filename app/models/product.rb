class Product < ActiveRecord::Base
  has_attached_file :image, styles: { large: "500x500#", :medium => "200x200#", :thumb => "100x100#" }, default_url: "default.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :name, :description, :price, :location, :category_id, :image, presence: true

  belongs_to :category
  belongs_to :store


  def self.search(params)
    if params[:category].present?
      products = Product.where(category_id: params[:category].to_i)
      products = products.where("name like ? or description like ? user like", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
      # items = Item.where(params[:location], 20) is params[:location].present?
    else
      products = Product.where("name like ? or description like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    end
    products
  end

end
