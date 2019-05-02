class ProductListingsController < ApplicationController
  before_action :set_product_listing, only: [:show, :edit, :update, :destroy]

  # GET /product_listings
  # GET /product_listings.json
  def index
    # get current seller
    @current_seller = Seller.where(user_id: current_user[:id]).first
    @product_listings = ProductListing.where(seller_id: params[:seller_id])
    
  end

  # GET /product_listings/1
  # GET /product_listings/1.json
  def show
    @current_seller = Seller.where(user_id: current_user[:id]).first
  end

  # GET /product_listings/new
  def new
    @product_listing = ProductListing.new
    @current_seller = Seller.where(user_id: current_user[:id]).first
  end

  # GET /product_listings/1/edit
  def edit
    @current_seller = Seller.where(user_id: current_user[:id]).first
  end

  # POST /product_listings
  # POST /product_listings.json
  def create
    @product_listing = ProductListing.new(product_listing_params)
    @current_seller = Seller.where(user_id: current_user[:id]).first
    respond_to do |format|
      if @product_listing.save
        format.html { redirect_to product_listings_path(:seller_id => @current_seller.id), notice: 'Product listing was successfully created.' }
        format.json { render :show, status: :created, location: @product_listing }
      else
        @current_seller = Seller.where(user_id: current_user[:id]).first
        format.html { render :new }
        format.json { render json: @product_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_listings/1
  # PATCH/PUT /product_listings/1.json
  def update
    respond_to do |format|
      if @product_listing.update(product_listing_params)
        format.html { redirect_to @product_listing, notice: 'Product listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_listing }
      else
        @current_seller = Seller.where(user_id: current_user[:id]).first
        format.html { render :edit }
        format.json { render json: @product_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_listings/1
  # DELETE /product_listings/1.json
  def destroy
    @product_listing.destroy
    respond_to do |format|
      format.html { redirect_to product_listings_url, notice: 'Product listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_listing
      @product_listing = ProductListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_listing_params
      params.require(:product_listing).permit(:product_name, :description, :was_price, :price, :expiry_date, :seller_id)
    end
end
