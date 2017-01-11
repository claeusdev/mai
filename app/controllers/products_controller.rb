class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /product
  # GET /product.json
  def index
    @product = Product.all
    @categories = Category.all
    @users = User.all
  end

  # GET /product/1
  # GET /product/1.json
  def show
    @categories = Category.all
    @user = User.all 
    @store = @product.store_id
  end

  def search
    @categories = Category.all
    if params[:category].blank? && params[:search].blank?
      @product = Product.all.order(created_at: :desc).page(params[:page]).per(20)
    else
      @product = Product.search(params)
    end
  end

  # GET /product/new
  def new
    @product = Product.new
    @category = Category.new
    @categories = Category.all
  end

  # GET /product/1/edit
  def edit
  end

  # POST /product
  # POST /product.json
  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    @product.store_id = current_user.store.id
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product/1
  # PATCH/PUT /product/1.json
  def update
    respond_to do |format|
      if @listing.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product/1
  # DELETE /product/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    
    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :location, :image, :category_id, :store_id)
    end
end
