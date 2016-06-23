class Store < ActiveRecord::Base
  belongs_to :user
  has_many :listings

  def self.search(params)

    stores = Listing.where("name like ? or description like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    stores
  end
end
