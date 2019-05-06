class ProductPurchasedListingsController < ApplicationController
  require 'rqrcode_png'
  before_action :set_product_purchased_listing, only: [:show, :edit, :update, :destroy]

  # GET /product_purchased_listings
  # GET /product_purchased_listings.json
  def index
    # if not signed in
    if current_user == nil
      redirect_to user_session_path
    else
      @product_purchased_listings = ProductPurchasedListing.where(user_id: current_user[:id])
      # cart quantity check
      @quantity = Cart.where(user_id: current_user.id).count
      # byebug
    end
  end

  # GET /product_purchased_listings/1
  # GET /product_purchased_listings/1.json
  def show
    # if not signed in
    if current_user == nil
      redirect_to user_session_path
    else
      @product_purchased_listings = ProductPurchasedListing.find(params[:id])
      # cart quantity check
      @quantity = Cart.where(user_id: current_user.id).count
    end
  end

  # GET /product_purchased_listings/new
  def new
    @product_purchased_listing = ProductPurchasedListing.new
  end

  # GET /product_purchased_listings/1/edit
  def edit
  end

  # POST /product_purchased_listings
  # POST /product_purchased_listings.json
  def create
    @product_purchased_listing = ProductPurchasedListing.new(product_purchased_listing_params)

    respond_to do |format|
      if @product_purchased_listing.save
        format.html { redirect_to @product_purchased_listing, notice: 'Product purchased listing was successfully created.' }
        format.json { render :show, status: :created, location: @product_purchased_listing }
      else
        format.html { render :new }
        format.json { render json: @product_purchased_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_purchased_listings/1
  # PATCH/PUT /product_purchased_listings/1.json
  def update
    respond_to do |format|
      if @product_purchased_listing.update(product_purchased_listing_params)
        format.html { redirect_to @product_purchased_listing, notice: 'Product purchased listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_purchased_listing }
      else
        format.html { render :edit }
        format.json { render json: @product_purchased_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_purchased_listings/1
  # DELETE /product_purchased_listings/1.json
  def destroy
    @product_purchased_listing.destroy
    respond_to do |format|
      format.html { redirect_to product_purchased_listings_url, notice: 'Product purchased listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_purchased_listing
      @product_purchased_listing = ProductPurchasedListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_purchased_listing_params
      params.require(:product_purchased_listing).permit(:product_name, :description, :was_price, :price, :reference_number, :expiry_date, :user_id)
    end
end
